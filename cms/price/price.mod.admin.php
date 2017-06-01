<?

define('PATH_TO_PRICE','userfiles/prices');
define('PATH_TO_ITEM_IMG','userfiles/product-image');
	
define('TABLE_SHOP_TAG','shop_tag');
//    define('TABLE_ITEMS_FILTERS','items_filter');
define('TABLE_SHOP_ITEMS','shop_item');
define('TABLE_TEMP_SHOP_ITEMS','shop_item_temp');

class Price
{
	
	
	
    static function admPrice(){
		
		include ('erc.price.cfg.php');
		
        //$tpl = new Tpl;
		$tpl_item=new AdmModTpl;
        
        foreach ($_REQUEST as $key=>$val)
        {
            $str="$".$key."=\$val;";
            eval($str);
        }
        
//        Price::dumpTable(TABLE_ITEMS); // Создаем копию таблицы
//        Price::backupAllTables(); // Создаем копию БД
        if($com == "dump_mkr")
        {
            $query = "SELECT * from `shop_item`
                      WHERE `postavschik`='mkr'
                      INTO OUTFILE '/tmp/mkr.csv'
                      FIELDS TERMINATED BY ';'
                      ENCLOSED BY '\"'
                      LINES TERMINATED BY '\n';";
			$res = mysql_query($query);
            mysql::queryError($res,$query); // описывает ошибку запроса к БД
        }    



        if($com == "upload_erc_temp_table")
        {
            $postavschik = "erc";
			
            $file = SITE_PATH."/".PATH_TO_PRICE."/price_{$postavschik}.csv"; // прайс
			if(file_exists($file)){
                Price::decodeFile($file); // Декодим
                Price::checkFile($file); // Удаляем повторяющиеся строки из файла
//Price_erc::updateImgFromFile($file);  // сохранение изо с удаленного адреса 			

                Mysql::deleteAllFields(TABLE_TEMP_SHOP_ITEMS); // Удаление всех записей из временной таблицы
                Price_erc::createTempTable(TABLE_TEMP_SHOP_ITEMS,$file,$postavschik);  // Записываем данные из файла во временную таблицу
//                Price::deleteSomeFilds(TABLE_TEMP_SHOP_ITEMS); // Удаление из таблицы записей с некоторыми пустыми полями
			}
		}
//Price_erc::updateImgFromFile($file);  // сохранение изо с удаленного адреса 
//$img_arr = Price_erc::getNewImgItemsFromTempTable(TABLE_SHOP_ITEMS,TABLE_TEMP_SHOP_ITEMS); // Получение новых изо товаров из нового прайса          
//Price_erc::updateImgFromArray($img_arr, PATH_TO_ITEM_IMG);   // Закачиваем новые изо        
        elseif($com == "upload_erc_update"){
			Price::setStatysArch(TABLE_SHOP_ITEMS,$postavschik); // Переводим весть товар поставщика в статус "архивный"
            Price::updateExistenceItems(TABLE_SHOP_ITEMS,TABLE_TEMP_SHOP_ITEMS,$postavschik); // Перезаписываем товар, который уже существует в TABLE_SHOP_ITEMS из TABLE_TEMP_SHOP_ITEMS
		}
        elseif($com == "upload_erc_insert"){        
		    Price::insNewItems(TABLE_SHOP_ITEMS,TABLE_TEMP_SHOP_ITEMS,$postavschik); // Добавляем новый товар из временной таблицы (из TABLE_TEMP_SHOP_ITEMS в TABLE_SHOP_ITEMS)
            Price::deleteSomeFilds(TABLE_SHOP_ITEMS);  // Удаление из таблицы записей с некоторыми пустыми полями
            Mysql::optimazeTable(TABLE_SHOP_ITEMS);  // Оптимизация таблицы
        }
		else{
			exit("{$file} - нету такого");
		}
		$c_cont=$tpl_item->get("price-uploaded");	
/*        
        elseif($com == "upload_south")
        {
            $postavschik = "south";

            $file = SITE_PATH."/price/price_{$postavschik}.xml"; // прайс
            Price::decodeFile($file); // Декодим
//            Price::checkFile($file); // Удаляем повторяющиеся строки из файла
            Mysql::deleteAllFields(TABLE_TEMP_ITEMS); // Удаление всех записей из временной таблицы
$file_south = Price_south::parseXML($file);
Price_south::createTempTable($file_south,$postavschik);  // записываем данные во временную таблицу
            Price::deleteSomeFilds(TABLE_TEMP_ITEMS); // Удаление из таблицы записей с некоторыми пустыми полями
        $img_arr = Price_south::getNewImgItemsFromTempTable(TABLE_ITEMS,TABLE_TEMP_ITEMS); // Получение новых изо товаров из нового прайса          
        Price_south::updateImgFromArray($img_arr,"../product-image/");   // Закачиваем новые изо        
            Price::setStatysArch(TABLE_ITEMS,$postavschik); // Переводим весть товар поставщика в статус "архивный"
            Price::updateExistenceItems(TABLE_ITEMS,TABLE_TEMP_ITEMS,$postavschik); // Перезаписываем товар, который уже существует в TABLE_ITEMS из TABLE_TEMP_ITEMS
            Price::insNewItems(TABLE_ITEMS,TABLE_TEMP_ITEMS,$postavschik); // Добавляем новый товар из временной таблицы (из TABLE_TEMP_ITEMS в TABLE_ITEMS)
            Price::deleteSomeFilds(TABLE_ITEMS);  // Удаление из таблицы записей с некоторыми пустыми полями

            $c_cont=$tpl_item->get("price-uploaded");

        }
        elseif($com == "upload_mti")
        {
            $postavschik = "mti";
	        
	        $file = SITE_PATH."/price/price_{$postavschik}.csv"; // прайс
            Price::decodeFile($file); // Декодим
            Price::checkFile($file); // Удаляем повторяющиеся строки из файла
            Mysql::deleteAllFields(TABLE_TEMP_ITEMS); // Удаление всех записей из таблицы
        Price_mti::createTempTable(TABLE_TEMP_ITEMS,$file,$postavschik);  // Записываем данные из файла во временную таблицу
            Price::deleteSomeFilds(TABLE_TEMP_ITEMS); // Удаление из таблицы записей с некоторыми пустыми полями
        
            Price::setStatysArch(TABLE_ITEMS,$postavschik); // Переводим весть товар поставщика в статус "архивный"
            Price::updateExistenceItems(TABLE_ITEMS,TABLE_TEMP_ITEMS,$postavschik); // Перезаписываем товар, который уже существует в TABLE_ITEMS из TABLE_TEMP_ITEMS
            Price::insNewItems(TABLE_ITEMS,TABLE_TEMP_ITEMS,$postavschik); // Добавляем новый товар из временной таблицы (из TABLE_TEMP_ITEMS в TABLE_ITEMS)
            Price::deleteSomeFilds(TABLE_ITEMS);  // Удаление из таблицы записей с некоторыми пустыми полями
            
            $c_cont=$tpl_item->get("price-uploaded"); 
        }
        elseif($com == "upload_mkr")
        {
            $postavschik = "mkr";

            $file = SITE_PATH."/price/price_{$postavschik}.csv"; // прайс
            Price::decodeFile($file); // Декодим
            Price::checkFile($file); // Удаляем повторяющиеся строки из файла
            Mysql::deleteAllFields(TABLE_TEMP_ITEMS); // Удаление всех записей из таблицы
//        Price_erc::createTempTable(TABLE_TEMP_ITEMS,$file,$postavschik);  // Записываем данные из файла во временную таблицу
            Price::deleteSomeFilds(TABLE_TEMP_ITEMS); // Удаление из таблицы записей с некоторыми пустыми полями
     
            Price::setStatysArch(TABLE_ITEMS,$postavschik); // Переводим весть товар поставщика в статус "архивный"
            Price::updateExistenceItems(TABLE_ITEMS,TABLE_TEMP_ITEMS,$postavschik); // Перезаписываем товар, который уже существует в TABLE_ITEMS из TABLE_TEMP_ITEMS
            Price::insNewItems(TABLE_ITEMS,TABLE_TEMP_ITEMS,$postavschik); // Добавляем новый товар из временной таблицы (из TABLE_TEMP_ITEMS в TABLE_ITEMS)
            Price::deleteSomeFilds(TABLE_ITEMS);  // Удаление из таблицы записей с некоторыми пустыми полями

            $c_cont=$tpl_item->get("price-uploaded"); 
        }
        elseif($com == "upload_dtr")
        {
            $postavschik = "dtr";
            $file = SITE_URL."/price/price_dtr.csv"; // прайс
            Price::decodeFile($file); // Декодим
            $file_category = Price_dtr::getFileCategory($file); // выделяем название категории
            $file_dtr = Price_dtr::preparationFileToFileByCategory($file,$file_category,$postavschik); //создаем свой файл с нужными полями и т.д.
	    
	    Price::updateAllFields($postavschik,$file_category); // Изменение ВСЕ полей "наличие товара" во ВСЕЙ таблице на "arch" (архивный)
            $change_price = Price_dtr::changeRecordsInDB($file_dtr,$postavschik);  // перезаписываем БД
            
            $c_cont=$tpl_item->get("price-uploaded");
        }
        elseif($com == "upload_mti")
        {
            $postavschik = "mti";
	        // $old_price = Price_mti::getOldKodFromDB($postavschik); // получаем все уникальные поля из таблицы товаров

            $file = SITE_URL."/price/price_mti.csv"; // прайс
            Price::decodeFile($file); // Декодим


            $file_category = Price_mti::getFileCategory($file); // выделяем название категории
            $file_mti = Price_mti::preparationFileToFileByCategory($file,$file_category,$postavschik); //создаем свой файл с нужными полями и т.д.
            Price::updateAllFields($postavschik,$file_category); // Изменение ВСЕ полей "наличие товара" во ВСЕЙ таблице на "arch" (архивный)
            $change_price = Price_mti::changeRecordsInDB($file_mti,$postavschik);  // перезаписываем БД
            
            $c_cont=$tpl_item->get("price-uploaded"); 
        }
        elseif($com == "upload_KancMaster")
        {
            $postavschik = "km";
            $file = SITE_URL."/price/price_km.csv"; // прайс
            Price::decodeFile($file); // Декодим
//$old_price = Price::getOldKodFromDB($postavschik); // получаем все уникальные поля из таблицы товаров
            $file_kancmaster = Price::preparationFileToFileByCategory_KM($file);
            $change_price = Price::changeRecordsInDB_KM($file,$postavschik);
//echo "Здается мине, что прайс.csv не в порядке...";
        }
        else
        {
            $c_cont=$tpl_item->get("price");
        }
*/
//var_dump($c_cont);
        	
        return $c_cont;
    }
    
