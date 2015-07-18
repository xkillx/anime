<?php
global $link;
$listlink 	= $link->listLink();
?>

<div class="row">

<div class="col-sm-12">
<div class="panel panel-default">
<div class="panel-heading">
	Daftar Link 
	<div class="pull-right">
		<a href="" data-toggle="modal" data-target="#myModal" data-backdrop="static" data-keyboard="false">
			<i class="fa fa-plus"></i> 
			Tambah Link
		</a>
	</div>
</div>
<table class="table table-hover table-condensed table-bordered table-striped bg-white">
	<head>
		<tr>
			<th>Name</th>
			<th>url</th>
			<th>Action</th>
		</tr>
	</head>
	<tbody>
		<?php foreach ($listlink as $value):?>
			<tr>
				<td><?php echo $value->name;?></td>
				<td><?php echo $value->url;?></td>
				<td style="width:100px;"><a href=""><i class="fa fa-pencil"></i> Edit Group</a></td>
			</tr>
		<?php endforeach;?>
	</tbody>
</table>




<form class="form-horizontal" method="POST" action="./?halaman=link">
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
		      	<label for="name" class="col-sm-2 control-label">Name</label>
		      <div class="col-sm-10">
		      	<input type="text" name="name" value="" class="form-control" placeholder="Name">
		      </div>
	      </div>
	      <div class="form-group">
		      	<label for="url" class="col-sm-2 control-label">Url</label>
		      <div class="col-sm-10">
		      	<input type="text" name="url" value="" class="form-control" placeholder="url">
		      </div>
	      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
        <input type="submit" value="Tambah" name="tambah_link" class="btn btn-primary">
      </div>
    </div>
  </div>
</div>
</form>

</div>





</div>

</div>