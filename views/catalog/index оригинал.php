<?php include ROOT . '/views/layouts/header.php'; ?>

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


                    <div>
                    <p>$ Low </p>                   
                        <input type="number"  min="<?php echo $min; ?>" max="<?php echo $max; ?>" data-bind="value:replyNumber" value="<?php echo $min; ?>" />
                    </div>
                    <div style="margin-top: 3%;margin-bottom: 3%; ">  
                    <p>$ Hight </p>                     
                        <input type="number"  min="<?php echo $min; ?>" max="<?php echo $max; ?>" data-bind="value:replyNumber" value="<?php echo $max; ?>" />
                    </div>
                    <span style="padding-top: 5%; " class="input-group-btn">
                        <button id="sortprice"   class="btn btn-info btn-lg sortprice" type="button">
                            <i  class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
            <h2 style="padding-top: 5%;" >Поиск по названию</h2>
            <form name="search" method="post">
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="Поиск" />
                    <span class="input-group-btn">
                        <button id="findbutton" name="query" class="btn btn-info btn-lg findbutton" type="search">
                           <a href="serch.php">Искать <i class="glyphicon glyphicon-search"></i></a>
                        </button>
                    </span>
                </div>
            </div>
            </form>


                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Последние товары</h2>
                    
                    <?php foreach ($latestProducts as $product): ?>
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
        alert("sad");
    }

    findbutton.onclick = function () {
        alert("ффф");
        var el = document.getElementById('123');
        el.parentNode.removeChild(el);

    }
    function goToPage()
{
    /*var p = "<?php echo $latestProducts; ?>"
    alert(p);
    alert("a");*/
    document.location.href = "serch.html";
}

</script>


            </div>
        </div>
    </div>
</section>

<?php include ROOT . '/views/layouts/footer.php'; ?>

