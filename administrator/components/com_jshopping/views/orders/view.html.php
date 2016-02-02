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

class JshoppingViewOrders extends JViewLegacy
{
    function displayList($tpl=null){        
        JToolBarHelper::title( _JSHOP_ORDER_LIST, 'generic.png');
        JToolBarHelper::addNew();
        JToolBarHelper::deleteList();
        parent::display($tpl);
	}
    function displayEdit($tpl=null){
        JToolBarHelper::title($this->order->order_number, 'generic.png');
        JToolBarHelper::save();
        JToolBarHelper::cancel();
        parent::display($tpl);
    }
    function displayShow($tpl=null){
        JToolBarHelper::title($this->order->order_number, 'generic.png');
        JToolBarHelper::back();
		JToolBarHelper::custom('send', 'send', 'send', _JSHOP_SEND_MAIL, false);
        parent::display($tpl);
    }
}
?>