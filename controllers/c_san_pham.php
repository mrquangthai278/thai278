<?php
	session_start();
	include("models/m_san_pham.php");
	class C_san_pham
	{
		public function hien_thi_san_pham_moi()
		{
			//Models
			$m_san_pham = new M_san_pham();
			$san_pham = $m_san_pham->hien_thi_san_pham_moi();
			// Phân trang
			include("Pager.php");
			$p=new pager();
			$limit=12;
			$count=count($san_pham);
			$pages=$p->findPages($count,$limit);
			$vt=$p->findStart($limit);
			$curpage=$_GET["page"];
			$lst=$p->pageList($curpage,$pages);
			$san_pham=$m_san_pham->hien_thi_san_pham_moi($vt,$limit);
			//Views
			include("views/v_content.php");
		}

		public function hien_thi_menu_trai()
		{
			//Models
			$m_san_pham = new M_san_pham();
			$menu = $m_san_pham->hien_thi_menu_trai();
			//Views
			include("views/v_menu-left-or.php");
		}

		public function hien_thi_chi_tiet_san_pham()
		{	
			//Models
			$id=$_GET["id"];
			$idl=$_GET["idl"];	
			$m_san_pham = new M_san_pham();
			$san_pham = $m_san_pham->hien_thi_chi_tiet_san_pham($id);
			$san_pham_cung_loai = $m_san_pham->hien_thi_san_pham_cung_loai($idl,$id);
			$loai_san_pham = $m_san_pham->hien_thi_loai_nhom_theo_id_loai($idl);
			$gia2=number_format($san_pham->gia,0,'','.');		
			//Views
			include("views/v_chitiet.php");
		} 

		public function zoom_san_pham()
		{	
			//Models
			$id=$_GET["id"];
			$m_san_pham = new M_san_pham();
			$san_pham = $m_san_pham->hien_thi_chi_tiet_san_pham($id);
			//Views
			include("views/v_zoom.php");
		}

		public function hien_thi_san_pham_theo_loai()
		{	
			//Models
			$idl=$_GET["idl"];	
			$m_san_pham = new M_san_pham();
			$san_pham = $m_san_pham->hien_thi_san_pham_theo_loai($idl);	
			$loai_san_pham = $m_san_pham->hien_thi_loai_nhom_theo_id_loai($idl);
			// Phân trang
			include("Pager.php");
			$p=new pager();
			$limit=9;
			$count=count($san_pham);
			$pages=$p->findPages($count,$limit);
			$vt=$p->findStart($limit);
			$curpage=$_GET["page"];
			$option="&b=lsp&idl=$idl";
			$lst=$p->pageList($curpage,$pages,$option);
			$san_pham=$m_san_pham->hien_thi_san_pham_theo_loai($idl,$vt,$limit);
			//Views
			include("views/v_loaisp.php");
		}

		public function hien_thi_san_pham_theo_nhom()
		{	
			//Models
			$idn=$_GET["idn"];	
			$m_san_pham = new M_san_pham();
			$nhom_san_pham = $m_san_pham->hien_thi_nhom_theo_id($idn);	
			$loai_san_pham = $m_san_pham->hien_thi_san_pham_theo_loai_trong_nhom($idn);				
			//Views
			include("views/v_nhomsp.php");
		}  
	}
?>