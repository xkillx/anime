<?php global $session_group;global $pengguna_id;global $pengguna;global $pengaturan;?>
<div class="row">
	<div class="col-sm-8">
		<div class="well well-sm" style="min-height:150px;">
		</div>
		<div class="row">
			<div class="col-sm-12">
<div class="bg-white" style="padding:5px;border-color: rgb(204, 206, 211) rgb(196, 198, 202) rgb(180, 182, 186);
border-style: solid;
border-width: 1px;">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Home</a></li>
    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Messages</a></li>
    <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Settings</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">...</div>
    <div role="tabpanel" class="tab-pane" id="profile">...</div>
    <div role="tabpanel" class="tab-pane" id="messages">...</div>
    <div role="tabpanel" class="tab-pane" id="settings">...</div>
  </div>

</div>

			</div>
		</div>
	</div>
	<div class="col-sm-4">
	<?php if($session_group == 3):?>
<!-- Admin -->
		<div class="panel panel-default">
		<div class="panel-heading">
			Administration Menu
		</div>
		<div class="list-group">
            <a href="<?php echo $pengaturan->site_url();?>/tambah_kategori" class="list-group-item">Tambah Kategori</a>
            <a href="<?php echo $pengaturan->site_url();?>/tambah_episode" class="list-group-item">Tambah Episode</a>
            <a href="<?php echo $pengaturan->site_url();?>/tambah_ost" class="list-group-item">Tambah OST</a>
            <a href="<?php echo $pengaturan->site_url();?>/group" class="list-group-item">Group</a>
            <a href="<?php echo $pengaturan->site_url();?>/menu" class="list-group-item">Menu</a>
            <a href="<?php echo $pengaturan->site_url();?>/link" class="list-group-item">Link</a>
		</div>
		</div>
<!-- Admin -->	
	<?php endif;?>	
<!-- Profile -->
		<div class="panel panel-default">
		<div class="panel-heading">
			Personal Menu
		</div>
		<div class="list-group">
            <a href="<?php echo $pengaturan->site_url();?>/edit_cover" class="list-group-item">Edit Cover</a>
            <a href="<?php echo $pengaturan->site_url();?>/edit_password" class="list-group-item">Edit Password</a>
            <a href="<?php echo $pengaturan->site_url();?>/edit_profile" class="list-group-item">Edit Profile</a>
		</div>
		</div>
<!-- Profile -->	
	</div>
</div>