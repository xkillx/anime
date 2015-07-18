<?php
/**
* 
*/
class group
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}


	public function listGroup()
	{
		$query = "SELECT * FROM `group`";
		$this->obj->query($query);
		$this->obj->execute();
		$rows = $this->obj->resultset();
		return $rows;
	}



	public function GroupName($groupid)
	{
		$query = "SELECT * FROM `group` WHERE `id` = :groupid";
		$this->obj->query($query);
		$this->obj->bind(':groupid',$groupid);
		$this->obj->execute();
		$datas		=	$this->obj->single();
		return $datas->name;
	}


}