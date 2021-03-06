<?php foreach($products as $product){ ?>
<li>
	<div class="left-block">
		<a href="<?php echo $product['href']?>"><img class="img-responsive" alt="product" src="<?php echo $product['thumb']?>" /></a>
		<div class="quick-view">
			<a title="<?php echo $translator->_('Add to my wishlist')?>" class="heart" href="javascript:;" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></a>
			<a title="<?php echo $translator->_('Add to compare')?>" class="compare" href="javascript:;" onclick="compare.add('<?php echo $product['product_id']; ?>');"></a>
			<a title="Quick view" class="search quickview" href="javascript:quickview.view(<?php echo $product['product_id']; ?>);" data-product-id="<?php echo $product['product_id']; ?>"></a>
		</div>
		<div class="add-to-cart">
			<a title="<?php echo $button_cart; ?>" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
		</div>
		<div class="price-percent-reduction2">
			-<?php echo $product['special_percent']?>%<br> <?php echo $translator->_('OFF')?>
		</div>
	</div>
	<div class="right-block">
		<h5 class="product-name"><a href="<?php echo $product['href']?>"><?php echo $product['name']?></a></h5>
		<div class="content_price">
			<span class="price product-price"><?php echo $product['special']?></span>
			<span class="price old-price"><?php echo $product['price']?></span>
		</div>
	</div>
</li>
<?php } ?>
