<table width="560" border="0" cellspacing="0" cellpadding="0">
  	<tr>
    	<td height="40" style="border-bottom:1px solid #333; background:url(images/toplist-content.gif) repeat-x; padding-bottom:5px; font-weight:bold">
		    <a href="index.php"><img src="images/Home.gif" width="16" height="16" border="0"></a>
		    <img src="images/towred1-r.gif" width="16" height="9">
		    <a href="?b=nsp&idn=<?php echo $loai_san_pham->id_nhom; ?>"><?php echo $loai_san_pham->tennhom; ?></a>      
		    <img src="images/towred1-r.gif" width="16" height="9">
		    <a href="?b=lsp&idl=<?php echo $loai_san_pham->id_loai; ?>"><?php echo $loai_san_pham->tenloaisp; ?></a>        
    	</td>
  	</tr>
</table>

<table width="560" border="0" cellspacing="0" cellpadding="0">
  	<tr>	
    	<td bgcolor="#565656" style="padding-left:5px; width:550px; height:30px; text-align: center;" ><a  style="color: #fff; font-size:13px; font-weight:bold"><?php echo $loai_san_pham->tenloaisp;?></a></td>
  	</tr> 
  	<tr>
  		<td align="center" style="padding-left:5px; border-left:1px solid #CCCCCC;border-right:1px solid #CCCCCC" >
  			<?php foreach ($san_pham as $sp){
  				$gia = number_format($sp->gia,0,'','.');
  			?>
 			<div class=divshow>
			<table width=175 height=220 border=0 cellspacing=0 cellpadding=0 background="images/box.gif" style="border:1px dotted #999">
			  	<tr>
					<td height=170><a href=?b=ct&id=<?php echo $sp->id ?>&idl=<?php echo $sp->id_loai;?>><img src='images/spsmall/<?php echo $sp->hinh ?>' width=170px height=170 border=0> </a></td>
			  	</tr>
			  	<?php 
			  	if ($sp->ghichu == "new")
			  	{?>
			  		<tr>
					<td height=25 style='font-size:12px; color:white'>
						<a style='color:red;' href='?b=ct&id=<?php echo$sp->id?>&$idl=<?php echo $sp->id_loai ?>'> <strong><?php echo $sp->tensp ?></strong>
						</a><img src='images/new.gif'></td>
			  		</tr>
			  	<?php 
			  	}else{
			  	?>
			  		<tr>
					<td height=25 style='font-size:12px; color:white'> 
						<a style='color:red;' href='?b=ct&id=<?php echo $sp->id?>&$idl=<?php echo $sp->id_loai ?>'> <strong><?php echo $sp->tensp ?></strong>
						</a> </td>
			  		</tr>
			  	<?php
			  	}
			  	?>
			  	<tr>
					<td height=25>Giá: <strong><u><?php echo $gia ?></u></strong></td>
			  	</tr>
			</table>		
			</div>
			<?php } ?>
  		</td>
  	</tr>
</table>

<div style="clear:both; padding: 10px;"></div>
    <div align="center"><?php echo $lst; ?></div>
</div>