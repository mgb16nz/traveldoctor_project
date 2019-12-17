<?php

namespace TravelDoctor\TDTheme;

use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DropdownField;

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

use BetterBrief\GoogleMapField;

use Page;

class ClinicPage extends Page
{
    private static $db = [
        'ClinicLocation' => 'Int',
        'ClinicName' => 'Varchar(255)',
        'ClinicDetails' => 'Varchar(255)',
        'ClinicContact' => 'Varchar',
        'ClinicFax' => 'Varchar',
        'ClinicEmail' => 'Varchar',
        'ClinicHours' => 'Varchar(255)',
        'Latitude' => 'Varchar',
        'Longitude' => 'Varchar',
        'StaffTitle' => 'Text',
        'StaffContent' => 'HTMLText'
    ];

    private static $has_many = [
        'Staff' => Staff::class
    ];

    private static $owns = [
        'Staff'
    ];

    private static $defaults = [
        'ShowInMenus' => false,
    ];

    private static $can_be_root = false;

    private static $show_in_sitetree = false;

    private static $table_name = 'ClinicPage';


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('ClinicLocation', 'Clinic Location'), 'Content');

        /*
       *   Clinic's Information Details
       */

        $location = [
            '0' => 'North Island',
            '1' => 'South Island',
        ];

        $fields->addFieldToTab('Root.ClinicInfo', DropdownField::create('ClinicLocation','Location of Clinic')->setSource($location)
            ->setDescription('Select Location of Clinic - North Island or South Island'));
        $fields->addFieldToTab('Root.ClinicInfo', TextField::create('ClinicName','Name of Clinic'));
        $fields->addFieldToTab('Root.ClinicInfo', TextareaField::create('ClinicDetails','Clinic Address'));
        $fields->addFieldToTab('Root.ClinicInfo', TextField::create('ClinicContact','Contact Number'));
        $fields->addFieldToTab('Root.ClinicInfo', TextField::create('ClinicFax','Fax'));
        $fields->addFieldToTab('Root.ClinicInfo', TextField::create('ClinicEmail','Clinic E-mail'));
        $fields->addFieldToTab('Root.ClinicInfo', TextareaField::create('ClinicHours', 'Clinic Hours '));

        /*
        *   Google Maps Location
        */
        // add the map field
        $fields->addFieldToTab('Root.LocationMap', new GoogleMapField(
            $this,'Location'));


        /*
        *   Clinic Staff
        */
        $conf=GridFieldConfig_RelationEditor::create(); // Create a Gridfield

        $conf->addComponent($sortable = new GridFieldSortableRows('SortOrder')); // Make it Sortable
        $sortable->setAppendToTop(true);

        // Create a new tab using a gridfield & data from /app/src/models/Staff.php
        $fields->addFieldToTab('Root.Staff', TextField::create('StaffTitle', 'Header'));
        $fields->addFieldToTab('Root.Staff', HTMLEditorField::create('StaffContent', 'Content'));
        $fields->addFieldToTab('Root.Staff', GridField::create(
            'Staff',
            'Clinic Staff',
            $this->Staff(), $conf,
            GridFieldConfig_RecordEditor::create()
        ));

        return $fields;

    }


}
