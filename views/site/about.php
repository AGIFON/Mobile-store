<?php include ROOT . '/views/layouts/header.php'; ?>

<section>
    <div class="container">
        <div class="row">
<script src="http://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
            <div class="col-lg-6">
    
                <h4>Информация о магазине</h4>

                    <img src="/upload/images/products/Снимок.JPG" width="1280" height="1020">
                    <img src="/upload/images/products/Снимок2.JPG" width="1280" height="520">
                    <img src="/upload/images/products/Снимок3.JPG" width="1280" height="1020">
                    <img src="/upload/images/products/Снимок4.JPG" width="1280" height="520">
                    <img src="/upload/images/products/Снимок5.JPG" width="1280" height="1020">
                    <img src="/upload/images/products/Снимок6.JPG" width="1280" height="1020">
                    <img src="/upload/images/products/Снимок7.JPG" width="1280" height="720">

        <div>
                <br/>
                <script src="https://maps.google.com/maps/api/js"></script>
                <div id="map-container" class="z-depth-1" style="height: 500px; width: 1000px;"></div>
                
            </div>
        </div>
    </div>
</section>
<script type="text/javascript">// Regular map
function regular_map() {
    var var_location = new google.maps.LatLng(55.2122326, 30.2278862);

    var var_mapoptions = {
        center: var_location,
        zoom: 14
    };

    var var_map = new google.maps.Map(document.getElementById("map-container"),
        var_mapoptions);

    var var_marker = new google.maps.Marker({
        position: var_location,
        map: var_map,
        title: "New York"
    });
}

// Initialize maps
google.maps.event.addDomListener(window, 'load', regular_map);</script>
<?php include ROOT . '/views/layouts/footer.php'; ?>