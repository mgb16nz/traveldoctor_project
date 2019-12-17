<?php

use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;
use SilverStripe\View\SSViewer;

/**
 *  Here is how you can add more Plugin Buttons to the TinyMCE Ribbon
 *  To find a list of more plugins you wil need to goto - vendor/silverstripe/admin/thirdparty/tinymce/plugins
 *  or look on https://www.tiny.cloud/docs-4x/plugins/ for a list for TinyMCE v4 and for Toolbar/Menu Controls list - https://www.tiny.cloud/docs-4x/advanced/editor-control-identifiers/
 *  Some of them don't seem to work but most do. The likes of 'Undo' and 'Redo' are not plugins but part of the TinyMCE
 *  For more information for Adding/Removing TinyMCE Plugins  - https://docs.silverstripe.org/en/4/developer_guides/forms/field_types/htmleditorfield/#adding-and-removing-capabilities
 */

// Enable TinyMCE Plugins
HtmlEditorConfig::get('cms')->enablePlugins('hr');
HtmlEditorConfig::get('cms')->enablePlugins('anchor');
HtmlEditorConfig::get('cms')->enablePlugins('charmap');
HtmlEditorConfig::get('cms')->enablePlugins('fullscreen');
HtmlEditorConfig::get('cms')->enablePlugins('wordcount');
HtmlEditorConfig::get('cms')->enablePlugins('preview');
HtmlEditorConfig::get('cms')->enablePlugins('link');
HtmlEditorConfig::get('cms')->enablePlugins('codesample');
HtmlEditorConfig::get('cms')->enablePlugins('textcolor');
HtmlEditorConfig::get('cms')->enablePlugins('searchreplace');
HtmlEditorConfig::get('cms')->enablePlugins('help');

// Insert Buttons of TinyMCE Plugins - Line 1 (Top Ribbon)
HtmlEditorConfig::get('cms')->insertButtonsBefore('bold', 'undo', 'redo', '|');
HtmlEditorConfig::get('cms')->insertButtonsAfter('underline', 'strikethrough');
HtmlEditorConfig::get('cms')->insertButtonsAfter('indent', '|', 'blockquote', 'hr', 'charmap', '|', 'help', '|');

// Insert Buttons of TinyMCE Plugins - Line 2 (Bottom Ribbon)
HtmlEditorConfig::get('cms')->insertButtonsAfter('formatselect', '|', 'forecolor');
HtmlEditorConfig::get('cms')->insertButtonsBefore('paste', 'cut');
HtmlEditorConfig::get('cms')->insertButtonsAfter('unlink', 'anchor');
HtmlEditorConfig::get('cms')->insertButtonsAfter('code', 'codesample', 'fullscreen', 'preview', '|', 'searchreplace');


