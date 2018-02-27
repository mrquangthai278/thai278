<?php
	session_start();
	include("models/m_lien_he.php"); 
	class C_lien_he
	{
		public function them_lien_he($hoten,$cty,$email,$dienthoai,$fax,$diachi,$noidung,$now)
		{
			$m_lien_he= new M_lien_he();
			$lien_he = $m_lien_he->them_lien_he($hoten,$cty,$email,$dienthoai,$fax,$diachi,$noidung,$now);
		}
	}
?>