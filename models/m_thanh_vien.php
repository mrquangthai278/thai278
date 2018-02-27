<?php
require_once("database.php");
class M_thanh_vien extends database
{
	public function dang_ky($hoten,$diachi,$email,$dienthoai,$user,$pass)
	{
		$sql="INSERT into thanhvien(hoten,diachi,email,dienthoai,user,pass,hieuluc,capquyen) values('$hoten','$diachi','$email','$dienthoai','$user','$pass',1,3)";
		$this->setQuery($sql);
		$result = $this->execute(array($hoten,$diachi,$email,$dienthoai,$user,$pass));
		if ($result){
			return true;
		}
		else{
			return false;
		}
	}

	public function kt_dk_user($gettendangnhap)
	{
		$sql="SELECT * From thanhvien where user= '$gettendangnhap'";
		$this->setQuery($sql);
		$param = array($gettendangnhap);
		return $this->loadRow($param);
	}
}
?>