    static function decodeFile($file){
    
        header('Content-type: text/html; charset=utf-8');
        if(!setlocale(LC_ALL, 'ru_RU.utf8')) setlocale(LC_ALL, 'en_US.utf8');
        //if(setlocale(LC_ALL, 0) == 'C') die('Не поддерживается ни одна из перечисленных локалей (ru_RU.utf8, en_US.utf8)');

        $handle = fopen('php://memory', 'w+');
        fwrite($handle, iconv('windows-1251', 'utf-8', file_get_contents($file)));
        rewind($handle);
        //while (($row = @fgetcsv($handle, 1024, ';')) !== false) //print_r($row);
        fclose($handle);        
    }
	
    static function checkFile($file){ 
    
        	$sFile = $file;
            file_put_contents($sFile, array_unique(file($sFile)));
    }	
	
    static function deleteSomeFilds($table){ // Удаление пустых, нулевых и "битых" строк в таблице
    
        $query = "DELETE FROM `{$table}` WHERE `1Cid` = '' OR `price_diler` = '0.00' OR `price_roznica` = '0.00'"; 
        $res = mysql_query($query);
        mysql::queryError($res,$query);
    }
	
    static function setStatysArch($table,$postavschik){  // Переводим весть товар поставщика в статус "архивный"
        $query = "UPDATE `{$table}` SET `nalichie`='arch' WHERE `postavschik`='{$postavschik}'";
        $res = mysql_query($query);
        Mysql::queryError($res,$query);
    }
	
