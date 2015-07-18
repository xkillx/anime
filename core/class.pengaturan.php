<?php
/**
* 
*/
class pengaturan
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}

	public function tos()
	{
		$query = "SELECT * FROM `pengaturan` WHERE `name` = 'tos'";
		$this->obj->query($query);
		$this->obj->execute();
		$row	=	$this->obj->single();
		return $row->value;
	}

}