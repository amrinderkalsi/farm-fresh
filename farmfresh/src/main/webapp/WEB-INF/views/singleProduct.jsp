<div class="container">

	<!-- Breadcrumb -->
	<div class="row">
		<%-- <div class="col-xs-12">
			<ol class="breadcrumb">
				<li><a href="${contextRoot}/home">Home</a></li>&nbsp;|&nbsp;
				<li><a href="${contextRoot}/show/all/products">Products</a></li>&nbsp;|&nbsp; 
				<li class="active">${product.name}</li>
			</ol>
		</div> --%>
	</div>
<!-- product.code -->
	<div class="row">
		<!-- Display the product image -->
		<div class="col-xs-12 col-sm-4">
			<div class="thumbnail">
				<img src="${images}/menu_1.jpg" class="img img-responsive" style="width:350px; height: 400px;"/>
			</div>
		</div>
		
		<div class="col-xs-12 col-sm-8">
			<h3>${product.name}</h3>
			<hr/>
			
			<p>${product.name}</p>
			<hr/>
			
			<h4>Price: <strong>&dollar; ${product.unitPrice}</strong></h4>
			<hr/>
			
			<h6>Qty. Available: ${product.quantity} </h6>
			
			<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
				<span class="glyphicon glyphicon-shopping-cart"></span>Add to Cart
			</a>
			
			<a href="${contextRoot}/show/all/products" class="btn btn-primary">Back</a>
		</div>
	</div>

</div>