<?php

namespace TravelDoctor\TDTheme;

use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\ORM\DataExtension;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
use SilverStripe\Forms\TreeDropdownField;

use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;


class SiteConfigExtension extends DataExtension
{

    private static $db = [
        'FacebookLink' => 'Varchar',
        'InstagramLink' => 'Varchar',
        'CtaTitle' => 'Varchar',
        'CtaText' => 'HTMLText',
        'CtaLinkText' => 'Varchar',
    ];

    private static $has_one = [
        'LogoImage' => Image::class,
        'HeaderImage' => Image::class,
        'CtaLink' => SiteTree::class,
        'CtaImage' => Image::class,
    ];

    private static $owns = [
        'LogoImage',
        'HeaderImage',
        'CtaImage',
    ];


    public function updateCMSFields(FieldList $fields)
    {

        // Website Logo in Navbar
        $fields->addFieldToTab('Root.Main',
            $logo = UploadField::create('LogoImage','Choose an Image for your Logo'));
        $logo->setFolderName('UpLoads');


        // Header image for other pages that are not HomePage
        if(static::class!='HomePage') {
            $fields->addFieldToTab('Root.Main',
                $photo = UploadField::create('HeaderImage', 'Header Image'));
            $photo->setFolderName('Header-Banners');
        }

        // Social Media
        $fields->addFieldsToTab('Root.Social', array (
            TextField::create('FacebookLink','Facebook Link'),
            TextField::create('InstagramLink','Instagram Link'),
        ));


        // Call To Action
        $fields->addFieldsToTab('Root.CallToAction', array (
            TextField::create('CtaTitle','Header Title'),
            TextField::create('CtaLinkText','Button Link Name'),

            $treeField = TreeDropdownField::create('CtaLinkID', 'Button Link to', SiteTree::class),
            $treeField->setTitleField('MenuTitle'),
            $treeField,

            HTMLEditorField::create('CtaText','Content'),
            $image = UploadField::create('CtaImage','Choose an Image for Background'),
            $image->setFolderName('UpLoads'),
        ));

        $fields->removeByName('Tagline');


    }


}
