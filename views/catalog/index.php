<?php include ROOT . '/views/layouts/header.php'; ?>


<?php $textfind = ''; $productfind = Product::find();?>


<section>
    <div class="container">
        <div class="row" >
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Каталог</h2>
                    <div class="panel-group category-products">
                        <?php foreach ($categories as $categoryItem): ?>
                            <div class="panel panel-default"> 
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a href="/category/<?php echo $categoryItem['id'];?>">
                                            <?php echo $categoryItem['name'];?>
                                        </a>
                                    </h4>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>


  <style type="text/css">
    #custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}
                        </style>
<?php
$link=mysqli_connect("localhost", "root", "", "phpshop");
$query = mysqli_query($link,"Select * from product ");
$count = mysqli_num_rows($query);
 for($i = 0; $i < $count; $i++){
    $row1 = mysqli_fetch_array($query, MYSQLI_ASSOC);
    $r[$i] = $row1['price'];
  }

  $min = min($r);
  $max = max($r);
 ?>

                <form action="#" method="post">
                    <div>
                    <p>$ Low </p>                   
                        <input type="number" id="low" name="low" min="<?php echo $min; ?>" max="<?php echo $max; ?>" data-bind="value:replyNumber" value="<?php echo $min; ?>" />
                    </div>
                    <div style="margin-top: 3%;margin-bottom: 3%; ">  
                    <p>$ Hight </p>                     
                        <input type="number" id="hight" name="hight" min="<?php echo $min; ?>" max="<?php echo $max; ?>" data-bind="value:replyNumber" value="<?php echo $max; ?>" />
                    </div>
                    <span style="padding-top: 5%; " class="input-group-btn">
                        <button id="sortprice"  class="btn btn-info btn-lg sortprice" type="button">
                            <input type="submit" name="submitt" class="btn btn-default" value="Поиск"><i  class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </form>
            <h2 style="padding-top: 5%;" >Поиск по названию</h2>
            <div id="custom-search-input">
                <form action="#" method="post">
                <div class="input-group col-md-12">
                    <input type="text" id="findtext" name="findtxt" class="form-control input-lg" placeholder="Поиск" />
                    <span class="input-group-btn">
                        <button id="findbutton" name="query" class="btn btn-info btn-lg findbutton" type="search">
                             <input type="submit" name="submit" class="btn btn-default" value="Поиск"><i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
                </form>
            </div>

                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Последние товары</h2>
                    
                    <?php foreach ($productfind as $product): ?>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="<?php echo Product::getImage($product['id']); ?>" style="width: 120px; height: 238px;" alt="" />
                                        <h2>$<?php echo $product['price'];?></h2>
                                        <p>
                                            <a href="/product/<?php echo $product['id'];?>">
                                                <?php echo $product['name'];?>
                                            </a>
                                        </p>
                                        
                                        <a href="#" data-id="<?php echo $product['id'];?>"
                                           class="btn btn-default add-to-cart">
                                            <i class="fa fa-shopping-cart"></i>В корзину

                                        </a>
                                    </div>
                                    <?php if ($product['is_new']): ?>
                                        <img src="/template/images/home/new.png" class="new" alt="" />
                                    <?php endif; ?>
                                </div>
                            </div>
                        </div>
                    <?php endforeach;?>                   

                </div><!--features_items-->


<script>
    sortprice.onclick = function () {
        //alert("sad");
    }
</script>


            </div>
        </div>
    </div>
</section>

<?php include ROOT . '/views/layouts/footer.php'; ?>

