<link media="all" href="{{asset("css/addons/pagination.min.css","ui")}}" type="text/css" rel="stylesheet">
<style type="text/css">
  .list-customer .mobile-view {
    display: none;
  }
  .section-header {
    padding: 0;
  }
  .section-header .header {
    display: flex;
    flex: 0 0 auto;
    flex-flow: column nowrap;
    justify-content: center;
    align-items: flex-start;
    width: 100% !important;
    height: auto;
    margin: 0px;
    padding: 0px;
    text-align: left;
  }
  .product-purchased-disired{
    font-size: 0.75rem;
    color: var(--color-txt-60);
    padding: 5px 0;
  }
  .section-header .header .bg {
    background-image: linear-gradient(to right, rgba(0, 0, 0, 0.63), rgba(0, 0, 0, 0.27));
    display: flex;
    flex: 0 0 auto;
    flex-flow: column nowrap;
    align-items: center;
    width: 100%;
    height: 100%;
  }
  .section-header .header .container-header {
    max-width: 1440px;
    display: flex;
    flex: 0 0 auto;
    flex-flow: row nowrap;
    -webkit-box-pack: start;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    padding: 0px 62px;
  }
  .section-header .header .container-header .image {
    display: flex;
    flex: 0 0 auto;
    flex-flow: row nowrap;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    width: 222px;
    height: 222px;
    background-color: rgb(255, 255, 255);
    border-radius: 50%;
    border: none;
    box-shadow: rgb(0 0 0 / 16%) 0px 3px 6px;
    z-index: 1;
    position: relative;
    bottom: -25px;
  }
  .section-header .header .container-header .image img {
    width: calc(100% - 10px);
    height: calc(100% - 10px);
    border-radius: 50%;
    object-fit: cover;
  }
  .section-header .header .container-header .image i {
    opacity:0.2}
  .section-header .header .info-list,
  .section-header .header .info-list .info-data {
    display: flex;
    flex-flow: column nowrap;
    padding: 20px 60px;
    width: 100%;
  }
  .section-header .header .info-list .info-data {
    background: rgba(255, 255, 255, 0.2);
    color: white;
    border-radius: 5px;
    margin-bottom: 10px;
    padding: 5px 8px;
    max-width: 30%;
  }
  .section-header .header .info-list .info-data label,
  .section-header .header .info-list .info-data span {
    line-height: normal;
  }
  .section-header .header .info-list .info-data label {
    margin-bottom: 1px;
    font-size: 0.7em;
    opacity: 0.5;
  }
  section.list-customer .product-card .product-card-rating {
    margin: 10px 0;
  }
  .section-header .header .info-list .info-data:first-child {
    background: none;
    color: white;
    font-size: 1.2em;
    font-weight: bold;
  }
  section.list-customer .list-customer-products {
    margin-bottom: 30px;
  }
  section.list-customer .list-header {
    width: 100%;
    display: flex;
    flex-flow: column;
    align-items: center;
    margin-top: 20px;
    padding: 2rem;
  }
  .collection-header {
    margin: 0 10px 20px 0;
    padding: 10px;
    background-color: var(--cor-bg-blcs-gp, #fff);
  }
  section.list-customer .product-card .product-attributes {
    margin: 0 0 10px 0;
  }
  section.list-customer .product-card {
    background-color: var(--cor-bg-blcs-gp);
    padding: 10px;
  }
  .collection-grid.mode-list figure img {
    max-width: 200px;
  }
  .mode-grid .product-card-rating .stars {
    justify-content: center;
  }
  section.list-customer .list-header .title {
    text-align: center;
    font-size: 200%;
    text-transform: uppercase;
    margin-bottom: 20px;
    font-weight: bold;
    letter-spacing: 5px;
  }
  section.list-customer .product-card .product-card-title {
    color: var(--cor-txt-nome-prto);
    opacity: 0.9;
    margin-bottom: 5px;
    font-size: 100%;
    overflow: hidden;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    line-height: 1.52947;
    font-weight: 500;
    min-height: 50px;
    max-height: 50px;
  }
  section.list-customer .product-card .product-card-action {
    position: inherit !important;
    opacity: 1 !important;
  }
  .mode-list .list-sales-data, .mode-list .list-information {
    width: 33% !important;
    padding: 10px;
    align-self: flex-start;
    gap: 5px;
  }
  .mode-list .product-card-price .currentPrice {
    text-align: start;
  }
  section.list-customer .product-card .product-attributes.grid-only ul {
    list-style: none;
    padding: 0;
    margin: 0;
    text-align: center;
    display: flex;
    flex-flow: row wrap;
    justify-content: center;
  }
  section.list-customer .product-card .product-attributes ul li.attributes-item {
    border:1px solid #dbdbdb;
    background-color: #fff;
    padding: 5px 10px;
    margin: 0 5px 5px 0;
    font-size: 12px;
    color: #7f7f7f;
    border-radius: 30px;
  }
  .product-card-title.grid-only {
    display: none !important;
  }
  .mode-list .list-sales-data {
    border-left: 1px solid var(--color-txt-20);
  }
  section.list-customer .product-card .chip {
    width: 100%;
    padding: 10px;
    border-radius: 30px;
    border: 1px solid green;
    background: darkgreen;
    font-weight: bold;
    color: white;
  }
  section.list-customer .product-card .chip.out-of-stock {
    border-color: #880000;
    background-color: #be0000;
  }
  section.list-customer .product-card.purchased {
    opacity: 0.4;
  }
  section.list-customer .products-filter {
    display: flex;
    flex-flow: row nowrap;
    align-items: center;
    font-size: 1em;
    margin-top: 10px;
  }
  section.list-customer .products-filter > div {
    margin: 0 20px;
  }
  section.list-customer .products-filter > div label {
    font-size: 0.8em;
    font-weight: bold;
    margin-right: 5px;
  }
  section.list-customer .products-filter > div select {
    padding: 8px 13px;
    box-sizing: border-box;
    background-color: rgba(244, 244, 244, 0.8);
    border-color: rgba(229, 229, 229, 0.58);
    border-radius: 10px;
    width: fit-content;
  }
  section.list-customer .mode-list .product-card-rating {
    margin: 10px 0;
  }
  section.list-customer .mode-list figure {
    display: flex;
    flex-direction: row !important;
    align-items: flex-start;
    gap: 10px;
  }
  section.list-customer .mode-list figure img {
    order: 2;
  }
  section.list-customer .mode-list .product-card-rating {
    order: 1;
  }
  section.list-customer .mode-list .product-card-rating .stars {
    flex-direction: column;
    order: 1;
  }
  @media only screen and (max-width:600px) {
    .list-customer .mobile-view {
      display: unset;
    }
    .list-customer .desktop-view {
      display: none;
    }
    .section-header .header .container-header {
      flex-flow: column;
      align-items: center;
      justify-content: center;
      padding: 0 10px;
    }
    .section-header .header .info-list, .header .info-list {
      width: 100%;
      margin-top: 20px;
    }
    .section-header .header .info-list .info-data {
      max-width: unset;
    }
    .section-header  .list-header p.title {
      font-size: 2em;
      text-align: center;
    }
    .collection-grid.mode-list .collection-grid-card {
      align-items: flex-start;
    }
    section.list-customer .product-card .product-card-title, .product-card-sku {
      font-size: 90%;
    }
    section.list-customer .product-card .product-card-title {
      min-height: 40px;
    }
    .collection-grid.mode-list figure img {
      max-width: 90px;
    }
    section.list-customer .product-card .product-attributes ul li.attributes-item {
      border: none;
      padding: 0px 0 5px;
      margin: 0;
    }
    .stars, .mode-list .product-card-price .currentPrice, section.list-customer .product-card .product-card-action {
      font-size: 80%;
    }
    .mode-list .product-card-action button.bt-buy {
      min-height: 35px;
    }
  }
</style>
<script type="text/javascript">
  function buyListProduct(data){
    var _btn = $(data);
    if (_btn.data("pid")=="undefined") return;
    _pid = _btn.data("pid");
    _data = {
      pid:parseInt(_pid),
      id_list:parseInt({{list.parent_list_id}}),
      customer_list:parseInt({{list.id}}),
      quantity:parseInt($("div[data-id='"+_pid+"'] input#quantity").val()),
      attr:_btn.data("attrId")
    };
    shoppingCart.sendData('/list/add',_data,function (result){
      shoppingCart.added(result);
    }
                         );
  }
  $(function() {
    $(".sidebar-filter-block .header").click(function () {
      $(this).toggleClass('closed');
    }
                                            );
    $(".collection-filter > button").click(function () {
      $(".collection-sidebar-filter").addClass('opened');
      $(".collection-sidebar-filter .sidebar-filter-block:not(.filter--selected)").each(function(){
        if ($("li.checked",$(this)).length==0) {
          $(".header", $(this)).addClass("closed");
        }
      }
                                                                                       );
    }
                                          );
    $(".collection-sidebar-filter .collection-sidebar-close,.collection-sidebar-overlay").click(function (e) {
      $(".collection-sidebar-filter").removeClass('opened');
    }
                                                                                               );
  }
   );
</script>
{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<section class="list-customer">
  <div class="custom-container">
    <div class="section-header list-customer-header" data-categId="{{category.id}}">
      <div class="header">
        <div class="bg" style="background-image: linear-gradient(to right, rgba(0, 0, 0, 0.63), rgba(0, 0, 0, 0.27));">
          <div class="container-header">
            <div class="image">
              {% if list.image is not empty %}
              <img src="{{list.image}}" alt="{{list.name|raw}}">
              {% else %}
              <i class="fas fa-image fa-7x">
              </i>
              {% endif %}
            </div>
            <div class="info-list">
              {% for field in list.fields %}
              <div class="info-data">
                <label>{{field.label|raw}}</label>
                <span>{{field.value|raw}}</span>
              </div>
              {% endfor %}
            </div>
          </div>
        </div>
        <div class="list-header w-100">
          <p class="title">{{list.name|raw}}</p>
        </div>
      </div>
    </div>
    <div class="content flex list-customer-products">
      {% if paginate.total > 0  %}
      <div class="column column-left order-0" width="auto">
        {% include 'snippets/collection-sidebar-filter.tpl' %}
      </div>
      <div class="column column-right order-1 w-100">
        <div class="collection-header template-cards flex" wrap="true" direction="row" align-items="center" justify-content="space-between">
          {% include 'snippets/collection-list-header.tpl' %}
        </div>
        <div class="collection-grid mode-{{ paginate.type?:"grid" }} flex" direction="row" wrap="true" columns="{{paginate.columns}}" gap="10">
          {% set card_direction = paginate.type=="grid"?"column":"row"%}
          {% for product in products %}
          {% set image_default = product.gallery.images|first  %}
          {% set secondary_image = false %}
          {% if product.gallery.hover and product.gallery.images[1] %}
          {% set secondary_image = product.gallery.images[1] %}
          {% endif%}
          <div class="collection-grid-card product-card flex w-100 position-relative{{ product.quantities.purchased >= product.quantities.desired ? " purchased": ""}}" justify-content="space-between" direction="{{card_direction}}" data-id="{{product.id}}" align-items="center">
            <figure class="flex text-center" direction="column" align-items="center">
              <img class="img-fluid" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{image_default.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{image_default.thumb_src}}"  alt="{{product.name|raw}}" {% if secondary_image %}data-image-type="main"{% endif%}/>
              {% if secondary_image %}
              <img class="img-fluid" loading="lazy" data-element="product-image" data-subpath="{{product.id}}" data-file="{{secondary_image.filename}}" data-width="{{product.gallery.width}}" width="{{product.gallery.width}}" data-height="{{product.gallery.height}}" height="{{product.gallery.height}}" src="{{secondary_image.thumb_src}}"  alt="{{product.name|raw}}" data-image-type="hover"/>
              {% endif %}
              {% if product.rating %}
              <div class="product-card-rating flex" wrap="true" align-items="center">
                {% include 'snippets/collection/product-card-rating.tpl' %}
              </div>
              {% endif %}
            </figure>
            <div class="product-purchased-disired text-center">
              Ganharam {{ product.quantities.purchased }} de {{product.quantities.desired}} desejados.
            </div>
            <div class="list-information w-100 flex" direction="column">
              <div class="list-only w-100">
                <div class="product-card-title">{{product.name|raw}}</div>
                <div class="product-card-sku">{{product.sku}}</div>
                {% if product.attributes is defined %}
                <div class="product-attributes">
                  <ul class="attributes-group flex" justify-content="start" wrap="true"> 
                    {% for attr in product.attributes.options %}
                    <li class="attributes-item">
                      {{attr.label|raw}}:&nbsp;
                      {% if attr.type in ["radio","checkbox","select"] %}
                      <b>{{ attr.value|raw }}</b>
                      {% elseif attr.type in ["color"] %}
                      <span class="mini-prev">{{ attr.value|raw }}</span>
                      {% elseif attr.type in ["image"] %}
                      <span class="mini-prev">
                        <img src="{{ attr.value }}" />
                      </span>
                      {% endif %}
                    </li>
                    {% endfor %}
                  </ul>
                </div>
                {% endif %}
              </div>
              <div class="product-card-title grid-only text-center w-100">
                {{product.name|raw}}
              </div>
              {% if product.attributes is defined %}
              <div class="product-attributes grid-only">
                <ul class="attributes-group">
                  {% for attr in product.attributes.options %}
                  <li class="attributes-item">
                    {{attr.label|raw}}:&nbsp;
                    {% if attr.type in ["radio","checkbox","select"] %}
                    <b>{{ attr.value|raw }}</b>
                    {% elseif attr.type in ["color"] %}
                    <span class="mini-prev">{{ attr.value|raw }}</span>
                    {% elseif attr.type in ["image"] %}
                    <span class="mini-prev">
                      <img src="{{ attr.value }}" />
                    </span>
                    {% endif %}
                  </li>
                  {% endfor %}
                </ul>
              </div>
              {% endif %}
            </div>
            <div class="list-sales-data w-100 flex" direction="column">
              <div class="product-card-price w-100">
                <div class="currentPrice text-center" data-element="price">
                  {% include 'snippets/collection/product-card-price.tpl' %}
                </div>
              </div>
              {% if product.quantities.current > 0 %}
              {% if product.quantities.purchased >= product.quantities.desired %}
              <div class="product-card-purchased chip text-center">
                <i class="fas fa-check">
                </i> Comprado!
              </div>
              {% else %}
              <div class="product-card-action flex text-center w-100" direction="column" wrap="false" align-items="center">
                <input name="quantity" id="quantity" class="quantitySelect" type="number" value="1" step="1" min="1" max="{{product.quantities.desired}}">
                <button data-action="buyListProduct" data-type="buttonAction" data-pid="{{product.id}}" data-attr-id="{{product.attributes.id}}" alt="Comprar" type="button" class="button-style-primary btn btn-primary btn-lg bt-buy w-100" title="Comprar">
                  <span>  
                    <i class="fa-duotone fa-cart-circle-plus">
                    </i>
                    Comprar
                  </span>
                </button>
              </div>
              {% endif %}
              {% else %}
              <div class="chip out-of-stock">
                <i class="fas fa-times">
                </i> Indisponível
              </div>
              {% endif %}
            </div>
          </div>
          {% endfor %}
        </div>
        <div class="collection-paginate">
          {% set paginate = {total:paginate.total,current: paginate.current,main_url: paginate.url } %}
          {% include "snippets/paginate.tpl" %}
        </div>
      </div>
      {% else %}
      <div class="w-100 text-center">
        <span>Ainda não foi cadastrado produtos nesta lista.
          <br>Volte em breve para aproveitar as ofertas!
        </span>
      </div>
      {% endif %}
    </div>
  </div>
</section>
{% include("footer.tpl") %}
