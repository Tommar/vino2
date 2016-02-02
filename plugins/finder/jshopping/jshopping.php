<?php

/**
 * @package     Joomla.Plugin
 * @subpackage  Finder.Content
 *
 * @copyright   Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE
 */
defined('JPATH_BASE') or die;
jimport('joomla.application.component.helper');
require_once JPATH_ADMINISTRATOR . '/components/com_finder/helpers/indexer/adapter.php';

class PlgFinderJshopping extends FinderIndexerAdapter {

    protected $context = 'Shopping';
    protected $extension = 'com_jshopping';
    protected $layout = 'product';
    protected $type_title = 'Product';
    protected $table = '#__jshopping_products';

    public function __construct(&$subject, $config) {
        parent::__construct($subject, $config);
        $this->loadLanguage();
    }

    public function onFinderCategoryChangeState($extension, $pks, $value) {
        // Make sure we're handling com_content categories
        if ($extension == 'com_jshopping') {
            $this->categoryStateChange($pks, $value);
        }
    }

    public function onFinderAfterDelete($context, $table) {
        if ($context == 'com_jshopping.product') {
            $id = $table->id;
        } elseif ($context == 'com_finder.index') {
            $id = $table->link_id;
        } else {
            return true;
        }
        // Remove the items.
        return $this->remove($id);
    }

    /**
     * Method to determine if the access level of an item changed.
     *
     * @param   string   $context  The context of the content passed to the plugin.
     * @param   JTable   $row      A JTable object
     * @param   boolean  $isNew    If the content has just been created
     *
     * @return  boolean  True on success.
     *
     * @since   2.5
     * @throws  Exception on database error.
     */
    public function onFinderAfterSave($context, $row, $isNew) {
        // We only want to handle articles here
        if ($context == 'com_jshopping.product') {
            // Check if the access levels are different
            if (!$isNew && $this->old_access != $row->access) {
                // Process the change.
                $this->itemAccessChange($row);
            }

            // Reindex the item
            $this->reindex($row->id);
        }

        // Check for access changes in the category
        if ($context == 'com_jshopping.category') {
            // Check if the access levels are different
            if (!$isNew && $this->old_cataccess != $row->access) {
                $this->categoryAccessChange($row);
            }
        }

        return true;
    }

    /**
     * Method to reindex the link information for an item that has been saved.
     * This event is fired before the data is actually saved so we are going
     * to queue the item to be indexed later.
     *
     * @param   string   $context  The context of the content passed to the plugin.
     * @param   JTable   $row     A JTable object
     * @param   boolean  $isNew    If the content is just about to be created
     *
     * @return  boolean  True on success.
     *
     * @since   2.5
     * @throws  Exception on database error.
     */
    public function onFinderBeforeSave($context, $row, $isNew) {
        // We only want to handle articles here
        if ($context == 'com_jshopping.product') {
            // Query the database for the old access level if the item isn't new
            if (!$isNew) {
                $this->checkItemAccess($row);
            }
        }

        // Check for access levels from the category
        if ($context == 'com_jshopping.category') {
            // Query the database for the old access level if the item isn't new
            if (!$isNew) {
                $this->checkCategoryAccess($row);
            }
        }

        return true;
    }

    /**
     * Method to update the link information for items that have been changed
     * from outside the edit screen. This is fired when the item is published,
     * unpublished, archived, or unarchived from the list view.
     *
     * @param   string   $context  The context for the content passed to the plugin.
     * @param   array    $pks      A list of primary key ids of the content that has changed state.
     * @param   integer  $value    The value of the state that the content has been changed to.
     *
     * @return  void
     *
     * @since   2.5
     */
    public function onFinderChangeState($context, $pks, $value) {
        // We only want to handle articles here
        if ($context == 'com_jshopping.product') {
            $this->itemStateChange($pks, $value);
        }
        // Handle when the plugin is disabled
        if ($context == 'com_plugins.plugin' && $value === 0) {
            $this->pluginDisable($pks);
        }
    }