    static function updateExistenceItems($table_1, $table_2, $postavschik){  // Перезаписываем товар, который уже существует в TABLE_ITEMS из TABLE_TEMP_ITEMS
        $last_update = date("Y-m-d H:i:s");
		
		$query = "UPDATE {$table_1} t1,{$table_2} t2 
		          SET t1.connect=t2.connect, 
		              t1.price_diler=t2.price_diler, 
					  t1.price_roznica=t2.price_roznica, 
					  t1.last_update=t2.last_update, 
					  t1.nalichie=t2.nalichie,
					  t1.p1=t2.p1,
					  t1.p2=t2.p2,
					  t1.filter_connect=t2.filter_connect 
				  WHERE t1.1Cid=t2.1Cid AND t2.postavschik='{$postavschik}'";
/*		
		$query = "UPDATE {$table_2} t2
                  INNER JOIN {$table_1} t1 ON t1.1Cid = t2.1Cid
                  SET t2.connect=t1.connect, 
				      t2.price_diler=t1.price_diler, 
					  t2.price_roznica=t1.price_roznica, 
					  t2.last_update=t1.last_update, 
					  t2.nalichie=t1.nalichie,
					  t2.p1=t1.p1,
					  t2.p2=t1.p2,
					  t2.filter_connect=t1.filter_connect
                  WHERE t2.1Cid IS NULL";
*/				  
/*		
		$query = "UPDATE {$table_2} t2, {$table_1} t1
                  SET t2.connect=t1.connect, 
				      t2.price_diler=t1.price_diler, 
					  t2.price_roznica=t1.price_roznica, 
					  t2.last_update=t1.last_update, 
					  t2.nalichie=t1.nalichie
					  t2.p1=t1.p1,
					  t2.p2=t1.p2,
					  t2.filter_connect=t1.filter_connect
                  WHERE t1.1Cid=t2.1Cid
                  SELECT * FROM {$table_2};";
*/
	    
/*	
		$query = "UPDATE {$table_1},{$table_2} SET 
		          {$table_1}.price_diler={$table_2}.price_diler, 
		          {$table_1}.price_roznica={$table_2}.price_roznica,
		          {$table_1}.last_update='{$last_update}',
		          {$table_1}.nalichie={$table_2}.nalichie,		
		      {$table_1}.p1={$table_2}.p1,		
		      {$table_1}.p2={$table_2}.p2,		
		      {$table_1}.filter_connect={$table_2}.filter_connect		
		          WHERE {$table_1}.1Cid={$table_2}.1Cid;"; 
*/
		$res = mysql_query($query);
		Mysql::queryError($res,$query);
	}
	
