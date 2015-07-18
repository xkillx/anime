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
		$type 		= $post['type'];
		$status 	= $post['status'];
		$producers 	= $post['producers'];
		$genres 	= $post['genres'];
		$duration 	= $post['duration'];
		$english 	= $post['english'];
		$synonyms 	= $post['synonyms'];
		$japanese 	= $post['japanese'];
		$indonesian = $post['indonesian'];
		$hit 		= '1';
		$query = "INSERT INTO `kategori` 
		(
			`judul`, 
			`keterangan`, 
			`cover`, 
			`year`, 
			`type`, 
			`status`, 
			`producers`, 
			`genres`, 
			`duration`, 
			`english`, 
			`synonyms`, 
			`japanese`, 
			`indonesian`, 
			`hit`
		)
		VALUES 
		(
			:judul, 
			:keterangan, 
			:cover, 
			:year, 
			:type, 
			:status, 
			:producers, 
			:genres, 
			:duration, 
			:english, 
			:synonyms, 
			:japanese, 
			:indonesian, 
			:hit
		);";
		$this->obj->query($query);
		$this->obj->bind(':judul',$judul);
		$this->obj->bind(':keterangan',$keterangan);
		$this->obj->bind(':cover',$cover);
		$this->obj->bind(':year',$year);
		$this->obj->bind(':type',$type);
		$this->obj->bind(':status',$status);
		$this->obj->bind(':producers',$producers);
		$this->obj->bind(':genres',$genres);
		$this->obj->bind(':duration',$duration);
		$this->obj->bind(':english',$english);
		$this->obj->bind(':synonyms',$synonyms);
		$this->obj->bind(':japanese',$japanese);
		$this->obj->bind(':indonesian',$indonesian);
		$this->obj->bind(':hit',$hit);
		$this->obj->execute();
		header("Location: ./?halaman=tambah_kategori");
	}

	public function kategoriDetail($kategori_id)
	{
		$query = "SELECT * FROM kategori WHERE id = :kategori_id";
		$this->obj->query($query);
		$this->obj->bind(':kategori_id',$kategori_id);
		$this->obj->execute();
		$rows = $this->obj->single();
		return $rows;
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
		$kualitas 			= $post['kualitas'];
		$size 				= $post['size'];
		$source 			= $post['source'];
		$mirror 			= $post['mirror'];
		$password 			= $post['password'];
		$hit 				= 1;
		$query = "INSERT INTO `episode` 
		(
			`title`, 
			`content`, 
			`date`, 
			`kategori_id`, 
			`kualitas`, 
			`size`, 
			`source`, 
			`mirror`, 
			`password`, 
			`hit`
		)
		VALUES 
		(
			:title, 
			:content, 
			:date, 
			:kategori_id, 
			:kualitas, 
			:size, 
			:source, 
			:mirror, 
			:password, 
			:hit
		);";
		$this->obj->query($query);
		$this->obj->bind(':title',$title);
		$this->obj->bind(':content',$content);
		$this->obj->bind(':date',$date);
		$this->obj->bind(':kategori_id',$kategori_id);
		$this->obj->bind(':kualitas',$kualitas);
		$this->obj->bind(':size',$size);
		$this->obj->bind(':source',$source);
		$this->obj->bind(':mirror',$mirror);
		$this->obj->bind(':password',$password);
		$this->obj->bind(':hit',$hit);
		$this->obj->execute();
		$id = $this->obj->lastInsertId();
		$this->googl("episode",$id);
		header("Location: ./?halaman=tambah_episode");
	}

	public function semuaEpisode($kategori_id)
	{
		$query = "SELECT * FROM `episode` WHERE `kategori_id` = :kategori_id ORDER BY title";
		$this->obj->query($query);
		$this->obj->bind(':kategori_id',$kategori_id);
		$this->obj->execute();
		$datas		=	$this->obj->resultset();
		return $datas;
	}


	public function googl($type,$id)
	{
		$googl = getgoogl("http://localhost/anime/?halaman=detail_kategori&kategori_id=".$id);
		$query = "UPDATE `{$type}` SET
					`short_link` = :googl
					WHERE `id` = :id";
		$this->obj->query($query);
		$this->obj->bind(':id',$id);
		$this->obj->bind(':googl',$googl);
		$this->obj->execute();

	}

	public function jumlahEpisode($kategori_id)
	{
		$query = "SELECT * FROM `episode` WHERE `kategori_id` = :kategori_id ORDER BY title";
		$this->obj->query($query);
		$this->obj->bind(':kategori_id',$kategori_id);
		$this->obj->execute();
		$datas	=	$this->obj->rowCount();
		return $datas;
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