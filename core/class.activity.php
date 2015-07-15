<?php
/**
* 
*/
class activity
{
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}

	public function totalHalaman()
	{
		$query = "SELECT *  FROM log_activity";
		$this->obj->query( 	$query	);
		$this->obj->execute();
		$datas	=	$this->obj->rowCount();
		return $datas;
	}



	public function activities($get)
	{
		if($get != 1):
			$offset = $this->per_halaman * $get;
			$offset = "OFFSET {$offset}";
		else:
			$offset = "";
		endif;
		$query = "SELECT * FROM `log_activity` ORDER BY `date` DESC LIMIT $this->per_halaman $offset";
		$this->obj->query( 	$query	);
		$this->obj->execute();
		$datas	=	$this->obj->resultset();
		return $datas;
	}

	public function namaKaryawan($id)
	{
		$query = "SELECT *  FROM employees WHERE id = :id";
		$this->obj->query( 	$query	);
		$this->obj->bind(':id',$id);
		$this->obj->execute();
		$data = $this->obj->single();
		$fulname = $data->employee_fname . " " . $data->employee_lname;
		return $fulname;
	}

	public function detailAktipitas($id)
	{
		$query = "SELECT *  FROM log_activity WHERE id = :id";
		$this->obj->query( 	$query	);
		$this->obj->bind(':id',$id);
		$this->obj->execute();
		$data = $this->obj->single();
		return $data;
	}
}
