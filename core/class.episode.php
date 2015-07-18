<?php
/**
* 
*/
class episode
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
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
		$query = "UPDATE `{$type}` SET
					`short_link` = 'http://goo.gl/WmftUV'
					WHERE `id` = :id";
		$this->obj->query($query);
		$this->obj->bind(':id',$id);
		$this->obj->execute();

	}
	
}