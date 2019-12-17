<?php

namespace TravelDoctor\TDTheme;

use BetterBrief\GoogleMapField;
use Embed\Providers\Api\GoogleMaps;
use SilverStripe\Forms\HiddenField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\ORM\DataObject;

use SilverStripe\Forms\TextField;

use SilverStripe\Versioned\Versioned;


class Clinics extends DataObject
{
    private static $db = [
        'Title' => 'Text',
        'ClinicName' => 'Varchar(255)',
        'Address1' => 'Varchar',
        'Address2' => 'Varchar',
        'Suburb' => 'Varchar',
        'City' => 'Varchar',
        'PostCode' => 'Varchar',
        'Country' => 'Varchar',
        'Contact' => 'Varchar',
        'Fax' => 'Varchar',
        'Email' => 'Varchar',
        'Latitude' => 'Varchar',
        'Longitude' => 'Varchar',
        'SortOrder' => 'Int',
    ];

    private static $has_one = [
        'ClinicsPage' => ClinicsPage::class,
    ];

    private static $summary_fields = [
        'Title' => 'Clinic Location',
        'ClinicName' => 'Clinic Name',
        'Address1' => 'Address 1',
        'Address2' => 'Address 2',
        'Suburb' => 'Suburb',
        'City' => 'City',
        'PostCode' => 'Post Code',
        'Country' => 'Country',
        'Contact' => 'Contact',
        'Fax' => 'Fax',
        'Email' => 'E-mail',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $table_name = 'Clinics';

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Main', TextField::create('Title','Location of Clinic'));
        $fields->addFieldToTab('Root.Main', TextField::create('ClinicName','Name of Clinic'));
        $fields->addFieldToTab('Root.Main', TextField::create('Address1','Address 1'));
        $fields->addFieldToTab('Root.Main', TextField::create('Address2','Address 2'));
        $fields->addFieldToTab('Root.Main', TextField::create('Suburb','Suburb'));
        $fields->addFieldToTab('Root.Main', TextField::create('City','City/Town'));
        $fields->addFieldToTab('Root.Main', TextField::create('PostCode','Post Code'));
        $fields->addFieldToTab('Root.Main', TextField::create('Country','Country'));
        $fields->addFieldToTab('Root.Main', TextField::create('Contact','Contact Number'));
        $fields->addFieldToTab('Root.Main', TextField::create('Fax','Fax'));
        $fields->addFieldToTab('Root.Main', TextField::create('Email','Clinic E-mail'));

        /*
        *   Google Maps Location
        */
        // add the map field
        $fields->addFieldToTab('Root.Main', new GoogleMapField(
            $this,
            'Location'
        ));

        // remove the lat / lng fields from the CMS
        $fields->removeFieldsFromTab('Root.Main', ['Latitude', 'Longitude']);


        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;
    }


}
