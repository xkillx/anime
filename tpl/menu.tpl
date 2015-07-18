<?php
global $group;
global $link;
$listlink 	= $link->listLink();
$listGroup 	= $group->listGroup();
?>


<?php if( isset($_GET['action'])):
global $menu;
$menus 	=	$menu->menuBygroup($_GET['group_id']);
?>
<div class="row">
<div class="col-sm-12">
<!-- Panel -->
<div class="panel panel-default">
  <div class="panel-heading">Edit <?php echo $group->GroupName($_GET['group_id']);?> Menu<div class="pull-right"><a href="" data-toggle="modal" data-target="#myModal" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus"></i> Tambah Link</a></div></div>
	<table class="table table-hover table-condensed table-bordered table-striped bg-white">
		<thead>
			<tr>
				<th>Name</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($menus as $value):?>
				<tr>
					<td><?php echo $link->LinkName($value->link_id);?></td>
					<td style="width:100px;"><a href=""><i class="fa fa-pencil"></i> Delete Link</a></td>
				</tr>
			<?php endforeach;?>
		</tbody>
	</table>
</div>
<!-- Panel -->
</div>
</div>



<form class="form-horizontal" method="POST" action="./?halaman=menu&action=edit&group_id=<?php echo $_GET['group_id'];?>">
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Tambah Menu</h4>
      </div>
      <div class="modal-body">

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">link</label>
    <div class="col-sm-10">
        <select  name="link_id" class="cari form-control">
      <option>-------- Pilih Link --------</option>
      <?php foreach($listlink as $link):?>
        <option value="<?php echo $link->id;?>"><?php echo $link->name;?></option>
      <?php endforeach;?>
    </select>
    <input type="hidden" name="group_id" value="<?php echo $_GET['group_id'];?>">
    </div>
  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
        <input type="submit" value="Tambah" name="tambah_menu" class="btn btn-primary">
      </div>
    </div>
  </div>
</div>

        </form>
<?php endif;?>


<div class="row">

<div class="col-sm-12">
<!-- Panel -->
<div class="panel panel-default">
  <div class="panel-heading">Daftar Menu</div>

<table class="table table-hover table-condensed table-bordered table-striped bg-white">
	<thead>
		<tr>
			<th>Group</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($listGroup as $value):?>
			<tr>
				<td><?php echo $value->name;?></td>
				<td style="width:100px;"><a href="./?halaman=menu&action=edit&group_id=<?php echo $value->id;?>"><i class="fa fa-pencil"></i> Edit Menu</a></td>
			</tr>
		<?php endforeach;?>
	</tbody>
</table>
</div>
<!-- Panel -->
</div>

</div>
