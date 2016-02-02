<?php
/**
* @version      4.3.1 13.08.2013
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');
jimport( 'joomla.application.component.view');

class JshoppingViewFreeattributes extends JViewLegacy{

    function displayList($tpl=null){        
        JToolBarHelper::title( _JSHOP_LIST_ATTRIBUTES, 'generic.png' ); 
        JToolBarHelper::addNew();        
        JToolBarHelper::deleteList();        
        parent::display($tpl);
	}
    
    function displayEdit($tpl=null){        
        JToolBarHelper::title( $temp=($this->attribut->id) ? (_JSHOP_EDIT_ATTRIBUT) : (_JSHOP_NEW_ATTRIBUT), 'generic.png' ); 
        JToolBarHelper::save();
        JToolBarHelper::spacer();
        JToolBarHelper::apply();
        JToolBarHelper::spacer();
        JToolBarHelper::cancel();        
        parent::display($tpl);
    }
}
?>