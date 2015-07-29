<?php
global $pengaturan;?>

	</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<?php echo $pengaturan->site_url();?>/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo $pengaturan->site_url();?>/static/js/select2.full.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
	  $(".cari").select2();
	});
	</script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<?php echo $pengaturan->site_url();?>/static/js/bootstrap.min.js"></script>

    <script src="http://bxslider.com/lib/jquery.bxslider.js"></script>
    <script type="text/javascript">
    	$('.bxslider').bxSlider({
		  minSlides: 7,
		  maxSlides: 7,
		  slideWidth: 150,
		  slideMargin: 10
		});
    </script>
  </body>
</html>