
   <div class="main main-raised">
        <div class="container mainn-raised" style="width:100%;">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner">

      <div class="item active">
        <img src="img/back4.jpg" alt="img" style="width:100%;">
        
      </div>

      <div class="item">
        <img src="img/back1.jpg" style="width:100%;">
        
      </div>
    
      <div class="item">
        <img src="img/back5.png" alt="img" style="width:100%;">
        
      </div>
     
	  <div class="item">
        <img src="img/back6.jpg" alt="img" style="width:100%;">
        
      </div>
  
    </div>

    <a class="left carousel-control _26sdfg" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only" >Previous</span>
    </a>
    <a class="right carousel-control _26sdfg" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
     


		<div class="section mainn mainn-raised">
		
		
			<div class="container">
			<h4>
			AquaJet provides customers with a wide range of Borewell submersible pumps for their agricultural uses. AquaJet borewell water pumps are thoughtfully designed and built with the best materials and techniques. They are easy to install, making them a great option for a number of agricultural activities.
			AquaJet entry models priced at INR 16,000- 38,000/- are perfect for you if your field is relatively small and requires less water to be delivered. For larger fields where the soil and water are harder than usual, AquaJet's mid and top tier models priced at INR 40,000-60,000/-, will do justice to your needs by proving to be a dependable option which resolves all your agricultural worries.
</h4>
			</div>
		</div>
		<!-- /SECTION -->
		  
		
		<div class="section">
			<div class="container">
				<div class="row">

					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title"> Most selling
							</h3>
						</div>
					</div>
					<div class="col-sm-12 mainn mainn-raised">
						<div class="row">
							<div class="products-tabs">
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1" >
									
									<?php
                    include 'db.php';
								
                    
					$product_query = "SELECT * FROM products,categories WHERE product_cat=cat_id AND product_id BETWEEN 1 AND 4";
                $run_query = mysqli_query($con,$product_query);
                if(mysqli_num_rows($run_query) > 0){

                    while($row = mysqli_fetch_array($run_query)){
                        $pro_id    = $row['product_id'];
                        $pro_cat   = $row['product_cat'];
                        $pro_brand = $row['product_brand'];
                        $pro_title = $row['product_title'];
                        $pro_price = $row['product_price'];
                        $pro_image = $row['product_image'];

                        $cat_name = $row["cat_title"];

                        echo "
				
                        
                                
								<div class='product pb-5'>
									<a href='product.php?p=$pro_id'><div class='product-img'>
										<img src='product_images/$pro_image' style='max-height: 170px;' alt=''>
										<div class='product-label'>
											<span class='new'>NEW</span>
										</div>
									</div></a>
									<div class='product-body'>
										<p class='product-category'>$cat_name</p>
										<h3 class='product-name header-cart-item-name'><a href='product.php?p=$pro_id'>$pro_title</a></h3>
										<h4 class='product-price header-cart-item-info'>$pro_price</h4>
									</div>
									<div class='add-to-cart'>
										<button pid='$pro_id' id='product' class='add-to-cart-btn block2-btn-towishlist' href='#'><i class='fa fa-shopping-cart'></i> add to cart</button>
									</div>
								</div>
                               
							
                        
			";
		}
        ;
      
}
?>
									</div>
									
							</div>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<div id="hot-deal" class="section mainn mainn-raised">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							<ul class="hot-deal-countdown">
								<li>
									<div>
										<h3>02</h3>
										<span>Days Remaining</span>
									</div>
								</li>
							</ul>
							<h2 class="text-uppercase">get best deal this Season
								<br>
								<p>Get Up to 50% OFF</p>
							</h2>
							
							<a class="primary-btn cta-btn" href="store.php">Shop now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
