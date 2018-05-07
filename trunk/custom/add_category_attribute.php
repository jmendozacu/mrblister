<?php

    require_once "../app/Mage.php";

    Mage::app()->setCurrentStore(Mage::getModel('core/store')->load(Mage_Core_Model_App::ADMIN_STORE_ID));


    $installer = new Mage_Sales_Model_Mysql4_Setup;

    // change details below:
    $attribute  = array(
        'type' => 'text',
        'label'=> 'Downloadble PDF',
        'input' => 'text',
        'global' => Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_GLOBAL,
        'visible' => true,
        'required' => false,
        'user_defined' => true,
        'default' => "",
        'group' => "General Information"
    );

    $installer->addAttribute('catalog_category', 'downloadble_pdf', $attribute);

    $installer->endSetup();
?>