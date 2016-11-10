# vtig_ws_language - README

1. Move all the files to your CRM root directory
2. Run the db.sql in your crm database

# How to use

```sh
$modules = json_encode(array('Accounts','HelpDesk'));// if no modules, default vtiger will be returned, otherwise the module strings over write the vtiger strings
$lang_retrieve = getResponseFromURL("$endpointurl?operation=retrievelanguages&sessionName=".$session."&lang=en_us&modules=".$modules);

```

