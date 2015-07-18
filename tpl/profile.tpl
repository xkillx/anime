<?php global $session_group;global $pengguna_id;global $pengguna;?>
<div class="row">
	<div class="col-sm-8">
		<div class="well well-sm">
		</div>
		<div class="well well-sm">
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
            <a href="./?halaman=tambah_kategori" class="list-group-item">Tambah Kategori</a>
            <a href="./?halaman=tambah_episode" class="list-group-item">Tambah Episode</a>
            <a href="./?halaman=tambah_ost" class="list-group-item">Tambah OST</a>
            <a href="./?halaman=group" class="list-group-item">Group</a>
            <a href="./?halaman=menu" class="list-group-item">Menu</a>
            <a href="./?halaman=link" class="list-group-item">Link</a>
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
            <a href="./?halaman=edit_cover" class="list-group-item">Edit Cover</a>
            <a href="./?halaman=edit_password" class="list-group-item">Edit Password</a>
            <a href="./?halaman=edit_profile" class="list-group-item">Edit Profile</a>
		</div>
		</div>
<!-- Profile -->	
	</div>
</div>