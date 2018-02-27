<?php
require_once("database.php");
class M_lien_he extends database
{
	public function them_lien_he($hoten,$cty,$email,$dienthoai,$fax,$diachi,$noidung,$now)
	{
		$sql="INSERT into lienhe(hoten,cty,email,dienthoai,fax,diachi,noidung,ngaylienhe) values ('$hoten','$cty','$email','$dienthoai','$fax','$diachi','$noidung','$now')";
		$this->setQuery($sql);
		$result = $this->execute(array($hoten,$cty,$email,$dienthoai,$fax,$diachi,$noidung,$now));
		if ($result){
			return true;
		}
		else{
			return false;
		}
	}
}
?>