<?php

class CartItem {	

    function admItem(){

include (SITE_PATH."/cms/inc/eval.php");

        $tpl_item=new AdmModTpl;

        if($com=="list"){	
            $_SESSION['refresh_page']=PAGE_URL;
            
            if($event!=""){
                CartItem::Event($event,CART_ITEM_TABLE,$id);
            }

            $item_list=CartItem::itemListIdData($tag);

            if(INI::Life('CART_tag_list')>30){
                $tag_list=CartTag::tagListIdData();
                INI::SetXXL($tag_list,'CART_tag_list');
            }

            $tag_list=INI::Get('CART_tag_list');

            $tpl_item->assign('item_list',$item_list);
            $tpl_item->assign('tag_list',$tag_list);

            $c_cont=$tpl_item->get("item-list");
        }

        if($cmd=="update"||$cmd=="insert"){
	   $connect_real = array_unique($connect);

           $arr_value['connect']=';';
           if($connect_real!=NULL){
               foreach($connect_real as $key=>$val){
                   $arr_value['connect'].=$val.';';	
               }
           }

           $p1_real = $cart;

           $arr_value['p1']=';';
           
           if($p1_real!=NULL){
               foreach($p1_real as $key=>$val){
                   $arr_value['p1'].=$key."/".$val.';';	
               }
           }

           $arr_value['caption']=trim(str_replace('"','&quot;',$caption));
           $arr_value['seolink']=$seolink!=""?$seolink:Text::cirilToLatin($arr_value['caption']);
           $arr_value['desc_short']=trim(str_replace('"','&quot;',$desc_short));
           $arr_value['desc_full']=trim($desc_full);
           $arr_value['show']=$show;
           $arr_value['hit']=$hit;

           $arr_value['meta_t']=$meta_t!=''?str_replace('"','&quot;',$meta_t):$arr_value['caption'];
           $arr_value['meta_d']=$meta_d!=''?str_replace('"','&quot;',$meta_d):$arr_value['desc_short'];
           $arr_value['meta_k']=$meta_k;

           $arr_value['date']=$date!=""?$date:date("Y-m-d H:i:s");

           $nowdata=getdate(time());
           $arr_value['pos']=$pos!=''&&$pos!=0?$pos:$nowdata[0];

           $table=CART_ITEM_TABLE;
SYS::varDump($arr_value,__FILE__,__LINE__,'arr_value');
           if($id!=""&&$id!="new"){
	       $where['id']=$id;
	
	       $db = new mysql;
	       $res = $db->updateSQL ($table, $arr_value, $where);
           }
           else{
	       $db = new mysql;
	       $id = $db->insertSQL ($arr_value, $table);
	       rename(CART_ITEM_IMG_PATH."/new",CART_ITEM_IMG_PATH."/".$id);
	       $url="/cms/?".str_replace("com=add","com=edit", getenv("QUERY_STRING"));
	       $url=str_replace("id=new","id=".$id, $url);
	       header("Location: ".$url."&save=ok");
           }
           $_SESSION['dplay']="tab";
       }   

       if($com=="add"||$com=="edit"||$com=="print"){	
           $tag_list=CartTag::tagListIdData();
           $tpl_item->assign('tag_list',$tag_list);

           $tag1_list=CartTag::tagListIdData(1);
           $tpl_item->assign('tag1_list',$tag1_list);

           $tag2_list=CartTag::tagListIdData(2);
           $tpl_item->assign('tag2_list',$tag2_list);

           $param_tag_list=ParamTag::tagShowListConnectData('1');
           $tpl_item->assign('param_tag_list',$param_tag_list);

           if($param_tag_list){
               foreach($param_tag_list as $key=>$val){

//$param_item_list[$val["id"]]=ParamItem::itemListIdData($val["id"]);
//SYS::varDump($param_item_list,__FILE__,__LINE__,'param_item');
               }
           }

           if($com=="edit"||$com=="print"){
               $item_data=CartItem::itemData($id);
               $tpl_item->assign('item_data',$item_data);	
           }	

           if($com=="print"){
               $c_cont=$tpl_item->get("item-print");	
           }
           else{
               $c_cont=$tpl_item->get("item-add-edit");	
           }
       }
       return $c_cont;
}      


function itemListData($tag){
	
$select="";
$from=CART_ITEM_TABLE;
$where="connect LIKE '%".$tag.";%'";
$sortby="pos DESC";

$db = new mysql;
$row = $db->origSelectSQL($select, $from, $where, $sortby,"0,70");

return $row;
}


function itemListIdData($tag){
	
$select="";
$from=CART_ITEM_TABLE;
$where="connect LIKE '%".$tag.";%'";
$sortby="pos DESC";

$db = new mysql;
$row = $db->origSelectSQL($select, $from, $where, $sortby,"0,70");

if($row!=NULL){foreach($row as $key=>$val){
$arrcat[$val["id"]]=$val;
}}

return $arrcat;
}


function itemCountTag($tag){
	
$select="COUNT(id)";
$from=CART_ITEM_TABLE;
$where="connect LIKE '%".$tag.";%'";
$sortby="pos DESC";

$db = new mysql;
$row = $db->origSelectSQL($select, $from, $where, $sortby,"0,70");

return $row[0]["COUNT(id)"];
}

function itemData($id){
	
$select="";
$from=CART_ITEM_TABLE;
$where["id"]=$id;

$db = new mysql;
$row = $db->selectSQL($select, $from, $where, "", 1);

return $row[0];
}



function Event($event,$table,$id){
$from=$table;
$where="id={$id}";
$db = new mysql;
$row = $db->origSelectSQL("id,pos", $from, $where,"pos ASC","0,1");

$pos_start=$row[0]["pos"];
$id_start=$row[0]["id"];

if($event=='moveDown'){
$from2=$table;	
$where2="pos<{$pos_start}";
$db = new mysql;
$row2 = $db->origSelectSQL("id,pos", $from2, $where2,"pos DESC","0,1");
$pos_end=$row2[0]["pos"];
$id_end=$row2[0]["id"];
}

if($event=='moveUp'){
$from2=$table;	
$where2="pos>{$pos_start}";
$db = new mysql;
$row2 = $db->origSelectSQL("id,pos", $from2, $where2,"pos ASC","0,1");
$pos_end=$row2[0]["pos"];
$id_end=$row2[0]["id"];
}
	
if($pos_end!=""){
$arr_value1['pos']=$pos_end;
$arr_value2['pos']=$pos_start;
$whereu1['id']=$id_start;
$whereu2['id']=$id_end;
$db = new mysql;
$db->updateSQL ($from, $arr_value1, $whereu1);
$db->updateSQL ($from, $arr_value2, $whereu2);
}
//return $res;
}


}



/*
	

if($com=="delete"){
	
$from="art_Fotogallery";	
$where['id']=$id;	
$db = new mysql;
$res = $db->deleteSQL ($from, $where);
$loc_url=str_replace("com=delete","com=view",PAGE_URL);
$loc_url=str_replace("&id=".$id."","",$loc_url);
header("Location: ".$loc_url."");
}

}

 return $c_cont;

}


*/

?>
