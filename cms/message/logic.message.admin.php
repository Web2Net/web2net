<?php
include_once("item.message.admin.php");
include_once("tag.message.admin.php");

include_once("define.message.admin.php");

define('MESSAGE_ITEM_TABLE','message_item');
define('MESSAGE_TAG_TABLE','message_tag');
define('MESSAGE_ITEM_IMG_PATH', SITE_PATH."/image/message/item");
define('MESSAGE_TAG_IMG_PATH', SITE_PATH."/image/message/tag");

class Message {	

function admMessage() {

define('MESSAGE_NAME', MESSAGE_ADMIN_MOD_NAME);

include (SITE_PATH."/cms/inc/eval.php");

if($type=="tag"){
$c_cont=MessageTag::admTag();	
}
if($type=="item"){
$c_cont=MessageItem::admItem();
}


return $c_cont;
}


}
?>
