<?php
/**
* 
*/
class menu
{
	
	protected $obj;
	protected $per_halaman	=	80;
	function __construct($obj)
	{
		$this->obj 	=	$obj;
	}

	public function menuBygroup($group_id)
	{
		$query = "SELECT * FROM `menu` WHERE `group_id` = :group_id";
		$this->obj->query($query);
		$this->obj->bind(':group_id',$group_id);
		$this->obj->execute();
		$datas		=	$this->obj->resultset();
		return $datas;
	}

	public function tambah_menu($post)
	{
		$group_id 	= $post['group_id'];
		$link_id 	= $post['link_id'];
		$query = "INSERT INTO `menu` 
		(
			`group_id`, 
			`link_id`
		)
		VALUES 
		(
			:group_id, 
			:link_id
		);";
		$this->obj->query($query);
		$this->obj->bind(':group_id',$group_id);
		$this->obj->bind(':link_id',$link_id);
		$this->obj->execute();
		header("Location: ./?halaman=menu&action=edit&group_id=".$group_id);
	}

	public function menuByurl($group_id,$url)
	{		
		$query = "SELECT * FROM `menu` WHERE `group_id` = :group_id";
		$this->obj->query($query);
		$this->obj->bind(':group_id',$group_id);
		$this->obj->execute();
		$datas		=	$this->obj->resultset();
		foreach($datas as $data):
			$group[] = $data->link_id; 
		endforeach;
		if(empty($group)):
		$hgroup = 0;
		else:
		$hgroup = count($group);
		endif;
		if($hgroup >= 1):
			$query = "SELECT *FROM `link`WHERE id IN(".implode(",", $group).") AND url = :url";
			$this->obj->query($query);
			$this->obj->bind(':url',$url);
			$this->obj->execute();
			$datas		=	$this->obj->resultset();
			$hdata		=	count($datas);
			if($hdata >= 1):
				$return = 1;
			else:
				$return = 0;
			endif;
		else:
			$return = 0;
		endif;
		return $return;
	}
}