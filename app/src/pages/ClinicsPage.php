<?php

namespace TravelDoctor\TDTheme;

use Page;

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Forms\GridField\GridFieldConfig_RelationEditor;
use UndefinedOffset\SortableGridField\Forms\GridFieldSortableRows;

class ClinicsPage extends Page
{
    private static $db = [
        'Title' => 'Text',
    ];

    private static $has_many = [
        'Clinics' => Clinics::class
    ];

    private static $owns = [
        'Clinics'
    ];

    private static $table_name = 'ClinicsPage';

    private static $ShowInMenu = 'false';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $conf=GridFieldConfig_RelationEditor::create(); // Create a gridfield

        $conf->addComponent($sortable = new GridFieldSortableRows('SortOrder')); // Make it sortable
        $sortable->setAppendToTop(true);

        // Create a new tab using a gridfield & data from /app/src/models/HomeOffer.php
        $fields->addFieldToTab('Root.Clinics', GridField::create(
            'Clinics',
            'Clinics List',
            $this->Clinics(), $conf,
            GridFieldConfig_RecordEditor::create()
        ));


        return $fields;
    }


}
