<table width="560" border="0" cellspacing="0" cellpadding="0">
<tr>
	<td height="40" style="border-bottom:1px solid #333; background:url(../images/toplist-content.gif) repeat-x; padding-bottom:5px;text-align: center;font-weight:bold"><font color="#FF0000">NHỮNG SẢN PHẨM MỚI </font><img src="images/new.gif" /></td>
</tr>
</table>

<?php 
foreach($san_pham as $sp){
	$gia2 = number_format($sp->gia,0,'','.');
?>
<div class=divshow>
	<table width=175 height=220 border=0 cellspacing=0 cellpadding=0 background="images/box.gif" style="border:1px dotted #999">
	 	<tr>
			<td height=170><a href=?b=ct&id=<?php echo $sp->id?>&idl=<?php echo $sp->id_loai?>><img src='images/spsmall/<?php echo $sp->hinh?>' width=170px height=170 border=0></a></td>
	  	</tr>
	  	<tr>
			<td height=25 style="font-size:14px; color:#F00"><a href=?b=ct&id=<?php echo $sp->id?>&idl=<?php echo $sp->id_loai?> 	><strong><?php echo $sp->tensp?></strong></a></td>
	  	</tr>
	  	<tr>
			<td height=25>Giá: <strong><u><?php echo $gia2?> VND</u></strong></td>
	  	</tr>
	</table>		
</div>
<?php 
}
?>

<div style="clear:both; padding: 10px;"></div>
    <div align="center"><?php echo $lst; ?></div>
</div>