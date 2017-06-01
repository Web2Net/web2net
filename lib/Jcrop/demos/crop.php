<?php
require(getenv("DOCUMENT_ROOT").'/kernel/kernel.php');

$upload_path="/product-image";
$upload_dir=SITE_PATH.$upload_path;

if (isset($_GET['img'])) {
	
$revurl=strrev($_GET["img"]);
$reurl=explode("/",$revurl);
$revname=explode(".",$reurl[0]);
unset($revname[0]);
$imgname=strrev(implode($revname));
$GLOBALS["imgname"]=$imgname;
//var_dump($imgname);



$url=$_GET["img"];
$nu=explode("/",$url);
if($nu[0]==""){$url=SITE_URL.$url;}
//var_dump($nu);

$curl = curl_init();
curl_setopt($curl, CURLOPT_URL,$url); 
curl_setopt($curl, CURLOPT_USERAGENT, 'Opera 10.00');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
$res = curl_exec($curl);
if(!$res)
	{
	$error = curl_error($curl).'('.curl_errno($curl).')';
	//echo $error;
	}
else
	{
	$file=$res;
	}

@mkdir($upload_dir."/tmp/", 0755);

$cropimg=$upload_dir."/tmp/".$imgname.".jpg";
$imgcrop=SITE_URL.$upload_path."/tmp/".$imgname.".jpg";

$openedfile = fopen($cropimg, "w"); 
fwrite($openedfile, $file); 
fclose($openedfile);

$s=explode("x",$_GET["size"]);
$we=$s[0];
$he=$s[1];

//GD::imageResize($cropimg,$cropimg,$we,$he,85);

}


if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
	$targ_w = $_POST['w'];
	$targ_h = $_POST['h'];
	$jpeg_quality = 90;

	$src = $_GET['f'];
	$img_r = imagecreatefromjpeg($src);
	$dst_r = ImageCreateTrueColor( $targ_w, $targ_h );

	imagecopyresampled($dst_r,$img_r,0,0,$_POST['x'],$_POST['y'],
	$targ_w,$targ_h,$_POST['w'],$_POST['h']);
    $pid=explode("-",$_POST["newimg"]);
    $newimg=$upload_dir."/".$pid[0]."/".$pid[1].".jpg";	
    $oldimg=$_POST["oldimg"];
    
    //header('Content-type: image/jpeg');
	imagejpeg($dst_r,$newimg,$jpeg_quality);

    unlink($oldimg);

    header("Location: /cms/shop/load_prod_image.php?loadimg=".str_replace(getenv("DOCUMENT_ROOT"),"",$newimg)."&num=".$pid[1]);
	
	?>
		<html>
<body style="margin:0;padding:0px;">
		<script>
	window.parent.CloseUp('<?=str_replace(getenv("DOCUMENT_ROOT"),"",$newimg);?>');
	self.close();	
	</script>
</body>
</html>
		<?

	exit;	
}

// If not a POST request, display page below:

?><!DOCTYPE html>
<html>
<head>
  <title>Live Cropping Image</title>
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
  <script src="../js/jquery.min.js"></script>
  <script src="../js/jquery.Jcrop.js"></script>
  <link rel="stylesheet" href="demo_files/main.css" type="text/css" />
  <link rel="stylesheet" href="demo_files/demos.css" type="text/css" />
  <link rel="stylesheet" href="../css/jquery.Jcrop.css" type="text/css" />

<script type="text/javascript">

  $(function(){

    $('#cropbox').Jcrop({
      bgColor: 'black',
      addClass: 'jcrop-dark',
<?if($he=="..."){$he=500;}else{?>aspectRatio: <?=$we?>/<?=$he?>,<?}?>
	setSelect:[0,0,<?=$we?>,<?=$he?>],
      onSelect: updateCoords
    });

  });

  function updateCoords(c)
  {
    $('#x').val(c.x);
    $('#y').val(c.y);
    $('#w').val(c.w);
    $('#h').val(c.h);
  };

  function checkCoords()
  {
    if (parseInt($('#w').val())) return true;
    alert('Please select a crop region then press submit.');
    return false;
  };

</script>
<style type="text/css">
  #target {
    background-color: #444;
    width: 500px;
    height: 330px;
    font-size: 24px;
    display: block;
  }


</style>

</head>
<body style="background-color:#eeeeee;margin:0;padding:0">

<div class="container" style="width:800px;padding:0;margin:0;">
<div class="row" style="width:800px;padding:0;margin:0;">
<div class="span12" style="width:800px;padding:0;margin:0;">
<div class="jc-demo-box" style="width:800px;padding:0;margin:0;background-color:#eeeeee;">

<div class="page-header" style="padding:0;margin:0;">
<center style="font: bold 12px Tahoma, Geneva, sans-serif;color: forestgreen;margin-bottom:7px">	
<?//=$_GET["size"]?>

<form action="crop.php?f=<?=$imgcrop?>" method="post" onsubmit="return checkCoords();" style="padding:0;margin:0;">
<!--<div style="font: bold 12px Tahoma, Geneva, sans-serif;color: #333;margin-bottom:7px" align="center">
Имя файла:<br>	</div>-->
	<input name="newimg" id="newimg" value="<?=$GLOBALS['imgname']?>" style="width: 70%;padding:4px;font:14px Tahoma #333;margin-top:7px;" type="hidden">
	<input name="oldimg" id="oldimg" value="<?=$cropimg?>" style="width: 70%;padding:4px;font:14px Tahoma #333;" type="hidden">

			<input type="hidden" id="x" name="x" />
			<input type="hidden" id="y" name="y" />
			<input type="hidden" id="w" name="w" />
			<input type="hidden" id="h" name="h" /><br>
			<input type="submit" value="Обрезать картинку" class="btn btn-large btn-inverse" style="margin-bottom:15px;" />
				
		<!-- This is the image we're attaching Jcrop to -->
		<img src="<?=$imgcrop?>" id="cropbox" width="740" />

		<!-- This is the form that our event handler fills -->				
		</form>

</center>


	</div>
	</div>
	</div>
	</div>
	</body>

</html>
