
<form method="POST" action="./?halaman=tambah_kategori">
<div class="row">

<div class="col-sm-4"> 

  <div class="form-group">
    <label for="Title">Title</label>
      <input type="text" class="form-control" name="judul" id="Title" placeholder="Title" required>
  </div>
  <div class="form-group">
    <label for="cover">cover</label>
      <input type="text" class="form-control" name="cover" id="cover" placeholder="cover" required>
  </div>
  <div class="form-group">
    <label for="year">year</label>
      <input type="text" class="form-control" name="year" id="year" placeholder="year" required>
  </div>
  <div class="form-group">
    <label for="inputPassword3">Synopsis</label>
      <textarea class="form-control" rows="3" name="keterangan"></textarea>
  </div>
  <div class="form-group">
      <input type="submit" class="btn btn-default" value="simpan" name="tambah_kategori">
  </div>


</div>

<div class="col-sm-4">
    	<div class="panel panel-default">
        <div class="panel-heading">Alternative Titles</div>
        <div class="panel-body">


  <div class="form-group">
    <label for="English">English</label>
    <input type="text" class="form-control" id="English" placeholder="English" required>
  </div>
  <div class="form-group">
    <label for="Synonyms">Synonyms</label>
    <input type="text" class="form-control" id="Synonyms" placeholder="Synonyms" required>
  </div>
  <div class="form-group">
    <label for="Japanese">Japanese</label>
    <input type="text" class="form-control" id="Japanese" placeholder="Japanese" required>
  </div>



        </div>
      </div>
</div>

<div class="col-sm-4">
      <div class="panel panel-default">
        <div class="panel-heading">Information</div>
        <div class="panel-body">


  <div class="form-group">
    <label for="Type">Type</label>
    <input type="text" class="form-control" id="Type" placeholder="Type" required>
  </div>
  <div class="form-group">
    <label for="Episodes">Episodes</label>
    <input type="text" class="form-control" id="Episodes" placeholder="Episodes" required>
  </div>
  <div class="form-group">
    <label for="Status">Status</label>
      <select id="Status" class="form-control">
        <option value="Finished Airing">Finished Airing</option>
        <option value="On Going">On Going</option>
      </select>
  </div>
  <div class="form-group">
    <label for="Aired">Aired</label>
    <input type="text" class="form-control" id="Aired" placeholder="Aired" required>
  </div>
  <div class="form-group">
    <label for="Producers">Producers</label>
    <input type="text" class="form-control" id="Producers" placeholder="Producers" required>
  </div>
  <div class="form-group">
    <label for="Genres">Genres</label>
    <input type="text" class="form-control" id="Genres" placeholder="Genres" required>
  </div>
  <div class="form-group">
    <label for="Duration">Duration</label>
    <input type="text" class="form-control" id="Duration" placeholder="Duration" required>
  </div>

        </div>
      </div>
</div>


</div>

</form>