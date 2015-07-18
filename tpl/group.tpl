<?php
global $group;
global $link;
$listlink 	= $link->listLink();
$listGroup 	= $group->listGroup();
?>

<div class="row">

<div class="col-sm-12">

<table class="table table-hover table-condensed table-bordered table-striped bg-white">
	<head>
		<tr>
			<th>Group</th>
			<th>Action</th>
		</tr>
	</head>
	<tbody>
		<?php foreach ($listGroup as $value):?>
			<tr>
				<td><?php echo $value->name;?></td>
				<td style="width:100px;"><a href=""><i class="fa fa-pencil"></i> Edit Group</a></td>
			</tr>
		<?php endforeach;?>
	</tbody>
</table>

</div>

</div>