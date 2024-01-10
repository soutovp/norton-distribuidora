{% if fixed == false %}
 <style type="text/css">
   {% include "assets/theme_template.css" %}
   {% include "assets/templatenovo.css" %}
   .header-menu.menu-hide {
     display: none;
   }
   .header-menu.menu-hide.show-menu {
     display: block;
   }
   /* MENU ANIMADO */
   #menu ul ul.menu-anim {
     transform: scaleY(0);
     transition: all 0.2s ease 0s;
     transform-origin: top;
   }
   #menu li:hover>ul.menu-anim {
     transform: scaleY(1);
   }
   /* END MENU ANIMADO */
   /* MENU COVERFLOW */
   #menu .cover-quickview-button .button-quickview {
     display: flex !important;
   }
   /* MENU JUMBO */
   #menu .bg-jumbo{
     margin: 0px;
   }
   #menu .product-card-jumbo {
     flex-direction: column;
   }
   #menu .jumbo .collection-grid .product-card-jumbo figure img.first-image-thumbnail {
     opacity: 1;
     max-width: 100%;
     transition: all .5s ease;
     position: absolute;
     top: 0;
     left: 0;
     right: 0;
     max-height: 100%;
   }
   #menu .jumbo .collection-grid .product-card-jumbo figure img.second-image-thumbnail {
     max-height: 100%;
     top: 0;
     right: 0;
     left: 0;
   }
   #menu .jumbo .foot-card {
     gap: 10px;
     padding: 0 40px 40px;
   }
   #menu .jumbo .h-100 {
     height: 100% !important;
   }
   #menu .foot-card p {
     font-size: 85%;
   }
   #menu .jumbo .foot-card .product-card-title {
     font-size: 105%;
     min-height: 65px;
     max-height: 65px;
   }
   #menu .button-quickview.button-jumbo {
     display: flex;
   }
   #menu .countdown.count-jumbo .time-left .count-text {
     height: 50px;
   }
   #menu .time-left {
     height: 40px;
   }
   /* END MENU JUMBO */
   /*VITRINE MENU*/
   #menu .flex[width='12'] {
     height: auto;
     align-items: center;
   }
   #menu img.img-fluid {
     max-width: 100% !important;
   }
   #menu .showcase-grid-item-content {
     margin-top: 0;
   }
   #menu ul li a.button-quickview {
     display: flex;
   }
   /*END VITRINE MENU*/
   /*POSITIONS DROP MENU*/
   #menu li>.break-drop, #menu li:hover>.break-drop {
     grid-template-columns: 1fr 50%;
   }
   #menu .drop-center .menu-subcategory ul {
     margin-left: 37%;
   }
   .menu_image_drop img {
     max-height: 500px;
     width: auto;
   }
   .menu_image_drop .swiper-banner-0 .banner-item {
     text-align: end;
   }
   .menu_image_drop .banner-item {
     text-align: center;
   }
   .menu_image_drop {
     padding: 10px;
   }
   #menu .product-card-list .card-countdown, #menu .product-card-list .product-card-list-action {
     display: none;
   }
   #menu .collection-grid.mode-list .product-card-list, #menu .collection-grid.mode-grid .product-card-list {
     height: 100%;
     align-items: flex-start;
   }
   /*END DROP MENU*/
   /*MENU-FIXED*/
   .header-fixed-botton .menu-icon {
     display: none;
   }
   /*END-MENU-FIXED*/
   /*BREAK COLUMNS*/
   #menu .menu_item_drop.col-1 {
     grid-template-columns: 1fr;
   }
   #menu .drop-full .menu_item_drop.col-2 {
     max-width: .8rem;
   }
   #menu .drop-full .menu_item_drop.col-1 {
     max-width: .8rem;
   }
   #menu .menu_item_drop.col-2 {
     grid-template-columns: 1fr 1fr;
   }
   #menu .menu_item_drop.col-3 {
     grid-template-columns: 1fr 1fr 1fr;
   }
   #menu .menu_item_drop.col-4 {
     grid-template-columns: 1fr 1fr 1fr 1fr;
   }
   #menu .menu_item_drop.col-5 {
     grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
   }
   #menu .menu_item_drop.col-6 {
     grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr;
   }
   #menu .menu_item_drop.col-7 {
     grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr;
   }
   #menu .menu_item_drop {
     display: grid;
     align-content: baseline;
     padding: 10px;
   }
   /*END BREAK COLUMNS*/
   #menu img.menu-icon {
     max-width: 50px;
   }
   .header-body.fixed #menu img.menu-icon {
     display: none;
   }
   #menu .showcase-grup .title {
     display: none;
   }
   #menu .menu_image_drop {
     padding: 10px;
     width: 100%;
   }
   .menu_image_drop .showcase-element {
     margin-bottom: 0;
   }
   .menu_image_drop .showcase-grup {
     margin: 0;
   }
   #menu  .menu_image_drop .img-drop-menu {
     max-width: 100%;
     height: auto;
   }
   #menu>ul>li:hover>a::after {
     width: 100%;
   }
   #menu>ul>li>a::after {
     content: "";
     background: var(--cor-realce-cb-menu);
     width: 0;
     height: 2px;
     left: 0;
     right: 0;
     bottom: 0;
     margin: auto;
     display: block;
     position: absolute;
     margin-top: 5px;
     transition: all 350ms ease-out 0s;
     -moz-transition: all 350ms ease-out 0s;
     -o-transition: all 350ms ease-out 0s;
     -webkit-transition: all 350ms ease-out 0s;
   }
   .header-menu .automatic-menu {
     background-color: var(--cor-bg-menu);
   }
   .grayBottom {
     display: none;
   }
   .customer-area-menu, .menu-store-logo {
     display: none;
   }
   .close-header-fixMenu {
     display: none
   }
   .submenu-button .fa-angle-up.fa-w-10 {
     display: none;
   }
   .submenu-opened .fa-angle-up.fa-w-10 {
     display: block;
   }
   .submenu-opened .fa-angle-down.fa-w-10 {
     display: none;
   }
   .submenu-opened .fa-angle-down.fa-w-10 {
     display: none
   }
   #menu .list-categories {
     width: max-content;
     width: -moz-max-content;
     max-width: 100%;
     margin: 0 auto !important;
     display: flex;
     flex-wrap: wrap;
     justify-content: center;
   }
   #menu>ul>li>a {
     font-size: 100%;
     font-weight: 500;
     padding: 10px 15px;
     text-decoration: none;
     /*
     color: var(--norton-vermelho-geral);
     */
     color: #FFF;
     -webkit-transition: color .2s ease;
     -moz-transition: color .2s ease;
     -ms-transition: color .2s ease;
     -o-transition: color .2s ease;
     transition: color .2s ease;
     display: flex;
     justify-content: center;
     align-items: center;
     flex-direction: column;
     position: relative;
     gap: 10px;
     font-weight: 500;
   }
   #menu>ul>li>a:hover {
    color: #FFF;
    /*
     color: var(--norton-vermelho-geral);
     */
   }
   #menu>ul>li.is-active a {
     font-weight: 600;
   }
   #menu ul ul {
     z-index: 7;
     position: absolute;
     display: grid;
     grid-template-columns: 1fr 1fr 1fr 1fr;
     gap: 10px;
     padding: 5px;
     visibility: hidden;
     background: var(--cor-bg-fundo-sub, #111);
     opacity: 0;
     -webkit-opacity: 0;
     -moz-opacity: 0;
     -webkit-transition: all 0.5s ease 0s;
     -moz-transition: all 0.5s ease 0s;
     -o-transition: all 0.5s ease 0s;
     transition: all 0.5s ease 0s;
     box-shadow: 0 1px 5px rgb(0 0 0 / 35%);
     -moz-box-shadow: 0 1px 5px rgba(0,0,0,0.11);
     -webkit-box-shadow: 0 1px 5px rgb(0 0 0 / 35%);
   }
   #menu ul ul.mega-menu__list{
     opacity: 1;
     visibility: visible;
     position: relative;
     background: none;
     color: black;
     box-shadow: 0 1px 5px rgb(0 0 0 / 0%);
     -moz-box-shadow: 0 1px 5px rgba(0,0,0,0);
     -webkit-box-shadow: 0 1px 5px rgb(0 0 0 / 0);
   }
   #menu ul ul.mega-menu__list li a{
     color: black;
   }
   #menu li:hover>ul {
     display: grid;
     grid-template-columns: 1fr;
     gap: 10px;
     visibility: visible;
     opacity: 1;
     -khtml-opacity: 1;
     -webkit-opacity: 1;
     -moz-opacity: 1;
     background: var(--cor-bg-fundo-sub, #111);
   }
   #menu ul ul li {
     height: auto;
     text-align: left;
     -webkit-transition: height .2s ease;
     -moz-transition: height .2s ease;
     -ms-transition: height .2s ease;
     -o-transition: height .2s ease;
     transition: height .2s ease;
   }
   #menu ul ul li a {
     padding: 10px 10px;
     min-width: 170px;
     min-height: 20px;
     color: var(--cor-txt-menu);
     -webkit-transition: color .2s ease;
     -moz-transition: color .2s ease;
     -ms-transition: color .2s ease;
     -o-transition: color .2s ease;
     transition: color .2s ease;
     word-break: break-word;
     white-space: break-spaces;
     font-weight: 400;
     opacity: 1;
   }
   #menu ul ul li:hover>a,
   #menu ul ul li a:hover {
     background-color: var(--cor-realce-cb-menu);
     color: white;
   }
   .button-automatic-menu {
     display: none;
   }
   #menu .list-categories span.submenu-button {
     display: none;
   }
   .arrows-desk {
     font-size: 70%;
   }
   #menu .menu_item_drop li {
     display: flex;
     align-items: center;
     padding: 0 15px;
     width: fit-content;
     position: relative;
   }
   #menu .menu_item_drop li a{
     color: #000;
   }
   @media (min-width: 1000px) {
     .store-menu #menu .menu-subcategory {
       display: flex;
       align-items: center;
       padding: 0 15px;
       width: fit-content;
       position: relative;
     }
     #menu ul ul ul {
       left: 100%;
       top: -15px;
     }
     #menu li>ul.drop-full {
       position: absolute;
       width: 97vw;
       grid-template-columns: 1fr 50%;
       top: auto;
       left: 50%;
       transform: translate(-50%, 0) !important;
     }
     #menu li>ul.drop-center {
       position: absolute;
       min-width: 600px;
       max-width: 97vw;
       left: 50%;
       transform: translate(-50%, 0) !important;
     }
   }
   @media all and (max-width: 1000px) {
     .other-categories {
       position: relative;
     }
     .other-categories .drop-right {
       left: unset !important;
       right: 0;
     }
     .other-categories .drop-right .menu-subcategory {
       flex-direction: row-reverse;
       justify-content: space-between;
       width: 100% !important;
     }
     .other-categories .drop-right .menu-subcategory a {
       text-align: end;
     }
     .other-categories .drop-right .menu-subcategory .arrows-desk {
       transform: rotate(180deg);
     }
     .other-categories .drop-right .menu-subcategory ul {
       left: unset !important;
       right: 100%;
     }
     img.menu-icon {
       display: none;
     }
     #menu li>ul.drop-full {
       width: 100%;
     }
     .submenu-button .fa-angle-up {
       display: none;
     }
     .submenu-opened .fa-angle-up {
       display: block;
     }
     .submenu-button .fa-angle-down {
       display: block;
     }
     .submenu-opened .fa-angle-down {
       display: none;
     }
     #menu ul.drop-center.break-drop.open {
       left: 0 !important;
       width: 100% !important;
     }
     #menu li:hover>ul {
       display: none;
     }
     #menu .list-categories-fixed span.submenu-button{
       display: flex !important;
     }
     .arrows-desk {
       display: none;
     }
     .bars-cab-scroll {
       display: none !important;
     }
     .button-automatic-menu {
       display: block;
     }
     #menu {
       width: 100%;
     }
     .store-menu {
       overflow: auto;
       height: 100%;
       margin: 0;
       padding: 0;
     }
     .store-menu.container {
       overflow: auto;
       height: 100%;
       padding: 0;
     }
     #menu .list-categories {
       width: 100%;
     }
     #menu ul ul {
       display: none;
     }
     #menu ul ul.open {
       opacity: 1;
       box-shadow: none;
       border-top: 1px solid var(--color-txt-20);
       visibility: visible !important;
       transform: scaleY(1);
     }
     #menu ul li,
     #menu ul ul li,
     #menu ul li:hover>ul>li {
       width: 100%;
       height: auto;
     }
     #menu>ul>li.has-sub>a {
       padding: 15px;
       width: 100%;
       align-items: flex-start;
       -webkit-transition: all 0.25s ease-out;
       -moz-transition: all 0.25s ease-out;
       -ms-transition: all 0.25s ease-out;
       -o-transition: all 0.25s ease-out;
       transition: all 0.25s ease-out;
     }
     #menu>ul>li:hover>a,
     #menu>ul>li.active>a {
       background-color: transparent;
     }
     #menu ul ul li a {
       font-weight: normal;
       color: var(--cor-txt-menu);
       background: none;
       padding: 15px 0px 15px 20px;
     }
     #menu ul ul.open li + li {
       border-top: 1px solid #ccc;
     }
     #menu ul ul ul li a {
       padding-left: 40px;
     }
     #menu ul ul,
     #menu ul ul ul {
       position: relative;
       left: 0;
       right: auto;
       width: 100%;
       margin: 0;
     }
     li.has-sub.has-sub-main {
       display: flex;
       flex-wrap: wrap;
       flex-direction: row-reverse;
       justify-content: flex-end;
     }
     li.has-sub.has-sub-main>a {
       width: 85% !important;
     }
     #menu>ul>li>a::after {
       display: none;
     }
     #menu .menu_item_drop li {
       padding: 0;
     }
     #menu ul ul.open .menu-subcategory {
       display: flex;
       flex-wrap: wrap;
       width: 100% !important;
       justify-content: space-between;
     }
     div#menu .list-categories span.submenu-button {
       display: flex;
     }
     #menu .submenu-button {
       width: 45px;
       display: flex;
       align-items: center;
       justify-content: center;
       height: 45px;
       cursor: pointer;
       z-index: 4;
       right: 0;
       color: var(--cor-txt-menu);
     }
     #menu .submenu-button i.fa-angle-up {
       display: none;
     }
     div#menu .list-categories span.submenu-opened i.fa-angle-up {
       display: flex;
     }
     div#menu .list-categories span.submenu-opened i.fa-angle-down {
       display: none;
     }
     .automatic-menu {
       padding: 0;
       position: absolute;
       width: 90%;
       top: 0;
       height: 100vh;
       z-index: 1000;
       transform: translateX(-110%);
       transition: transform 100ms;
     }
     .close-header-fixMenu {
       position: absolute;
       background: #555;
       color: #fff;
       right: -30px;
       top: 10px;
       color: #fff;
       border-radius: 100%;
       margin: 8px;
       font-size: 100%;
       width: 30px;
       height: 30px;
       z-index: 9;
     }
     #menu>ul>li+li {
       border-top: 1px solid #ccc;
     }
     #menu>ul>li {
       padding: 0;
       margin: 0;
     }
     #menu>ul>li:hover {
       background-color: var(--norton-vermelho-geral);
     }
     #menu>ul>li>a {
       color: var(--norton-vermelho-geral);
       /*color:#FFF;*/
       text-align: left;
     }
     .header-customer-menu {
       display: grid;
       grid-template-columns: 1fr 1fr;
       padding: 15px;
       gap: 30px;
       position: sticky;
       top: 0;
       z-index: 8;
       background-color: var(--cor-bg-cabecalho);
       color: var(--cor-txt-cabecalho);
       border-bottom: 1px solid var(--cor-txt-cabecalho);
     }
     .header-customer-menu .menu-store-logo {
       display: flex;
     }
     .header-customer-menu .menu-store-logo img {
       max-width: 120px;
     }
     .header-customer-menu .customer-area-menu {
       display: flex;
       align-items: center;
       justify-content: flex-end;
     }
     .header-customer-menu .customer-area-menu a {
       color: var(--cor-txt-menu);
       align-items: center;
       display: flex;
       font-size: 70%;
     }
     span.icon-menu-user {
       font-size: 2em;
       margin-right: 10px;
     }
     .grayBottom {
       position: absolute;
       top: 0;
       left: 0;
       background-color: #000;
       opacity: 0.55;
       z-index: 2;
       width: 100%;
       height: 100%;
     }
     .automatic-menu.is-active .close-header-fixMenu {
       display: flex;
       cursor: pointer;
       align-items: center;
       justify-content: center;
     }
     .automatic-menu.is-active {
       transform: translateX(-8%);
       right: 30px;
       position: fixed;
       transition: transform 500ms;
     }
     .automatic-menu.is-active+.grayBottom {
       display: block;
       position: fixed;
     }
     .open {
       display: block !important;
     }
     .header-menu .automatic-menu {
       background: var(--cor-bg-menu) !important;
     }
     #menu-template ul ul, .menu_image_drop {
       display: none;
     }
     .menu_item_drop {
       display: block !important;
       padding: 0px !important;
     }
   }
   @media (max-width: 600px) {
     .header-customer-menu .customer-area-menu a {
       font-size: 60%;
     }
     .automatic-menu.is-active {
       transform: translateX(-5%);
     }
   }
   @media (max-width: 400px) {
     .automatic-menu.is-active {
       transform: translateX(-3%);
     }
   }
   .img-hamburger-menu{
     margin: 0 5px;
   }
 </style>
 {% endif %}
 {# MENU #}
 <div id="menu" class="navigation">
   <div class="ps-container">
         {# CONTEÚDO MENU CATEGORIAS #}
         <div class="menu__content">
         </div>
       </div>
     </div>
     <div class="navigation__right">
       <div id="menu">
         <ul class="list-categories">
           {% set categoryLimit = variables.cms_cabecalho.cms_category_limit / 2 %}
           {% set categoryLimit = categoryLimit < categories|length ? categoryLimit : categories|length + 1 %}
           {% set categoryCount = 0 %}
           {% set categoryIndex = 0 %}
           {% for category in categories %} 
           {% set categoryCount = categoryCount + 1 %}
           {% if (categoryCount < categoryLimit) %}
           {% set categoryPos = '' %}
           <!-- load category media -->
           {% set categoryTag = 'menu_' ~ category.name|convert_encoding('UTF-8', 'ISO-8859-1')|slug('_')|lower %}
           {% set categoryMedia = showcase.getByTag(categoryTag) %}
           {% if categoryMedia == false %}
           {% set categoryMedia = banners.getByTag([categoryTag]) %}
           {% endif %}
           <!-- defines dropdown position -->
           {% if variables.cms_cabecalho.cms_menu_full and (category.subCategories|length > 24) %}
           {% set categoryPos = 'drop-full' %}
           {% elseif categoryMedia %}
           {% set categoryPos = 'drop-center' %}
           {% elseif categories|length > 4 %}
           {% set categoryIndex = categoryIndex + 1 %}
           {% set leftCount = ((categories|length / 3) * 2)|round %}
           {% if categoryIndex > leftCount %}
           {% set categoryPos = 'drop-right' %}
           {% endif %}
           {% endif %}
           <li class="has-sub has-sub-main">
             {% if category.subCategories|length != 0 %}
             {# <span class="submenu-button"> 
               <i class="far fa-angle-down"></i> 
               <i class="far fa-angle-up"></i> 
             </span> #}
             {% endif %}
             <a href="{{category.url}}">
               {% if category.img_h %}
               <img alt="icone_categoria" class="menu-icon" src="{{category.img_h}}" />
               {% endif %}    
               {{category.name | raw}}
             </a>
                   {% endif %}
                 </li>
                 {% endfor %}
               </div>
               {% if categoryMedia %}
               <div class="menu_image_drop" id="{{categoryTag}}">
                 {{categoryMedia}}
               </div>
             </ul>
             {% endif %}
           </li>
           {% if (categoryCount > categoryLimit) %}
           {% endif %}
           {% if categoryCount > 10 and categoryLimit > 10 %}
           <script>
             $('.header-menu').addClass('extended');
           </script>
           {% endif %}
         </ul>
       </div>
 {# FIM DE MENU #}
 <script>
   /* MENU-CABECALHO */
   $(document).ready(function () {
     $("#menu .break-drop:has(.menu_image_drop .custom-content .carousel-products-wrapper[data-items=1])").css("grid-template-columns","1fr 25%");
     $(".close-header-fixMenu, .btn-openMenu").on("click", function () {
       $(".automatic-menu").toggleClass("is-active");
       $("body").toggleClass("flow-y");
     }
                                                 );
     $("#menu-template > ul > li").each(function () {
       if (!$(this).find("ul li").length) {
         $(this).find(".submenu-button").css("display", "none");
       }
     }
                                       );
     $(".submenu-button").on("click", function () {
       $(this).next().next().toggleClass("open");
       $(this).toggleClass("submenu-opened");
     }
                            );
   }
                    );
   $(".header-search").on("click", function () {
     $(".header-search-open").addClass("action-search");
   }
                         );
   $(".bars-cab-scroll").on("click", function () {
     $(".header-menu.menu-hide").toggleClass("show-menu");
     $(".bars-cab-scroll span:first-child").toggleClass("one-bars");
     $(".bars-cab-scroll span:nth-child(2)").toggleClass("two-bars");
     $(".bars-cab-scroll span:last-child").toggleClass("three-bars");
   }
                           );
 </script>
 