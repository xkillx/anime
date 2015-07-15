<?php
/**
* 
*/
class anime
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}

	public function tambah_kategori($post)
	{
		$judul 		= $post['judul'];
		$keterangan = $post['keterangan'];
		$cover 		= $post['cover'];
		$year 		= $post['year'];
		$query = "INSERT INTO `kategori` 
		(
			`judul`, 
			`keterangan`, 
			`cover`, 
			`year`
		)
		VALUES 
		(
			:judul, 
			:keterangan, 
			:cover, 
			:year
		);";
		$this->obj->query($query);
		$this->obj->bind(':judul',$judul);
		$this->obj->bind(':keterangan',$keterangan);
		$this->obj->bind(':cover',$cover);
		$this->obj->bind(':year',$year);
		$this->obj->execute();
		header("Location: ./?halaman=tambah_kategori");
	}


	public function semua_kategori()
	{
		$query = "SELECT * FROM kategori ORDER BY judul ASC";
		$this->obj->query($query);
		$rows = $this->obj->resultset();
		return $rows;
	}

	public function tambah_episode($post)
	{		
		$title 				= $post['title'];
		$date 				= date("Y-m-d H:i:s");
		$content 			= $post['content'];
		$kategori_id 		= $post['kategori_id'];
		$query = "INSERT INTO `episode` 
		(
			`title`, 
			`content`, 
			`date`, 
			`kategori_id`
		)
		VALUES 
		(
			:title, 
			:content, 
			:date, 
			:kategori_id
		);";
		$this->obj->query($query);
		$this->obj->bind(':title',$title);
		$this->obj->bind(':content',$content);
		$this->obj->bind(':date',$date);
		$this->obj->bind(':kategori_id',$kategori_id);
		$this->obj->execute();
		header("Location: ./?halaman=tambah_episode");
	}
	public function totalKategori()
	{
		$query = "SELECT * FROM `kategori`";
		$this->obj->query($query);
		$this->obj->execute();
		$datas	=	$this->obj->rowCount();
		return $datas;
	}

	public function listCategories($get)
	{
		$get = $get - 1;
		$offset = $this->per_halaman * $get;
		$offset = "OFFSET {$offset}";
		$query 		= "SELECT * FROM `kategori` ORDER BY `judul` ASC LIMIT {$this->per_halaman} {$offset}";
		$this->obj->query($query);
		$this->obj->execute();
		$datas		=	$this->obj->resultset();
		return $datas;
	}

}