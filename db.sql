INSERT INTO `vtiger_ws_operation` (`operationid`, `name`, `handler_path`, `handler_method`, `type`, `prelogin`) VALUES ('34', 'retrievelanguages', 'include/Webservices/RetrieveLanguages.php', 'vtws_retrievelanguages', 'GET', '0');

UPDATE `vtiger_ws_operation_seq` SET `id` = '34' WHERE `id` = '33';

INSERT INTO `vtiger_ws_operation_parameters` (`operationid`, `name`, `type`, `sequence`) VALUES 
('34', 'lang', 'String', '1'),('34', 'modules', 'String', '1'); 