	static function insNewItems($table_1, $table_2, $postavschik){  // Добавляем новый товар из временной таблицы
/*
$query = "INSERT INTO {$table_1} (
1Cid,
connect,
caption,
seolink,
desc_full,
desc_short,
showing,
flagman,
good_price,
sell_out,
on_main,		 	 	 
price_diler,	 	 
price_roznica,	 	 	 
first_update,		 	 
last_update,
img, 
article,	 	 
ordering,	 	 
hit,	 	 
garantiya,
nalichie,	 	 
package, 
param_connect,	 	 	 
branch_connect,	 	 	 
gallery_connect,	 	 	 
companion_connect,	 	 	 
p1,		 	 	 
p2,	 	 	 	 
p3,		 	 	 
p4,		 	 	 
p5,	 	 
p6,	 	 	 
postavschik, 	 	 
brand,
meta_t,	 	 	 
meta_k,	 	 	 
meta_d, 	 	 
see,	 	 	 
print,
pos
) SELECT {$table_2}.* FROM {$table_2} LEFT JOIN {$table_1} ON {$table_1}.1Cid = {$table_2}.1Cid WHERE {$table_1}.id IS NULL";
*/
	
		$query = "INSERT INTO {$table_1} (
1Cid,
connect,
caption,
seolink,
desc_full,
desc_short,
showing,
flagman,
good_price,
sell_out,
on_main,		 	 	 
price_diler,	 	 
price_roznica,	 	 	 
first_update,		 	 
last_update,
img, 
article,	 	 
ordering,	 	 
hit,	 	 
garantiya,
nalichie,	 	 
package, 
param_connect,	 	 	 
branch_connect,	 	 	 
gallery_connect,	 	 	 
companion_connect,	 	 	 
p1,		 	 	 
p2,	 	 	 	 
p3,		 	 	 
p4,		 	 	 
p5,	 	 
p6,	 	 	 
postavschik, 	 	 
brand,
meta_t,	 	 	 
meta_k,	 	 	 
meta_d, 	 	 
see,	 	 	 
print,
pos) 
		          SELECT 
{$table_2}.1Cid,
{$table_2}.connect,
{$table_2}.caption,
{$table_2}.seolink,
{$table_2}.desc_full,
{$table_2}.desc_short,
{$table_2}.showing,
{$table_2}.flagman,
{$table_2}.good_price,
{$table_2}.sell_out,
{$table_2}.on_main,		 	 	 
{$table_2}.price_diler,	 	 
{$table_2}.price_roznica,	 	 	 
{$table_2}.first_update,		 	 
{$table_2}.last_update,
{$table_2}.img, 
{$table_2}.article,	 	 
{$table_2}.ordering,	 	 
{$table_2}.hit,	 	 
{$table_2}.garantiya,
{$table_2}.nalichie,	 	 
{$table_2}.package, 
{$table_2}.param_connect,	 	 	 
{$table_2}.branch_connect,	 	 	 
{$table_2}.gallery_connect,	 	 	 
{$table_2}.companion_connect,	 	 	 
{$table_2}.p1,		 	 	 
{$table_2}.p2,	 	 	 	 
{$table_2}.p3,		 	 	 
{$table_2}.p4,		 	 	 
{$table_2}.p5,	 	 
{$table_2}.p6,	 	 	 
{$table_2}.postavschik, 	 	 
{$table_2}.brand, 	 	 
{$table_2}.meta_t, 	 	 
{$table_2}.meta_k, 	 	 
{$table_2}.meta_d, 	 	 
{$table_2}.see,	 	 	 
{$table_2}.print,
{$table_2}.pos
		          FROM {$table_2} LEFT JOIN {$table_1} ON {$table_1}.1Cid = {$table_2}.1Cid WHERE {$table_1}.1Cid IS NULL";
		          //FROM {$table_2} LEFT JOIN {$table_1} ON {$table_1}.1Cid = {$table_2}.1Cid WHERE {$table_1}.postavschik <> 'mkr' AND  {$table_1}.1Cid IS NULL";


