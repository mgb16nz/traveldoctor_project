<?php

namespace TravelDoctor\TDTheme;

use SilverStripe\ORM\DataObject;

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\DropdownField;

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

use SilverStripe\Versioned\Versioned;


class Staff extends DataObject
{
    private static $db = [
        'Title' => 'Varchar',
        'StaffTitle' => 'Varchar',
        'Credentials' => 'Varchar',
        'StaffBio' => 'HTMLText',
        'SortOrder' => 'Int',
    ];

    private static $has_one = [
        'ClinicPage' => ClinicPage::class,
        'StaffImage' => Image::class,
    ];

//    private static $summary_fields = [
//        'GridThumbnail' => 'Staff Image',
//        'StaffName' => 'Staff',
//        'StaffTitle' => 'Role',
//        'Credentials' => 'Credentials',
////        'StaffBio' => 'Bio',
//    ];

    private static $summary_fields = [
        'GridThumbnail' => 'Staff Image',
        'Title' => 'Staff',
        'StaffTitle' => 'Staff Role',
        'Credentials' => 'Credentials',
//        'StaffBio' => 'Bio',
    ];

    private static $extensions = [
        Versioned::class,
    ];

    private static $owns = [
        'StaffImage',
    ];

    private static $table_name = 'Staff';

    public function getGridThumbnail()
    {
        if($this->StaffImage()->exists()) {
            return $this->StaffImage()->ScaleWidth(100);
        }
        return "(no image)";
    }



    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $StaffRoll = [
            'Director' => 'Director',
            'Clinic Manager' => 'Clinic Manager',
            'Doctor' => 'Doctor',
            'Registered Nurse' => 'Registered Nurse',
            'Receptionists' => 'Receptionists',

        ];

        $fields->addFieldToTab('Root.Main', TextField::create('Title','Staff Name'));
        $fields->addFieldToTab('Root.Main', DropdownField::create('StaffTitle','Staff Role')
            ->setSource($StaffRoll)->setEmptyString('Please Select ...'));
        $fields->addFieldToTab('Root.Main', TextField::create('Credentials','Credentials')
            ->setDescription('List of Qualifications - e.g. DRCOG, BSc(Hons), BPhED, MBChB, RGON, NZRGN'));
        $fields->addFieldToTab('Root.Main', HTMLEditorField::create('StaffBio'),'');
        $fields->addFieldToTab('Root.Main', $photo = UploadField::create('StaffImage','Staff Image')
            ->setDescription('Recommended image size 640px(width) - 425px(height)'));

        $photo->setFolderName('Staff-Images');
        $photo->getValidator()
            ->setAllowedExtensions(['png','gif','jpeg','jpg']);

        $fields->removeByName('SortOrder');
        $fields->removeByName('ParentID');

        return $fields;
    }

}
