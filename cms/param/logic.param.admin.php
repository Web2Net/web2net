<?php
include_once("item.param.admin.php");
include_once("tag.param.admin.php");

include_once("define.param.admin.php");

define('PARAM_ITEM_TABLE','param_item');
define('PARAM_ITEM_TABLE_LANG','param_item_'.$_SESSION['lang']);
define('PARAM_TAG_TABLE','param_tag');
define('PARAM_TAG_TABLE_LANG','param_tag_'.$_SESSION['lang']);
define('PARAM_ITEM_IMG_PATH', SITE_PATH."/image/param/item");
define('PARAM_TAG_IMG_PATH', SITE_PATH."/image/param/tag");

class Param {	

function admParam() {
	


define('MOD_NAME', 'Параметры');

include (SITE_PATH."/cms/inc/eval.php");

if($type=="tag"){
$c_cont=ParamTag::admTag();	
}
if($type=="item"){
$c_cont=ParamItem::admItem();
}


return $c_cont;
}


}
?>