     			$res = mysql_query($query);
                Mysql::queryError($res,$query);
				
				

		$query2 = "INSERT INTO shop_item_ru (
pid,
caption,
desc_full,
desc_short,
meta_t,	 	 	 
meta_k,	 	 	 
meta_d	 	 	 
) 
		          SELECT 
{$table_1}.id,
{$table_1}.caption,
{$table_1}.desc_full,
{$table_1}.desc_short,
{$table_1}.meta_t,	 	 	 
{$table_1}.meta_k,	 	 	 
{$table_1}.meta_d	 	 	 

		          FROM {$table_1} LEFT JOIN shop_item_ru ON shop_item_ru.pid = {$table_1}.id  WHERE shop_item_ru.pid IS NULL";
		$res2 = mysql_query($query2);
		Mysql::queryError($res2,$query2);
		
		
	} 

    static function getPrice($postavschik,$price_rozn,$price_diler,$ddp){  // Добавляет к цене поставщика определенный % и формирует цену в зависимости от курса у.е., поставщика и прочих шняг
     
        if($postavschik == "erc")
        {
            if($ddp == "0")
            {
                if($price_diler > 0 AND $price_diler <= 50)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_0_50)*KURS_ERC;   
                }
                elseif($price_diler > 50 AND $price_diler <= 100)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_50_100)*KURS_ERC;   
                }
                elseif($price_diler > 100 AND $price_diler <= 200)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_100_200)*KURS_ERC;   
                }
                elseif($price_diler > 200 AND $price_diler <= 500)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_200_500)*KURS_ERC;   
                }
                elseif($price_diler > 500 AND $price_diler <= 1000)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_500_1000)*KURS_ERC;   
                }
                elseif($price_diler > 1000)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_1000_)*KURS_ERC;   
                }
                else
                {
                    $price_final = 0;   
                }
            }
            else
            {            
                if($price_diler > 0 AND $price_diler <= 700)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_0_50);   
                }
                elseif($price_diler > 700 AND $price_diler <= 1400)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_50_100);   
                }
                elseif($price_diler > 1400 AND $price_diler <= 2800)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_100_200);   
                }
                elseif($price_diler > 2800 AND $price_diler <= 7000)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_200_500);   
                }
                elseif($price_diler > 700 AND $price_diler <= 14000)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_500_1000);   
                }
                elseif($price_diler > 14000)
                {
                    $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI_1000_);   
                }
                else
                {
                    $price_final = 0;   
                }  
            }

