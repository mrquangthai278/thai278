<?php
require_once("database.php");
class M_san_pham extends database
{
	public function hien_thi_san_pham_moi($vt=-1,$limit=-1)
	{
		$sql="SELECT * FROM sanpham WHERE ghichu='new' order by id";
		if($vt>=0 && $limit>0)
		{
			$sql.=" limit $vt,$limit";
		}
		$this->setQuery($sql);
		return $this->loadAllrows();
	}

	public function hien_thi_menu_trai()
	{
		$sql="SELECT nhom.*, GROUP_CONCAT(loai.id_loai,':', loai.tenloaisp) AS LoaiSanPham FROM nhomsanpham nhom INNER JOIN loaisanpham loai ON nhom.id_nhom = loai.id_nhom GROUP BY nhom.tennhom desc";
		$this->setQuery($sql);
		return $this->loadAllrows();
	}

	public function hien_thi_chi_tiet_san_pham($id)
	{
		$sql="SELECT sp.*, nhom.*, loai.* FROM sanpham sp, loaisanpham loai, nhomsanpham nhom WHERE sp.id_loai = loai.id_loai AND loai.id_nhom= nhom.id_nhom AND sp.id= $id";
		$this->setQuery($sql);
		$param=array($id);
		return $this->loadRow($param);
	}

	public function hien_thi_san_pham_cung_loai($idl,$id)
	{
		$sql="SELECT * from sanpham where id_loai = $idl  and id != $id order by rand() limit 0,3";
		$this->setQuery($sql);
		$param=array($idl);
		$param1=array($id);
		return $this->loadAllrows($param,$param1);	
	}

	public function hien_thi_san_pham_theo_loai($idl,$vt=-1,$limit=-1)
	{
		$sql="SELECT * from sanpham where id_loai = $idl order by ghichu desc";
		if($vt>=0 && $limit>0)
		{
			$sql.=" limit $vt,$limit";
		}
		$this->setQuery($sql);
		$param=array($idl);
		return $this->loadAllrows($param);	
	}

	public function hien_thi_loai_nhom_theo_id_loai($idl)
	{
		$sql="SELECT loai.*, nhom.* from loaisanpham loai, nhomsanpham nhom where loai.id_nhom= nhom.id_nhom and loai.id_loai = $idl";
		$this->setQuery($sql);
		$param=array($idl);
		return $this->loadRow($param);
	}

	public function hien_thi_loai_theo_id_nhom($idn)
	{
		$sql="SELECT * from loaisanpham where id_nhom=$idn";
		$this->setQuery($sql);
		$param=array($idn);
		return $this->loadAllrows($param);	
	}

	public function hien_thi_nhom_theo_id($idn)
	{
		$sql="SELECT * from nhomsanpham where id_nhom=$idn";
		$this->setQuery($sql);
		return $this->loadRow();
	}

	public function hien_thi_san_pham_theo_nhom($idn)
	{
		$sql="SELECT sp.*,loai.*,nhom.* from sanpham sp,nhomsanpham nhom, loaisanpham loai where loai.id_nhom=nhom.id_nhom and loai.id_loai=sp.id_loai and nhom.id_nhom= $idn";
		$this->setQuery($sql);
		$param=array($idn);
		return $this->loadAllrows($param);
	}

	public function hien_thi_san_pham_theo_loai2($idl)
	{
		$sql="SELECT * from sanpham where id_loai=$idl order by rand() limit 6";
		$this->setQuery($sql);
		$param=array($idl);
		return $this->loadAllRows($param);
	}

	public function hien_thi_san_pham_theo_loai_trong_nhom($idn)
	{
		$sql="SELECT loai.*, GROUP_CONCAT(sp.id,':',sp.tensp,':',sp.hinh,':',sp.gia,':',sp.ghichu) as SanPham from loaisanpham loai inner join sanpham sp on sp.id_loai = loai.id_loai where loai.id_nhom = $idn group by loai.tenloaisp";
		$this->setQuery($sql);
		$param=array($idn);
		return $this->loadAllrows($param);
	}
}
?>