<?php
global $link;
$listlink 	= $link->listLink();
?>

<div class="row">

<div class="col-sm-12">

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

</div>

</div>