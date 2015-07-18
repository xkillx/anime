<?php
/**
* 
*/
class link
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}


	public function listLink()
	{
		$query = "SELECT * FROM `link`";
		$this->obj->query($query);
		$this->obj->execute();
		$rows = $this->obj->resultset();
		return $rows;
	}

	public function LinkName($link_id)
	{
		$query = "SELECT * FROM `link` WHERE `id` = :link_id";
		$this->obj->query($query);
		$this->obj->bind(':link_id',$link_id);
		$this->obj->execute();
		$datas		=	$this->obj->single();
		return $datas->name;
	}

	public function tambah_link($post)
	{
		$name 	= $post['name'];
		$url 	= $post['url'];
		$query 	= "INSERT INTO `link` 
		(
			`name`, 
			`url`
		)
		VALUES 
		(
			:name, 
			:url
		);";
		$this->obj->query($query);
		$this->obj->bind(':name',$name);
		$this->obj->bind(':url',$url);
		$this->obj->execute();
		header("Location:./?halaman=link");
	}

}