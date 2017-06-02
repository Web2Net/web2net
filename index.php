<?
ini_set('display_errors', 'On'); // сообщения с ошибками будут показываться
error_reporting(E_ALL); // E_ALL - отображаем ВСЕ ошибки
//$value = $var[$key]; // пример ошибки
ini_set('display_errors', 'Off'); // теперь сообщений НЕ будет
/*
session_start();
unset($_SESSION); 
session_destroy();
//header('Location: index.php')
*/
$MySQL_log=getenv("DOCUMENT_ROOT")."/magic/MySQL.log";
//unlink($filename);
$filewrite=fopen($MySQL_log,"w+");
$paper='';
fwrite($filewrite,$paper);
fclose($filewrite);

include_once ("kernel/cfg.php");		
include_once ("site/logic.php");	
?>
