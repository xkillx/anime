<?php 
global $anime;
global $pengaturan;
?>
<div class="row">
	<div class="col-sm-12">
		
<div class="slider">
	<ul class="bxslider">
	<?php foreach($anime->home_cat('12') as $cat):?>
	  <li><a class="ow" href="<?php echo $pengaturan->site_url();?>/movie/<?php echo $cat->id;?>/<?php echo $anime->cat_seo($cat->id);?>"><img src="<?php echo $cat->cover;?>" class="img-responsive img-thumbnail"/></a></li>
	 <?php endforeach;?>
	</ul>
</div>



	</div>
</div>
<div class="clearfix" style="height:20px;"></div>
<div class="row">
<!-- -->
	<div class="col-sm-3">
		<div class="panel panel-danger">
		  <div class="panel-heading"><i class="glyphicon glyphicon-fire"></i> Anime baru</div>
			<div class="list-group">
			  <a href="#" class="list-group-item">Buddy Complex: Kanketsu-hen - Ano Sora ni Kaeru Mirai de</a>
			  <a href="#" class="list-group-item">Morbi leo risus</a>
			  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			</div>
		</div>
	</div>
<!-- -->


<!-- -->
	<div class="col-sm-3">
		<div class="panel panel-success">
		  <div class="panel-heading"><i class="glyphicon glyphicon-star"></i> Anime Populer</div>
			<div class="list-group">
			  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
			  <a href="#" class="list-group-item">Morbi leo risus</a>
			  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			</div>
		</div>
	</div>
<!-- -->


<!-- -->
	<div class="col-sm-3">
		<div class="panel panel-primary">
		  <div class="panel-heading"><i class="glyphicon glyphicon-star"></i> Anime Populer</div>
			<div class="list-group">
			  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
			  <a href="#" class="list-group-item">Morbi leo risus</a>
			  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			</div>
		</div>
	</div>
<!-- -->


<!-- -->
	<div class="col-sm-3">
		<div class="panel panel-info">
		  <div class="panel-heading"><i class="glyphicon glyphicon-bullhorn"></i> Site Update</div>
			<div class="list-group">
			  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
			  <a href="#" class="list-group-item">Morbi leo risus</a>
			  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			  <a href="#" class="list-group-item">Vestibulum at eros</a>
			</div>
		</div>
	</div>
<!-- -->




</div>