/*           
            $cena_x = $price_rozn/KURS_BEZN;
            if($cena_x > $price_diler) // грн
            {
                $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI)*KURS_USD;
                if($price_final < $price_rozn)
                {
                    $price_final = $price_rozn;
                }
            }
            else // у.е.
            {
                $price_final = ($price_rozn + $price_rozn/100*PROCENT_NADBAVKI)*KURS_USD;
            }
*/
            
        }
        elseif($postavschik == "mti")
        {
            $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI)*KURS_USD;
        }
        elseif($postavschik == "dtr")
        {
            $price_final = ($price_diler + $price_diler/100*PROCENT_NADBAVKI)*KURS_USD;
        }
        elseif($postavschik == "mkr")
        {
           $price_final = $price_diler; //($price_rozn + $price_rozn/100*PROCENT_NADBAVKI)*KURS_USD;
        }
        else
        {
            $price_final = $price_diler;   
        }
SYS::varDump($price_final,__FILE__,__LINE__,"PRICE_FINAL");
         return round($price_final);
    }

    
///////////////////////////////////    
    
    static function backupAllTables()
    {
// Создание Бэкапа перед заливкой нового прайса
        $file=$_SERVER['DOCUMENT_ROOT']."/price/Dump_BD/dump_".date("Y-m-d_H-i").".sql";
        if(!file_exists($file))  //если файла нету... тогда
        {
            $fp = fopen($file, "w"); // создаем файл
            fclose ($fp);
        }
        mysql::backupTables($file);  // CООБВЕННО БЭКАПИМ
// /Создание Бэкапа перед заливкой нового прайса
    }

    static function updateAllFields($postavschik)
    {
        $query = "UPDATE `".TABLE_ITEMS."` SET `style`='arch', `volume`='arch' WHERE `postavschik`='{$postavschik}'";
        $res = mysql_query($query);
    }

    static function getOldKodFromDB($val)
    {
        $select="1Cid";
        $from="shop_product";
        $where = "`postavschik` = '{$val}'";

        $db = new mysql;
        $row = $db->origSelectSQL($select, $from, $where, "", "");
//SYS::varDump($row,__FILE__,__LINE__);
        return $row;
            
    }

    static function newFileAboutEmptyConnect($item_kod,$item_caption)
    {
	$folder = "/home/tov-sov/data/www/mkr.kiev.ua/price/stek/".date("Y_m_d");
	if(!file_exists($folder))
	{
            mkdir($folder, 0755);		    
	}
	$file_new = "{$folder}/new_items.html";
        if(!file_exists($file_new))
	{
            $fn = fopen($file_new, "w");		    
	}
        else
        {  
	    $fn = fopen($file_new, "a");
        }
        fwrite($fn, "<div style='border:1px solid #eee;padding:5px;'><a href='http://mkr.kiev.ua/cms/?mod=shop&com=product&prodid={$item_kod}' target='_blank'>{$item_kod}</a> - {$item_caption}</div><div style='height:5px'></div>");
        
        fclose ($fn);
    }


    
}

?>
