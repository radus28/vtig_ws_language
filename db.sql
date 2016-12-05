INSERT INTO `vtiger_ws_operation` (`operationid`, `name`, `handler_path`, `handler_method`, `type`, `prelogin`) VALUES ((SELECT id FROM `vtiger_ws_operation_seq`), 'retrievelanguages', 'include/Webservices/RetrieveLanguages.php', 'vtws_retrievelanguages', 'GET', '0');

INSERT INTO `vtiger_ws_operation_parameters` (`operationid`, `name`, `type`, `sequence`) VALUES 
((SELECT id FROM `vtiger_ws_operation_seq`), 'lang', 'String', '1'),((SELECT id FROM `vtiger_ws_operation_seq`), 'modules', 'String', '1'); 

UPDATE `vtiger_ws_operation_seq` SET `id` = (id+1);
