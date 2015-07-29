<?php
global $anime;
global $kategori_id;
global $session_group;
$detail 		= $anime->kategoriDetail($kategori_id);
$listEpisodes 	= $anime->semuaEpisode($kategori_id);
$anime->hit($kategori_id);
?>
<div class="row">
	<div class="col-sm-3">
		<img src="<?php echo $detail->cover;?>" class="img-responsive img-thumbnail" alt="Responsive image"  style="width:100%;margin-bottom:10px;" >

		<!-- -->
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Share Is care</h3>
		  </div>
		  <div class="panel-body">
			  <a href="" class="btn btn-lg btn-primary">
			  	<i class="fa fa-facebook"></i>
			  </a>
			  <a href="" class="btn btn-lg btn-success">
			  	<i class="fa fa-twitter"></i>
			  </a>
			  <a href="" class="btn btn-lg btn-danger">
			  	<i class="fa fa-google-plus"></i>
			  </a>
		  </div>
		</div>
		<!-- -->
		<!-- -->
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Alternative Titles</h3>
		  </div>
		  <table class="table  table-condensed">
		  	<tbody>
		  		<tr>
		  			<td>English</td>
		  			<td><?php echo $detail->english;?></td>
		  		</tr>
		  		<tr>
		  			<td>Synonyms</td>
		  			<td><?php echo $detail->synonyms;?></td>
		  		</tr>
		  		<tr>
		  			<td>Japanese</td>
		  			<td><?php echo $detail->japanese;?></td>
		  		</tr>
		  		<tr>
		  			<td>Indonesian</td>
		  			<td><?php echo $detail->indonesian;?></td>
		  		</tr>
		  	</tbody>
		  </table>
		</div>
		<!-- -->
		<!-- -->
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Information</h3>
		  </div>
		  <table class="table  table-condensed">
		  	<tbody>
		  		<tr>
		  			<td>Type</td>
		  			<td><?php echo $detail->type;?></td>
		  		</tr>
		  		<tr>
		  			<td>Episodes</td>
		  			<td><?php echo $detail->episode;?></td>
		  		</tr>
		  		<tr>
		  			<td>Status</td>
		  			<td><?php echo $detail->status;?></td>
		  		</tr>
		  		<tr>
		  			<td>Aired</td>
		  			<td><?php echo $detail->aired;?></td>
		  		</tr>
		  		<tr>
		  			<td>Producers</td>
		  			<td><?php echo $detail->producers;?></td>
		  		</tr>
		  		<tr>
		  			<td>Genres</td>
		  			<td><?php echo $detail->genres;?></td>
		  		</tr>
		  		<tr>
		  			<td>Duration</td>
		  			<td><?php echo $detail->duration;?></td>
		  		</tr>
		  	</tbody>
		  </table>
		</div>
		<!-- -->

	</div>
	<div class="col-sm-9 bg-white">
	<h4><i class="glyphicon glyphicon-bookmark"></i> <?php echo $detail->judul;?></h4>
	<hr>
		<div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#details" aria-controls="details" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-info-sign"></i> Details</a></li>
    <li role="presentation"><a href="#Episodes" aria-controls="Episodes" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list"></i> Episodes</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-comment"></i> Messages</a></li>
    <li role="presentation"><a href="#ChangesLog" aria-controls="ChangesLog" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> ReportLog</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="details">
	<?php echo $detail->keterangan;?>
	<div class="clearfix" style="height:20px;"></div>
    </div>
    <div role="tabpanel" class="tab-pane" id="Episodes">
    	<table class="table table-striped table-bordered  table-condensed">
    		<thead>
    			<tr>
    				<th>Title</th>
    				<th>Date Add</th>
    				<th>Kualitas</th>
    				<th>Size</th>
    				<th>Source</th>
    				<th>Mirror</th>
    				<th>Password</th>
    				<th></th>
	<?php if($session_group == 3):?>
    				<th>Action</th>
    <?php endif;?>
    			</tr>
    		</thead>
    		<tbody>
    		<?php foreach ($listEpisodes as $episode):?>
    			<tr>
    				<td><?php echo $episode->title;?></td>
    				<td><?php echo get_timeago(strtotime($episode->date));?></td>
    				<td><?php echo $episode->kualitas;?></td>
    				<td><?php echo $episode->size;?></td>
    				<td><?php echo $episode->source;?></td>
    				<td><a href="./l.php?u=<?php echo $episode->mirror;?>&episode_id=<?php echo $episode->id;?>" class="external">Download</a></td>
    				<td><?php echo $episode->password;?></td>
    				<td><a href="">Broken Link?</a></td>

	<?php if($session_group == 3):?>
    				<td><a href="">Edit</a> | <a href="">Delete</a></td>
    <?php endif;?>
    			</tr>
    		<?php endforeach;?>
    		</tbody>
    	</table>
    	<div class="alert alert-info">
    	<strong>INFO</strong> Jika menemukan link mati silakan tinggalkan pesan
    	</div>
    </div>
    <!-- messages -->
    <div role="tabpanel" class="tab-pane" id="messages">
    	
    	<div class="alert alert-warning">
    	<strong>INFO</strong> Comming Soon
    	</div>
    </div>
    <!-- messages -->
    <!-- changeslog -->
    <div role="tabpanel" class="tab-pane" id="ChangesLog">
    	<table class="table table-striped table-bordered  table-condensed">
    		<thead>
    			<tr>
    				<th>Episode</th>
    				<th>Status</th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>Episode 1</td>
    				<td>Draft</td>
    			</tr>
    			<tr>
    				<td>Episode 2</td>
    				<td>Pending</td>
    			</tr>
    			<tr>
    				<td>Episode 3</td>
    				<td>Uploading</td>
    			</tr>
    			<tr>
    				<td>Episode 4</td>
    				<td>Fixed</td>
    			</tr>
    		</tbody>
    	</table>
    </div>
  </div>
  <!-- changeslog -->
</div>
	</div>
</div>