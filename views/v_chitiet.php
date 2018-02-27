<div style="width:560px">
<table width="560" border="0" cellspacing="0" cellpadding="0">
<tr>
  <td height="33" width="448" style="background-color:#565656; padding-left:30px; color:#FFF; font-size:16px; font-weight:bold">THÔNG TIN SẢN PHẨM</td> 
  <td width="112" height="33"><img src="images/bgtitle.jpg" width="112" height="33"></td>
</tr>
</table>

<table width="560" border="0" cellspacing="0" cellpadding="0">
<tr>
  <td colspan="3" height="40" style="border-bottom:1px solid #333; background:url(images/toplist-content.gif) repeat-x; font-weight:bold">
    <a href="index.php"><img src="images/Home.gif" width="16" height="16" border="0"></a>
    <img src="images/towred1-r.gif" width="16" height="9">
    <a href="?b=nsp&idn=<?php echo $loai_san_pham->id_nhom; ?>"><?php echo $san_pham->tennhom; ?></a>      
    <img src="images/towred1-r.gif" width="16" height="9">
    <a href="?b=lsp&idl=<?php echo $loai_san_pham->id_loai; ?>"><?php echo $san_pham->tenloaisp; ?></a> 
    <img src="images/towred1-r.gif" width="16" height="9">
  	<a><?php echo $san_pham->tensp; ?></a>
  </td>
</tr>

<tr>
  <td width="220" rowspan="7" align="center" valign="top">
    <div onclick="var win=window.open('zoom.php?id=<?php echo $san_pham->id; ?>', 'open_window', 'width=405, height=530, left=0, top=0')">
    <p><img src="images/spsmall/<?php echo $san_pham->hinh; ?>" width="170" height="170"><br/><strong>Click để phóng to</strong></p>
    <p>&nbsp;</p>
    </div>
  <form method="post" name="form">
    <input type="hidden" name="dathang" />
    <input type="hidden" value=<?php echo "$id"; ?> name="catid" /> 
    <input type="hidden" name="gia" value="<?php echo "$gia"; ?>" /> 

<?php 
if(isset($_SESSION["user"]))
  {echo"<a onClick=\"document.form.submit();\"><img src=\"images/chovaogiohang.jpg\" width=\"151\" height=21 border=0></a>";}
else
	{echo "<a href=\"index.php?b=gh&id=$id&g=$gia\"><img src=\"images/chovaogiohang.jpg\" width=\"151\" height=21 border=0></a>";}
?>

  </form></td>
    <td width="120" height="25" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Mã sản phẩm:</td>
    <td width="220" style="border-bottom:1px dotted #666; padding-left:5px"><span style="font-size:18px; color:#00F; font-weight:bold"><?php echo $san_pham->tensp ?></span></td>
</tr>

<tr>
  <td height="25" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Giá:</td>
  <td style="border-bottom:1px dotted #666; padding-left:5px"><font color="#FF0000"><strong><?php echo "$gia2 VND"; ?></font></strong></td>
</tr>

<tr>
  <td height="25" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Thuế VAT:</td>
  <td style="border-bottom:1px dotted #666; padding-left:5px"><font color="#FF0000">Giá trên chưa bao gồm thuế</font></td>
</tr>

<tr>
  <td height="25" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Bảo hành:</td>
  <td style="border-bottom:1px dotted #666; padding-left:5px">12 tháng.</td>
</tr>

<tr>
  <td height="40" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Vận chuyển:</td>
  <td style="border-bottom:1px dotted #666; padding-left:5px">Giao hàng toàn quốc</td>
</tr>

<tr>
  <td height="40" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Thời gian <br />
    giao hàng:</td>
  <td style="border-bottom:1px dotted #666; padding-left:5px"><strong>7 ngày</strong> sau khi đặt hàng</td>
</tr>

<tr>
  <td height="70" style="padding-left:20px; border-bottom:1px dotted #666; border-right:1px dotted #666">Hình thức<br>thanh toán:</td>
  <td style="padding-left:5px"><p>Nhận tiền sau khi giao hàng</p></td>
  <td align="justify" colspan="3" style="border-bottom:1px solid #333; padding-bottom:5px; color:#F00"></td>
</tr>
</table>

<table width="560" border="0" cellspacing="0" cellpadding="0" style="padding-top:5px;">
<tr>
	<td>
  <div id="TabbedPanels1" class="TabbedPanels">
	  <ul class="TabbedPanelsTabGroup"><li class="TabbedPanelsTab" tabindex="0">Mô tả sản phẩm</li></ul>      
    <div class="TabbedPanelsContentGroup">
      <div class="TabbedPanelsContent">
        <table width="552" border="0" cellspacing="0" cellpadding="0">
          <?php
          if ($san_pham->mota =="") {echo "<strong>Đang cập nhật</strong>";}
          else {echo "<tr><td style='line-height:25px'>$san_pham->mota</td></tr>";}
          ?>
        </table>
      </div>
     </div>
   </div>
  </td>  
</tr>
</table>

<table width="560" border="0" cellspacing="0" cellpadding="0" style="padding-top:5px;">
<tr>
<td>
<div id="TabbedPanels1" class="TabbedPanels">
  <ul class="TabbedPanelsTabGroup"><li class="TabbedPanelsTab" tabindex="0"><font color="#FFFFFF">Sản phẩm cùng loại</font></li></ul>
     <div class="TabbedPanelsContentGroup">       
      <div class="TabbedPanelsContent2">
      <table width="550" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>    
          <?php
            if (count($san_pham_cung_loai) <= 0) {echo "<strong>Đang cập nhật</strong>";}
            else{
              foreach($san_pham_cung_loai as $spl){
              $gia3=number_format($spl->gia,0,'','.');
          ?>       
            <div class=divshow2>
            <table width=175 height=220 border=0 cellspacing=0 cellpadding=0 background="images/box.gif" style="border:1px dotted #999">
              <tr>
                <td height=170><a href=?b=ct&id=<?php echo $spl->id?>&idl=<?php echo $spl->id_loai?>><img src='images/spsmall/<?php echo $spl->hinh?>' width=170px height=170 border=0> </a></td>
              </tr>
              <tr>
                <td height=25 style="font-size:14px; color:#F00"><strong><?php echo $spl->tensp ?></strong></td>
              </tr>
              <tr>
                <td height=25>Giá: <strong><u><?php echo $gia3 ?></u></strong></td>
              </tr>
            </table>    
            </div>
          <?php
              }
            }
          ?>
          </td>
        </tr>
      </table>
      </div>
      </div>
    </div>
</td>  
</tr>
</table>

<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>

