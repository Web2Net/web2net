<?$price_roznica = Price::getPrice($val['postavschik'],$val['price_roznica'],$val['price_diler'],$val['p1']);
  $dp=explode(".",$price_roznica);?>
        
        <table class="price" style="margin-right:0px">
			<tr>
				<td style="height:100px;margin-bottom:12px;padding-right:20px;" valign="bottom" align="center">
<?if($price_roznica!=0){?>
				    <div style="margin-bottom:12px;font-size:300%;"><?=NOTE_PRICE?> 

                        <span><?=$dp[0]?>.<font><?=$dp[1]?></font>&nbsp;<?=CURRENCY?></span>
<?}else{?>
                        <span><?=MANDATORY_NOTE_ON_REQUEST?></span> 
<?}?>
                    </div>
                </td>
			    <td style="width:50%;" valign="bottom">
                    <div class="buy" id="cartButton_<?=$val["id"]?>">
                        <input class="r20" name="incart" type="submit" value="<?=NOTE_IN_CART?>" style="text-align:center;padding-left:0;" onClick="inCart2(<?=$val["id"]?>,1)" />
                        <div style="display:none;margin-top:3px;">
                            <a href="/cart/buy">
                                <img class="r10" src="/design/img/mobi/ico_ok.png" style="margin:-4px 4px 7px 0px;" />
                                <div class="desc3 font_red"><?=SHOP_SITE_NOTE_ITEM_IN_CART?></div>
                            </a>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    
