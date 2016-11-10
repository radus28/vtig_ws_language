<?php
/*+***********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 *************************************************************************************/
	
	function vtws_retrievelanguages($lang, $modules, $user){
		
		global $log,$adb;
		
		require_once 'languages/'.$lang.'/Vtiger.php';
                $languages = $languageStrings;
		$modules = json_decode($modules);
                foreach($modules as $module)
                {
                    require_once 'languages/'.$lang.'/'.$module.'.php';
                    foreach($languageStrings as $label=>$translation)
                    {
                        $languages[$label] = $translation;
                    }
                }
		$idComponents = vtws_getIdComponents($id);
//		if(!$meta->exists($idComponents[1])){
//			throw new WebServiceException(WebServiceErrorCode::$RECORDNOTFOUND,"Record you are trying to access is not found");
//		}

		VTWS_PreserveGlobal::flush();
		return $languages ;
	}
?>
