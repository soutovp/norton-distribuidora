{% set gallery_type = "click" %}{# gallery_type allow types -> (click, zoom and zoom_inner) #}
{% set gallery_thumbs_number = 3 %}{# number of thumbnails to display #}
{% set gallery_thumbs_position = "bottom" %}
{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<link rel="preload" as="style" type="text/css" href="{{asset("css/zoom.css","ui")}}" onload="this.rel='stylesheet';">
<script defer src="{{asset("etalage/etalage-1.3.4-min.js","libs")}}" type="text/javascript">
</script>
<script type="text/javascript">
  $(document).ready(function(){
    let $_gallery = $("#product_gallery");
    $_gallery.attr({
      "min-width" : "{{product.gallery.width}}px", "min-height" : "{{product.gallery.height}}px"});
      $_gallery.etalage({
      show_icon : false,
      thumb_image_width : {{product.gallery.width}},
      thumb_image_height : {{product.gallery.height}},
      zoom_area_distance : 10,
      zoom_area_width : ({{product.gallery.width}})+10,
      zoom_area_height : ({{product.gallery.height}})+10,
        source_image_width : ({{product.gallery.width}})*2,
          source_image_height : ({{product.gallery.height}})*2,
            smallthumb_select_on_hover: false,
              smallthumb_inactive_opacity: 0.3,
                smallthumbs_position: '{{gallery_thumbs_position}}',
    small_thumbs: {{gallery_thumbs_number}},
      show_descriptions: false,
        show_begin_end_smallthumb: false,
          autoplay:false,
            show_hint: false,
              hide_cursor:false,
                {% if gallery_type == "click" %}
                show_lens: false, zoom_element: '#zoom', magnifier_opacity: 1,
                  {% elseif gallery_type == "zoom_inner" %}
                  show_lens: false,
                    {% endif %}
                    click_callback: function(image_anchor, instance_id,element){
                      var images = [];
                      $.each($("a[rel='gallery']"), function(x,value){
                        images.push({
                          type:"image",caption:"",thumb:$("img",$(value)).eq(0).attr("src"),src:$(value).attr("href")}
                                   );
                      }
                            );
                      $.fancybox.open(images,{
                        thumbs : {
                          autoStart : true
                        }
                        ,
                        mobile: {
                          thumbs:{
                            autoStart : false }
                        }
                        ,
                        openEffect : 'elastic',	closeEffect	: 'elastic',
                        index      : element.attr("tabindex")-1,
                        autoCenter : true,
                        beforeShow : function() {
                          $('body,html').css('overflowY','hidden');
                        }
                        ,
                        afterClose   : function() {
                          $('body,html').css('overflowY','');
                        }
                      }
                                     );
                    }
  }
                   );
  }
  );
</script>
<div id="hidden" style="display:none;">
  <div id="zoom">
  </div>
</div>
<section class="product-page mb-30">
  <div class="container custom-container">
    <div class="content corpo-conteudo">
      {% include 'product/snippets/detail.tpl' %}
      {% if (show_rating and product.reviews|length>0) %}
      {% include 'product/snippets/reviews.tpl' %}
      {% endif %}
      {% if (product.linked|length>0) %}
      {% set linkedProducts = product.linked %}
      {% include 'product/snippets/linked.tpl' %}
      {% endif %}
    </div>
  </div>
</section>
{% include("footer.tpl") %}
