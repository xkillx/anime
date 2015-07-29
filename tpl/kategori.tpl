<?php
global $page;
global $anime;
global $pagination;
global $pengaturan;
$listCategories = $anime->listCategories($page);
$pagination->setCurrent($page);
$pagination->setTotal($anime->totalKategori());
?>
<div class="row">
	<div class="col-sm-12">
		<img src="static/img/banner.png" class="img-thumbnail">
	</div>
</div>
<div class="clearfix" style="height:20px;"></div>
<table class="table table-hover table-condensed table-bordered table-striped bg-white">
	<head>
		<tr>
			<th>Judul</th>
			<th>Year</th>
			<th>Episodes</th>
		</tr>
	</head>
	<tbody>
<?php
foreach ($listCategories as $item):
?>
	<tr>
		<td><a href="<?php echo $pengaturan->site_url();?>/movie/<?php echo $item->id;?>/<?php echo seo($item->judul);?>"><?php echo $item->judul;?></a></td>
		<td><?php echo $item->year;?></td>
		<td>
		<?php 
		echo $anime->jumlahEpisode($item->id);
		?>
		</td>
	</tr>
<?php endforeach;?>
	</tbody>
</table>
<?php echo $pagination->parse();?>