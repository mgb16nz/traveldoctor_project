<?php

namespace TravelDoctor\TDTheme;

use SilverStripe\Forms\TextField;

use Page;

class ClinicHolder extends Page
{
    private static $db = [
        'HeaderTitle' => 'Varchar',
    ];

    private static $allowed_children = [
        ClinicPage::class
    ];

    private static $table_name = 'ClinicHolder';


    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('HeaderTitle', 'Header Title'), 'Content');

        return $fields;

    }


}
