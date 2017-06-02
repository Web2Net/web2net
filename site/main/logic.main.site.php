<?php
define('ART_ITEM_TABLE','art_item');
define('ART_ITEM_TABLE_LANG','art_item_'.$_SESSION['lang']);
define('ART_TAG_TABLE','art_tag');
define('ART_TAG_TABLE_LANG','art_tag_'.$_SESSION['lang']);

class Main {	

static function siteMain() {
	
$c_cont["content"]="";	
$tpl=new SiteModTpl;

/*
foreach ($_REQUEST as $key=>$val){
$str="$".$key."=\$val;";
eval($str);}
*/

if(isset($_SERVER['REQUEST_URI'])){
$seodata = explode("/",$_SERVER['REQUEST_URI']);
if(isset($seodata[1])){$mod = $seodata[1];}
if(isset($seodata[2])){$tag1 = $seodata[2];}
if(isset($seodata[3])){$tag2 = $seodata[3];}    
if(isset($seodata[4])){$param = $seodata[4];}
}

if(isset($tag1) && $tag1=="best-proposition"){
	
$spec_where="on_main!=0 AND `showing`='1'";
$best_prop=Shop::itemListSpecial($spec_where);

$tpl->assign('best_prop',$best_prop);
$c_cont["content"].=$tpl->get("best-prop-full");

}else if(isset($tag1) && $tag1=="quick-setting"){
	
$spec_where="connect LIKE '%;48;%' AND on_main!=0 AND `showing`='1'";
$quick_set=Shop::itemListSpecial($spec_where);
$tpl->assign('quick_set',$quick_set);
$c_cont["content"].=$tpl->get("quick-set-full");

}else{

$spec_where="on_main!=0 AND `showing`='1'";
$best_prop=Shop::itemListSpecial($spec_where);
$tpl->assign('best_prop',$best_prop);
$c_cont["content"].=$tpl->get("best-prop");
//SYS::varDump($best_prop,__FILE__,__LINE__,"best_prop");


//$spec_where="connect LIKE '%;48;%' AND on_main!=0 AND `showing`='1'";
//$quick_set=Shop::itemListSpecial($spec_where);
//$tpl->assign('quick_set',$quick_set);
//$c_cont["content"].=$tpl->get("quick-set");
//SYS::varDump($quick_set,__FILE__,__LINE__,"quick_set");

//$spec_where="hit!=0 AND `showing`='1'";
/*
$spec_where="`showing`='1'";
$gallery_top=Gallery::itemListSpecial($spec_where);
$tpl->assign('gallery_top',$gallery_top);
$c_cont["content"].=$tpl->get("gallery-top");
*/

//SYS::varDump($gallery_top,__FILE__,__LINE__,"gallery_top");

//$branch_top=Gallery::tagListShowConnect(1);
//$tpl->assign('branch_top',$branch_top);
//$c_cont["content"].=$tpl->get("branch-top");
//SYS::varDump($branch_top,__FILE__,__LINE__,"branch_top");

//$spec_where="on_main!=0 AND `showing`='1'";
//$detail_top=Shop::itemListSpecial($spec_where);
//$tpl->assign('detail_top',$detail_top);
//$c_cont["content"].=$tpl->get("detail-top");
//SYS::varDump($detail_top,__FILE__,__LINE__,"detail_top");

}

$c_cont["meta"]["title"]=META_T_DEFAULT;
$c_cont["meta"]["description"]=META_D_DEFAULT;
$c_cont["meta"]["keywords"]=META_K_DEFAULT;

return $c_cont;
}

public function siteMainMenu(){
      $query = "SELECT * FROM ".ART_TAG_TABLE." 
                  LEFT JOIN ".ART_TAG_TABLE_LANG." ON ".ART_TAG_TABLE.".id=".ART_TAG_TABLE_LANG.".pid 
                  WHERE `showing`='1' ORDER BY `pos`";
        $res = mysql_query($query);
        Mysql::queryError($res,$query);
    
	    if (mysql_num_rows($res) > 0){
		    while ($result = mysql_fetch_assoc ($res)){
		        $result["caption"]=stripslashes($result["caption"]);
	            $result["desc_short"]=stripslashes($result["desc_short"]);
	            $result["desc_full"]=stripslashes($result["desc_full"]);
	            $result["meta_t"]=stripslashes($result["meta_t"]);
	            $result["meta_d"]=stripslashes($result["meta_d"]);
	            $result["meta_k"]=stripslashes($result["meta_k"]);
	
		        $itog[] = $result;
		    }
		}
		
            if($itog!=NULL){
              foreach($itog as $key=>$val){
                  $arrcat[$val["id"]]=$val;
              }
            }
SYS::varDump($arrcat,__FILE__,__LINE__,' MAIN_MENU');
            return $arrcat;
        }

        
        
}

class SiteMainTpl extends Tpl{
function SiteMainTpl (){

	    $this->template_dir = SITE_PATH.'/site/main/tpl';	
}}

?>
