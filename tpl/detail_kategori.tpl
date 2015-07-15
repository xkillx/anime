<?php
global $anime;
global $kategori_id;
$detail = $anime->kategoriDetail($kategori_id);
?>
<pre>
	<?php print_r($detail);?>
</pre>
<div class="row">
	<div class="col-sm-3">
		<img src="static/img/contoh.jpg" class="img-responsive img-thumbnail" alt="Responsive image"  style="width:100%;margin-bottom:10px;" >

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
		  			<td>-</td>
		  		</tr>
		  		<tr>
		  			<td>Status</td>
		  			<td><?php echo $detail->status;?></td>
		  		</tr>
		  		<tr>
		  			<td>Aired</td>
		  			<td>-</td>
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
	<div class="col-sm-9">
	<h4><i class="glyphicon glyphicon-bookmark"></i> Fate/stay night [Unlimited Blade Works] 2nd シーズン</h4>
	<hr>
		<div>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#details" aria-controls="details" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-info-sign"></i> Details</a></li>
    <li role="presentation"><a href="#Episodes" aria-controls="Episodes" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list"></i> Episodes</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-comment"></i> Messages</a></li>
    <li role="presentation"><a href="#ChangesLog" aria-controls="ChangesLog" role="tab" data-toggle="tab"><i class="glyphicon glyphicon-list-alt"></i> ChangesLog</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="details">
<?php echo $detail->keterangan;?>
    </div>
    <div role="tabpanel" class="tab-pane" id="Episodes">
    	<table class="table table-striped table-bordered  table-condensed">
    		<thead>
    			<tr>
    				<th>Title</th>
    				<th>Kualitas</th>
    				<th>Size</th>
    				<th>Source</th>
    				<th>Mirror</th>
    			</tr>
    		</thead>
    		<tbody>
    		<?php for ($i=1; $i <= 13 ; $i++):?>
    			<tr>
    				<td>Episode <?php echo $i;?></td>
    				<td>720p</td>
    				<td>1gb</td>
    				<td>kumpulbagi</td>
    				<td><a href="" class="external">Download</a></td>
    			</tr>
    		<?php endfor;?>
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
    	<div class="alert alert-warning">
    	<strong>INFO</strong> Comming Soon
    	</div>
    </div>
  </div>
  <!-- changeslog -->
</div>
	</div>
</div>