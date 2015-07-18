<?php
/**
* 
*/
class pengguna
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}

	public function tambah_pengguna($post)
	{
		$username = $post['username'];
		$password = create_hash($post['password']);
		$query = "INSERT INTO `pengguna` 
		(
			`username`, 
			`password`)
		VALUES 
		(
			:username, 
			:password
		);";
		$this->obj->query($query);
		$this->obj->bind(':username',$username);
		$this->obj->bind(':password',$password);
		$this->obj->execute();
		header("Location: ./?halaman=login");
	}

	public function cek_pengguna($post)
	{
		$username = $post['username'];
		$query = "SELECT * FROM `pengguna` WHERE `username` = :username";
		$this->obj->query($query);
		$this->obj->bind(':username',$username);
		$this->obj->execute();
		$datas	=	$this->obj->rowCount();
		return $datas;

	}

	public function valid_pengguna($post)
	{
		if($this->cek_pengguna($post) <= 0):
			header("Location:./?halaman=register");
		else:
			$username = $post['username'];
			$password = $post['password'];
			$query = "SELECT * FROM `pengguna` WHERE `username` = :username";
			$this->obj->query($query);
			$this->obj->bind(':username',$username);
			$this->obj->execute();
			$datas	=	$this->obj->single();
			$hash	=	validate_password($password, $datas->password);
			if($hash == 1):
				$_SESSION['group'] 			= $datas->group;
				$_SESSION['pengguna_id'] 	= $datas->id;
				header("Location: ./?halaman=profile");
			else:
				echo "
					<div class=\"alert alert-warning\"> Username/Password yang anda masukan salah. silakan <a href=\"./?halaman=login\">login</a> kembali</div>
				";
			endif;
		endif;
	}

	public function penggunaName($pengguna_id)
	{
		$query = "SELECT * FROM `pengguna` WHERE `id` = :pengguna_id";
		$this->obj->query($query);
		$this->obj->bind(':pengguna_id',$pengguna_id);
		$this->obj->execute();
		$datas	=	$this->obj->single();
		if(empty($datas->nice_name)):
			return $datas->username;
		else:
			return $datas->nice_name;
		endif;

	}
}