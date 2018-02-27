<div id="fix">
<table width="560" border="0" cellspacing="0" cellpadding="0">
  	<tr>
    	<td height="40" style="border-bottom:1px solid #333; background:url(images/toplist-content.gif) repeat-x; padding-bottom:5px; font-weight:bold">
    	<a href="index.php"><img src="images/Home.gif" width="16" height="16" border="0"></a>
    	<img src="images/towred1-r.gif" width="16" height="9">
    	<a href="?b=nsp&idn=<?php echo $nhom_san_pham->id_nhom; ?>"><?php echo "$nhom_san_pham->tennhom"; ?></a>        
    	</td>
  	</tr>
</table>

<?php 
	foreach($loai_san_pham as $loai){
?>
<table width="560" border="0" cellspacing="0" cellpadding="0">
  	<tr>	
    	<td style="padding-left:5px; width:550px; height:30px" background="images/bg_tieude3.jpg"><a href="?b=lsp&idl=<?php echo $loai->id_loai; ?>" style="color: #fff; font-size:14px; font-weight:bold"><?php echo $loai->tenloaisp;?></a></td>
  	</tr>
  	<tr>
  		<td align="center" style="padding-left:5px;"> 
  			<?php
  				// for($i=0;$i<3;$i++) {
          $san_pham = explode(',',$loai->SanPham);
  				foreach ($san_pham as $sp) {
            list($id, $tensp, $hinh, $gia, $ghichu) = explode(':', $sp);
            $gia2 = number_format($gia,0,'','.');
  			?>
  			<div class=divshow>
			<table width=175 height=220 border=0 cellspacing=0 cellpadding=0 background="images/box.gif" style="border:1px dotted #999">
			  	<tr>
					<td height=170><a href=?b=ct&id=<?php echo $id ?>><img src='images/spsmall/<?php echo $hinh?>' width=170px height=170 border=0> </a></td>
			  	</tr>
          <?php if($ghichu == "new") { ?>
			  	<tr>
					<td height=25 style="font-size:14px; color:#F00"><a href=?b=ct&id=<?php echo $id?> class=a-m><strong><?php echo "$tensp";?></strong></a><img src='images/new.gif'></td>
			  	</tr>
          <?php }else{?>
          <td height=25 style="font-size:14px; color:#F00"><a href=?b=ct&id=<?php echo $id?> class=a-m><strong><?php echo "$tensp";?></strong></a></td> 
          <?php } ?>
			  	<tr>
					<td height=25>Giá: <u><strong><?php echo "$gia2";?></strong></u></td>
			  	</tr>
			</table>		
			</div>
			<?php } ?>
		</td>
	</tr>
</table>

<?php
	}
?>
</div>

