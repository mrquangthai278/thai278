<table width="195" border="0" cellspacing="0" cellpadding="0">
  	<tr>
    	<td style="height:35px" background="images/bgn_menu2.png">
    	<div align="left" style="color:#FFF; font-family:Tahoma; font-size: 14px; padding-left:30px;">DANH MỤC SẢN PHẨM</div></td>
  	</tr>
	<?php						
		foreach($menu as $mn){
	?>						
		<tr><td height=30 background='images/bg_menu.png' style="padding-left:30px">				
		<a href=?b=nsp&idn=<?=$mn->id_nhom?> style="color:#fff" onMouseOver="style.color='#ffcc00'" onMouseOut="style.color='#FFF'"><?php echo $mn->tennhom?></a></td></tr>
		<?php
			$loaisp = explode(',',$mn->LoaiSanPham);						
			foreach($loaisp as $loai){
				list($id_loai, $tenloaisp) = explode(':', $loai);
		?>
				<tr><td height=30 background='images/bg_menu42.png'><div style="padding-left:25px"><a href=?b=lsp&idl=<?=$id_loai?> style="color:#000" onMouseOver="style.color='#565656';" onMouseOut="style.color='#000'"><?=$tenloaisp?></a></div></td>
		<?php
			}
		?>
		</tr>
	<?php							
		}	
	?>
</table>