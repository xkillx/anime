<?php
global $anime;
$anime_kategori = $anime->semua_kategori();
?>
<div class="row">

<div class="col-sm-8">
<div class="panel panel-default">
  <div class="panel-heading">Tambah Episode Baru</div>
  <div class="panel-body">


<form class="form-horizontal" method="POST" action="./?halaman=tambah_episode">
  <div class="form-group">
    <label for="Judul" class="col-sm-2 control-label">Judul</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="title"  id="Judul" placeholder="Judul">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Kategori</label>
    <div class="col-sm-10">
        <select class="cari" name="kategori_id" class="form-control">
      <option>-------- Pilih Kategori --------</option>
      <?php foreach($anime_kategori as $kategori):?>
        <option value="<?php echo $kategori->id;?>"><?php echo $kategori->judul;?></option>
      <?php endforeach;?>
    </select>
    </div>
  </div>
  <div class="form-group">
    <label for="kualitas" class="col-sm-2 control-label">kualitas</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="kualitas"  id="kualitas" placeholder="kualitas">
    </div>
  </div>
  <div class="form-group">
    <label for="size" class="col-sm-2 control-label">size</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="size"  id="size" placeholder="size">
    </div>
  </div>
  <div class="form-group">
    <label for="source" class="col-sm-2 control-label">source</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="source"  id="source" placeholder="source">
    </div>
  </div>
  <div class="form-group">
    <label for="mirror" class="col-sm-2 control-label">mirror</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="mirror"  id="mirror" placeholder="mirror">
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">password</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name="password"  id="password" placeholder="password">
    </div>
  </div>
  <div class="form-group">
    <label for="content" class="col-sm-2 control-label">content</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="5" name="content"></textarea>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <input type="submit" class="btn btn-default" value="simpan" name="tambah_episode">
    </div>
  </div>
</form>

</div>
</div>



</div>

<div class="col-sm-4">
	<div class="well well-sm">
	</div>
</div>


</div>