    /**
     * Method to index an item. The item must be a FinderIndexerResult object.
     *
     * @param   FinderIndexerResult  $item    The item to index as an FinderIndexerResult object.
     * @param   string               $format  The item format
     *
     * @return  void
     *
     * @since   2.5
     * @throws  Exception on database error.
     */
    protected function index(FinderIndexerResult $item, $format = 'html') {
        // Check if the extension is enabled
        if (JComponentHelper::isEnabled($this->extension) == false) {
            return;
        }
        // Initialize the item parameters.
        $registry = new JRegistry;
        $registry->loadString($item->params);
        $item->params = JComponentHelper::getParams('com_jshopping', true);
        $item->params->merge($registry);

        // Trigger the onContentPrepare event.
        $item->summary = FinderIndexerHelper::prepareContent($item->summary, $item->params);
        $item->body = FinderIndexerHelper::prepareContent($item->body, $item->params);
        // Build the necessary route and path information.
        $item->url = 'index.php?option=com_jshopping&controller=product&task=view&category_id=' . $item->category_id . '&product_id=' . $item->product_id;
        $item->route = 'index.php?option=com_jshopping&controller=product&task=view&category_id=' . $item->category_id . '&product_id=' . $item->product_id;
        $item->path = FinderIndexerHelper::getContentPath($item->route);

        // Get the menu title if it exists.
        $title = $this->getItemMenuTitle($item->url);

        // Adjust the title if necessary.
        if (!empty($title) && $this->params->get('use_menu_title', true)) {
            $item->title = $title;
        }

        // Add the meta-author.

        // Add the meta-data processing instructions.
        $item->addInstruction(FinderIndexer::META_CONTEXT, 'metakey');
        $item->addInstruction(FinderIndexer::META_CONTEXT, 'metadesc');
        $item->addInstruction(FinderIndexer::META_CONTEXT, 'link');
        
        // Add the type taxonomy data.
        $item->addTaxonomy('Type', 'Product');

        // Add the category taxonomy data.
        $item->addTaxonomy('Category', $item->category, $item->cat_state, $item->cat_access);

        // Get content extras.
        FinderIndexerHelper::getContentExtras($item);

        // Index the item.
        if (version_compare(JVERSION, '3.0.0', 'ge')) {
            $this->indexer->index($item);
        } else {
            FinderIndexer::index($item);
        }
    }

    /**
     * Method to setup the indexer to be run.
     *
     * @return  boolean  True on success.
     *
     * @since   2.5
     */
    protected function setup() {
        // Load dependent classes.
        //require_once JPATH_SITE . '/includes/application.php';

        return true;
    }

    /**
     * Method to get the SQL query used to retrieve the list of content items.
     *
     * @param   mixed  $query  A JDatabaseQuery object or null.
     *
     * @return  JDatabaseQuery  A database object.
     *
     * @since   2.5
     */
    protected function getListQuery($query = null) {
        $db = JFactory::getDbo();
        // Check if we can use the supplied SQL query.

        if (version_compare(JVERSION, '3.0.0', 'ge')) {
            $query = $query instanceof JDatabaseQuery ? $query : $db->getQuery(true);
        } else {
            $query = is_a($query, 'JDatabaseQuery') ? $query : $db->getQuery(true);
        }
		$lang = JFactory::getLanguage();
        $langTag = $lang->getTag();
        $query->select("a.product_id, a.`name_$langTag` AS title, a.`alias_$langTag` AS alias, a.`short_description_$langTag` AS summary, a.`description_$langTag` AS body");
        $query->select('a.product_publish as state');
        $query->select("a.`meta_keyword_$langTag` AS metakey, a.`meta_description_$langTag` AS metadesc, a.access");
        $query->from('#__jshopping_products as a');
        $query->select('ac.*');
        $query->join('INNER', '#__jshopping_products_to_categories AS ac ON ac.product_id = a.product_id');
        $query->select("c.`name_$langTag` AS category, c.category_publish AS cat_state, c.access AS cat_access");
        $query->join('INNER', '#__jshopping_categories AS c ON ac.category_id = c.category_id');

        // Handle the alias CASE WHEN portion of the query
        $case_when_item_alias = ' CASE WHEN ';
        $case_when_item_alias .= $query->charLength("a.`alias_$langTag`", '!=', '0');
        $case_when_item_alias .= ' THEN ';
        $a_id = $query->castAsChar('a.product_id');
        $case_when_item_alias .= $query->concatenate(array($a_id, "a.`alias_$langTag`"), ':');
        $case_when_item_alias .= ' ELSE ';
        $case_when_item_alias .= $a_id . ' END as slug';
        $query->select($case_when_item_alias);
        return $query;
    }

}
