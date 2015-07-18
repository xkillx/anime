<?php
global $page;
global $anime;
global $pagination;
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
$realname = $item->judul; 
$seoname = preg_replace('/\%/',' percentage',$realname);
$seoname = preg_replace('/\@/',' at ',$seoname);
$seoname = preg_replace('/\&/',' and ',$seoname);
$seoname = preg_replace('/\s[\s]+/','-',$seoname);    // Strip off multiple spaces
$seoname = preg_replace('/[\s\W]+/','-',$seoname);    // Strip off spaces and non-alpha-numeric
$seoname = preg_replace('/^[\-]+/','',$seoname); // Strip off the starting hyphens
$seoname = preg_replace('/[\-]+$/','',$seoname); // // Strip off the ending hyphens
$seoname = strtolower($seoname);
?>
	<tr>
		<td><a href="./?halaman=detail_kategori&kategori_id=<?php echo $item->id;?>&kategori_judul=<?php echo $seoname;?>"><?php echo $item->judul;?></a></td>
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