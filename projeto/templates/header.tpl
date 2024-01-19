<link href="{{ variables.cms_config_geral.cms_fonte_url }}" rel="stylesheet" />
{% include 'assets/style_variables.tpl' %}
{{ include('cart/sidecart.tpl', {type:'body'})}}
<style>
  /*-- Inclus?o de css geral --*/
  {% include 'assets/showcase_style.css' %}
  {% include 'assets/utility.css' %}
  {% include 'assets/buttons.css' %}
  {% include 'assets/collection_list.css' %}
  {% include 'assets/form_inputs.css' %}
  {% include 'assets/theme_template.css' %}
  {% include 'assets/templatenovo.css' %}
  /*-- Fim Inclus?o de css geral --*/
  /*== HEADER ==*/
  /*-- header top --*/
  .header-contacts-sociais {
    display: flex;
    gap: 10px;
  }
  .header-top {
    background-color: var(--cor-bg-login);
  }
  .header-container-top a, .header-container-top span {
    color: var(--cor-txt-login);
  }
  .header-container-top a:hover {
    color: var(--cor-realce-cb-login);
  }
  .header-body ul.header-contact-list a {
    position: relative;
  }
  /*--fim header top --*/
  /*-- header body --*/
  .header-body {
    background-color: var(--cor-bg-cabecalho);
    top: -70px;
    transition: top ease-in-out 300ms;
  }
  .header-container-body {
    padding: 1.875rem 0.938rem;
  }
  .header-logo, .header-cart, .header-menu {
    align-self: center;
  }
  .header-logo {
    gap: 10px;
  }
  .header-logo img {
    height: {{ variables.cms_cabecalho.cms_altura_img_logo }}px;
  }
  .header-user-area ul {
    gap: 20px;
    position: relative;
    justify-content: end;
  }
  .header-user-area ul li, .header-user-area ul li a, .btn-openMenu {
    color: var(--cor-txt-cabecalho);
  }
  .header-user {
    position: relative;
  }
  .header-customer-area {
    position: absolute;
    background: var(--cor-bg-cabecalho);
    z-index: 8;
    margin: 0;
    border-radius: 0;
    border: none;
    box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    -moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    -webkit-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    padding: 15px;
    right: 0px;
    top: 37px;
    visibility: hidden;
    opacity: 0;
    min-width: 150px;
    -webkit-transition: all .5s ease;
    -moz-transition: all .5s ease;
    -ms-transition: all .5s ease;
    -o-transition: all .5s ease;
    transition: all .5s ease;
  }
  .header-icon-user:hover .header-customer-area{
    visibility: visible;
    opacity: 1;
  }
  .header-customer-area a:hover {
    color: var(--cor-realce-cb-realce);
  }
  .header-customer-area a:after {
    background-color: var(--cor-realce-cb-realce);
  }
  .header-customer-area a {
    width: fit-content;
  }
  .header-customer-area .logged-in, .header-customer-area .logged-out {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }
  .header-icon {
    cursor: pointer;
    border: 1px solid;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 100%;
    width: 2.500rem;
    height: 2.500rem;
    padding: 0.625rem;
  }
  .extended {
    order: 2;
    width: 100%;
  }
  /*-- LOGO Central --*/
  .header-navigation-list {
    gap: 15px;
  }
  .header-body:not(.fixed) .header-central-logo .header-navigation-list, .header-body:not(.fixed) .header-central-logo .header-user-area {
    min-width: 350px;
  }
  .header-body:not(.fixed) .header-central-logo .header-user-area ul {
    justify-content: flex-end;
  }
  .header-contact-list {
    line-height: 1.500;
  }
  .header--mobile .header__top-links > li{
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }
  .header--mobile .header__top-links > li > a{
    height: 50px;
    display: flex;
    flex-direction: row;
    align-items: center;
    gap: 5px;
  }
  @media (min-width: 1000px) {
    /*-- logo centralizada --*/
    .header-body:not(.fixed) .header-central-logo .header-logo {
      margin: 0 auto;
      order: 2;
      justify-content: center;
    }
    .header-body:not(.fixed) .header-central-logo .header-menu {
      width: 100%;
      order: 4;
    }
    .header-body:not(.fixed) .header-central-logo .header-search {
      order: 1;
    }
    .header-body:not(.fixed) .header-central-logo .header-search, .header-body:not(.fixed) .header-central-logo .header-user-area {
      min-width: unset;
      max-width: 20%;
    }
    .header-body:not(.fixed) .header-central-logo .header-user-area {
      order: 3;
    }
  }
  @media (max-width: 1000px){
    .header-body .header-central-logo {
      gap: 0 15px;
      display: flex;
      justify-content: space-between;
    }
    .header-logo img {
      height: auto;
      width: 100%;
    }
    .header-body:not(.fixed) .header-central-logo .header-navigation-list, .header-body:not(.fixed) .header-central-logo .header-user-area {
      min-width: unset;
    }
    .header-body:not(.fixed) .header-central-logo .flex[width='4'] {
      flex-basis: auto;
      max-width: unset;
    }
    .header-central-logo .header-logo {
      margin: 0;
    }
  }
  /*-- FIm LOGO Central --*/
  /* Burgue header */
  .header-body.fixed .bars-cab-scroll {
    cursor: pointer;
  }
  .bars-cab-scroll span {
    position: relative;
    width: 20px;
    height: 2px;
    background: var(--cor-txt-cabecalho);
    display: block;
    -webkit-border-radius: 3px;
    border-radius: 3px;
    -o-transition: all .1s ease-in-out;
    transition: all .1s ease-in-out;
  }
  .bars-cab-scroll span:nth-child(2) {
    top: 10px;
  }
  .bars-cab-scroll span:last-child {
    top: 2px;
  }
  .one-bars {
    opacity: 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
    top: 6px;
  }
  .two-bars {
    top: 4.3px!important;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
  }
  .three-bars {
    -webkit-transform: rotate(-45deg);
    -ms-transform: rotate(-45deg);
    transform: rotate(-45deg);
  }
  /* End burgue header */
  /*-- CSS search --*/
  .header-body .header-search input#keywords {
    border: none;
    background: 0 0;
    padding: 5px 0 5px 15px;
    font-size: 1em;
    color: var(--cor-txt-busca);
  }
  .header-body .header-search button {
    border: none;
    cursor: pointer;
    background: 0 0;
    padding: 0 15px;
  }
  .header-body .header-search form#frmbusca {
    background: var(--cor-bg-busca);
    height: 2.5rem;
    border-radius: 20px;
    border: 1px solid #f1f1f1;
  }
  /*-- buca suggestions --*/
  .autocomplete-suggestions {
    box-shadow: 0px 2px 7px 0px rgb(0 0 0 / 11%);
    -moz-box-shadow: 0px 2px 7px 0px rgba(0,0,0,0.11);
    -webkit-box-shadow: 0px 2px 7px 0px rgb(0 0 0 / 11%);
    border: 1px solid #f9f9f9;
  }
  .autocomplete-suggestion {
    display: flex;
    justify-content: flex-start;
    border-bottom: 1px solid var(--color-txt-20);
    background-color: var(--cor-bg-blcs-gp);
  }
  .autocomplete-suggestion-img {
    position: relative;
    min-width: 100px;
    margin: auto;
    display: flex !important;
  }
  .autocomplete-col-s12 > div + div {
    margin-top: 10px;
  }
  .autocomplete-suggestion-body .autocomplete-title {
    color: var(--cor-txt-nome-prto);
    font-size: 100%;
    font-weight: 500;
  }
  .autocomplete-suggestion-body .autocomplete-desc {
    color: var(--cor-txt-nome-prto);
    font-size: 60%;
    letter-spacing: 0.2px;
    opacity: 0.8;
  }
  .autocomplete-suggestion-body .autocomplete-price {
    color: var(--cor-txt-prc-prto);
    font-size: 100%;
    font-weight: 500;
  }
  .suggestions-footer a {
    color: var(--cor-txt-bt-confirm);
    background-color: var(--cor-bg-bt-confirm);
  }
  .suggestions-footer a:hover {
    color: var(--cor-txt-bt-confirm) !important;
    background-color: var(--cor-realce-bt-confirm);
  }
  /*-- fim CSS search --*/
  @media (max-width: 1200px) {
    .header-body:not(.fixed) .header-menu {
      order: 3;
      width: 100%;
    }
  }
  /*--fim header body --*/
  @media (max-width: 1000px) {
    .header-navigation-list {
      display: none;
    }
    .header-menu {
      order: 3;
      width: 100%;
    }
    .header-body .header-container-body .header-content .header-logo, .header-user-area {
      max-width: 180px !important;
    }
    .header-icon {
      width: 1.875rem;
      height: 1.875rem;
      font-size: 0.8750em;
    }
    .header-top {
      font-size: 0.875rem;
    }
    .header-body .header-search form#frmbusca {
      height: auto;
    }
  }
  @media (max-width: 768px) {
    .header-navigation-list {
      display: none;
    }
    .header-top .header-contacts-sociais {
      display: none;
    }
    .header-top .header-customer-login {
      width: 100%;
      text-align: center;
    }
    .header-logo a {
      display: flex;
      justify-content: flex-start;
    }
    /*
    .header-logo img {
    max-width: 100px;
    height: auto;
    margin-left: 1px;
  }
    */
    .header-user-area ul {
      font-size: 100%;
      justify-content: flex-end;
      gap: 15px;
    }
    .header-search-open form {
      width: 80%;
      top: 0;
    }
    .header-close-search {
      top: 5px;
      right: 5px;
      width: 20px;
      height: 20px;
      font-size: 60%;
    }
    .header-btn-cart .sidenav-title {
      top: -8px;
      left: -10px;
    }
    .header-search {
      -ms-flex-preferred-size: 100% !important;
      flex-basis: 100% !important;
      max-width: 100% !important;
      order: 4;
      width: 100%;
      margin-top: 15px;
    }
    .header-content {
      justify-content: space-between;
    }
    .header-icon {
      width: 1.5625rem;
      height: 1.5625rem;
      font-size: 0.75em;
    }
    .header-container-body {
      padding: 0.625rem;
    }
  }
  /*== FIM HEADER CSS ==*/
  /*== HEADER FIXED ==*/
  .header-body.fixed {
    position: fixed;
    top: 0;
    background-color: var(--cor-bg-cabecalho);
    height: 70px;
    z-index: 9;
    width: 100%;
    -webkit-box-shadow: 0px 0px 3px 3px rgb(0 0 0 / 3%);
    box-shadow: 0px 0px 3px 3px rgb(0 0 0 / 3%);
  }
  .header-body.fixed .header-container-body {
    height: 100%;
  }
  .header-body.fixed .header-search form#frmbusca {
    height: auto;
  }
  .header-body.fixed.extended {
    height: 120px;
  }
  /*
  .header-body.fixed .header-logo img{
  max-height: 36px;
  }
  */
  .header-body.fixed .header-navigation-list{
    display: none;
  }
  .header-body.fixed .header-user-area ul {
    font-size: 1em;
  }
  @media (max-width: 600px) {
    .header-body.fixed {
      height: auto;
    }
  }
  /*== FIM HEADER FIXED ==*/  
</style>
{% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_cabecalho.cms_exibir_lp) %}
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://front-libs.iset.io/libs/quicksearch/auto-complete.min.css" rel="stylesheet"/>
{% endif %}
<!--api whats-->
{% set tel_ddd = variables.informacoes_loja.whatsapp|slice(0,2)%}
{% set tel_prefixo = variables.informacoes_loja.whatsapp|slice(2,5) %}
{% set tel_sufixo = variables.informacoes_loja.whatsapp|slice(7, 4) %}
{% set tel_formatado = '(' ~ tel_ddd ~ ') ' ~ tel_prefixo ~ '-' ~ tel_sufixo %}
<!-- api telefone -->
{% set fixo_ddd = variables.informacoes_loja.telefone|slice(0,2)%}
{% set fixo_prefixo = variables.informacoes_loja.telefone|slice(2,4) %}
{% set fixo_sufixo = variables.informacoes_loja.telefone|slice(6, 4) %}
{% set fixo_formatado = '(' ~ fixo_ddd ~ ') ' ~ fixo_prefixo ~ '-' ~ fixo_sufixo %}
<!-- FIM --> 
<!--LP sem cabecalho-->
{% if section.id == "pages_content" and "lp" in section.slug %}
<div class="float-sidecart-button sidecart-button">
  {{ include('cart/sidecart.tpl', {type:'button'})}}
</div>
<style>
  section.pages_content .container {
    padding: 0;
    max-width: none;
    margin: 0;
  }
  a {
    cursor: pointer;
    text-decoration: none;
  }
  .cart-lp-lateral ul {
    padding: 0;
    list-style: none;
  }
  ul#breadcrumb {
    display: none !important;
  }
  header.page-header {
    display: none;
  }
  section .pages_content .container {
    max-width: none;
    margin: 0;
    display: block;
    padding: 0;
  }
  .pages_content .page-center-content .page-content {
    margin: 0 !important;
  }
  .float-sidecart-button {
    position: fixed;
    top: 50px;
    right: 10px;
    z-index: 7;
    border-radius: 100%;
    opacity: 0.5;
    display: flex;
    align-items: center;
    justify-content: center;
    background: var(--cor-bg-cabecalho, #fff);
    color: var(--cor-txt-gerais, #000);
    width: 48px;
    height: 48px;
    webkit-box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
    box-shadow: 0px 3px 10px -6px #000000, 0px 0px 5px 5px rgb(0 0 0 / 0%);
  }
  .float-sidecart-button:hover {
    opacity: 1;
  }
  .float-sidecart-button .sidecart-items-counter{
    top: 0px;
    right: 0px;
  }
</style>
{% endif %} 
<!--FIM-->
{% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_cabecalho.cms_exibir_lp) %}
<header class="header header--standard header--market-place-4">
  {{ include('cart/sidecart.tpl', {type:'offer'})}}
  {% if variables.cms_cabecalho.cms_bg_login is not empty %}
  <div class="header-spacer" style="height: 0px;">
  </div>
  <div class="header-top">
    {# MEU CODIGO HEADER #}
    <div class="header__top">
      <div class="container">
        <div class="header__right">
          <ul class="header__top-links">
            <li>
              <a href="#">
                <img src="{{ variables.icones_loja.icone_chat }}" alt="Balão Fale Conosco">
                <span>Fale Conosco</span>
              </a>
            </li>
            <li>
              <a href="https://api.whatsapp.com/send?phone=55{{ variables.informacoes_loja.whatsapp }}" target="_blank">
                <img src="{{ variables.icones_loja.icone_whatsapp }}" alt="Icone do Whatsapp">
                <span>{{ tel_formatado }}</span>
              </a>
            </li>
            <li>
              <a href="tel:{{ variables.informacoes_loja.telefone }}">
                <img src="{{ variables.icones_loja.icone_telefone }}" alt="Icone do telefone">
                <span>{{ fixo_formatado}}</span>
              </a>
            </li>
            <li>
              Horário de Atendimento: 
              <span>Seg a sex de {{ variables.informacoes_loja.horario_inicio }} ás {{ variables.informacoes_loja.horario_final }}
              </span>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="header__content">
      <div class="container">
        <div class="header__content-left">
          <a class="ps-logo" href="/index.php">
            <img src="{{images.logo}}" alt="">
          </a>
        </div>
        <div class="header__content-center">
          <form class="ps-form--quick-search" action="{{goto.search}}" method="get" name="frmbusca" id="frmbusca">
            <input class="form-control" id="keywords" name="keywords" placeholder="Buscar..." type="text" autofocus>
            <button type="submit">
              {#<i class="fal fa-search"></i>#}
              Procurar
            </button>
          </form>
        </div>
        {% set icons_color = '#FFFFFF' %} <!-- CORES DOS ICONES A SEGUIR! -->
        {% set icons_hover = '#DD1836' %} <!-- CORES DOS ICONES EM HOVER! -->
        <style>
          .header__extra:hover .icons_hover_fill, .ps-cart--mini:hover .icons_hover_fill{
            fill: {{icons_hover|raw}};
          }
          .ps-block--user-header:hover .icons_hover_fill{
            stroke: {{icons_hover|raw}};
          }
        </style>
        <div class="header__content-right">
          <div class="header__actions">
            <style>
              .norton-atendimento{
                display: flex;
                flex-direction: row;
                align-items: center;
                gap: 10px;
              }
              .norton-atendimento > p{
                color: #FFFFFF;
                font-weight: 700;
              }
            </style>
            <a href="/atendimento/">
              <div class="norton-atendimento">
                <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
                  <path d="M17.74 30.731L16 29.731L20 22.731H26C26.5304 22.731 27.0391 22.5202 27.4142 22.1452C27.7893 21.7701 28 21.2614 28 20.731V8.73096C28 8.20052 27.7893 7.69182 27.4142 7.31674C27.0391 6.94167 26.5304 6.73096 26 6.73096H6C5.46957 6.73096 4.96086 6.94167 4.58579 7.31674C4.21071 7.69182 4 8.20052 4 8.73096V20.731C4 21.2614 4.21071 21.7701 4.58579 22.1452C4.96086 22.5202 5.46957 22.731 6 22.731H15V24.731H6C4.93913 24.731 3.92172 24.3095 3.17157 23.5594C2.42143 22.8092 2 21.7918 2 20.731V8.73096C2 7.67009 2.42143 6.65268 3.17157 5.90253C3.92172 5.15238 4.93913 4.73096 6 4.73096H26C27.0609 4.73096 28.0783 5.15238 28.8284 5.90253C29.5786 6.65268 30 7.67009 30 8.73096V20.731C30 21.7918 29.5786 22.8092 28.8284 23.5594C28.0783 24.3095 27.0609 24.731 26 24.731H21.16L17.74 30.731Z" fill="white"/>
                  <path d="M8 10.731H24V12.731H8V10.731ZM8 16.731H18V18.731H8V16.731Z" fill="white"/>
                </svg>
                <p>Atendimento</p>
              </div>
            </a>
            <a class="header__extra" href="#">
              <!--<img src="{#{{ variables.icones_loja.coracao }}#}" alt="Ícone de coração, like.">-->
              <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 256 256">
                <path class="icons_hover_stoke" fill="{{icons_color|raw}}" d="M178 28c-20.09 0-37.92 7.93-50 21.56C115.92 35.93 98.09 28 78 28a66.08 66.08 0 0 0-66 66c0 72.34 105.81 130.14 110.31 132.57a12 12 0 0 0 11.38 0C138.19 224.14 244 166.34 244 94a66.08 66.08 0 0 0-66-66m-5.49 142.36a328.69 328.69 0 0 1-44.51 31.8a328.69 328.69 0 0 1-44.51-31.8C61.82 151.77 36 123.42 36 94a42 42 0 0 1 42-42c17.8 0 32.7 9.4 38.89 24.54a12 12 0 0 0 22.22 0C145.3 61.4 160.2 52 178 52a42 42 0 0 1 42 42c0 29.42-25.82 57.77-47.49 76.36"/>
              </svg>
              <span>
                <i>0</i>
              </span>
            </a>
            <div class="ps-cart--mini">
              {{ include('cart/sidecart.tpl', {type:'button', color: icons_color|raw, hover: icons_hover|raw})}}
            </div>
            <div class="ps-block--user-header">
              <div class="ps-block__left">
                <svg xmlns="http://www.w3.org/2000/svg" class="icons_hover_stroke" width="36" height="36" viewBox="0 0 24 24">
                  <g class="icons_hover_stroke" fill="none" stroke="{{icons_color|raw}}" stroke-width="2.5">
                    <path stroke-linejoin="round" d="M4 18a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2z"/>
                    <circle cx="12" cy="7" r="3"/>
                  </g>
                </svg>
                <!--<img src="{{ variables.icones_loja.perfil }}" alt="Ícone de Perfil"> -->
              </div>
              <div class="ps-block__right">
                <a href="{{goto.login}}">Login
                </a>
                <a href="{{goto.register}}">Register
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    {# FIM DO MEU CODIGO HEADER#}
  </div>
  </div>
{% endif %}
{% if variables.cms_cabecalho.cms_bg_cabecalho is not empty %}
</div>
{% endif %}
</div>
</div>
{% if variables.cms_cabecalho.cms_bg_menu is not empty %}
{% include 'snippets/menu_header.tpl' %}
{% endif %}
</div>
{% endif %}
</header>
{# HEADER MOBILE --------------------------------------------------------------------- #}
<header class="header header--mobile" data-sticky="true">
  <style>
    /* HEADER TOP --------------------*/
    .header___top{
      background-color: #5B5B5B;
      color: #FFF;
    }
    .header___top ul{
      margin: 0;
      padding: 0;
      list-style: none;
    }
    .header___top li{
      display: flex;
      align-items: center;
      gap: 5px;
      padding: 10px;
    }
    .header___top a{
      color: #FFF;
      text-decoration: none;
    }
    /* MENU --------------------*/
    .header__menu{
      background-color: #333;
      color: #FFF;
    }
    .header__menu{
      display: flex;
      flex-direction: row;
      justify-content: space-between;
      padding: 10px;
    }
    #logoNorton{
      width: 150px;
    }
    .menu_hamburger{
      margin: auto 0;
    }
    .header__menu div.hamburger{
      width: 25px;
      height: 2px;
      background-color: #FFF;
      border-radius: 1px;
      margin: 14px 0;
    }
    .header__menu div.hamburger::before{
      display: block;
      content: "";
      position: relative;
      top: -8px;
      width: 25px;
      height: 2px;
      background-color: #FFF;
      border-radius: 1px;
    }
    .header__menu div.hamburger::after{
      display: block;
      content: "";
      position: relative;
      top: 6px;
      width: 25px;
      height: 2px;
      background-color: #FFF;
      border-radius: 1px;
    }
    #button_hamburger{
      background: none;
      color: transparent;
      border: none;
    }
    #__menu{
      transition: .5s ease-in-out;
      z-index: 999;
    }
    #__menu-close{
      /*transition: .5s;*/
      position: fixed;
      top: 0;
      left: 80vw;
      height: 100vh;
      width: 20vw;
      background: rgba(0,0,0,.5);
      z-index: 999;
    }
    @media (max-width: 1200px){
      .header__menu{
        padding: 0 20%;
      }
      .header___top ul{
        font-size: x-small;
      }
      .header___top li > img{
        width: 24px;
      }
      .header___top ul{
        display: flex;
        flex-direction: row;
        justify-content: space-around;
      }
      .header___top > div{
        display: flex;
        align-items: center;
        justify-content: center;
        padding-top: 5px
      }
      .header___top > div > p{
        color: #FFF;
      }
      #__menu{
        position: fixed;
        top: 0;
        height: 100vh;
        width: 80vw;
        background: #FFF;
      }
    }
    @media (max-width: 425px){
      .header__menu{
        padding: 0;
      }
    }
    @media (max-width: 370px){
      .header___top > div > p{
        font-size: 10px;
        color: #FFF;
      }
      .header___top li{
        gap: 2.5px;
        padding: 5px;
      }
      .header___top li > img{
        width: 16px;
      }
    }
  </style>
  <!-- HEADER TOP =============================================== -->
  <div class="header___top">
    <div>
      <p>Horário de Atendimento - Seg a sex de {{ variables.informacoes_loja.horario_inicio }} ás {{ variables.informacoes_loja.horario_final }}</p>
    </div>
    <div>
      <ul>
        <a href="#">
          <li>
            <img src="{{ variables.icones_loja.icone_chat }}" alt="Chat">
            Fale Conosco
          </li>
        </a>
        <a href="https://api.whatsapp.com/send?phone=55{{ variables.informacoes_loja.whatsapp }}">
          <li>
            <img src="{{ variables.icones_loja.icone_whatsapp }}" alt="Ícone de Whatsapp">
            {{ tel_formatado }}
          </li>
        </a>
        <a href="tel:{{ variables.informacoes_loja.telefone }}">
          <li>
            <img src="{{ variables.icones_loja.icone_telefone }}" alt="Ícone de Telefone">
            {{fixo_formatado}}
          </li>
        </a>
      </ul>
    </div>
  </div>
  <!-- MENU OPEN / CLOSE ======================================== -->
  <div id="__menu" style="transform: translateX(-100%);">
    {% include 'snippets/menu_header_mobile.tpl' %}
  </div>
  <div id="__menu-close" style="display: none; ">
  </div>
  <!-- HEADER MENU ============================================== -->
  <div class="header__menu">
    <div class="menu_hamburger">
      <button id="button_hamburger" onClick="">
        <div class="hamburger">
        </div>
      </button>
    </div>
    <div class="menu__logo">
      <a href="/index.php">
        <img id="logoNorton" src="{{images.logo}}" alt="Logo Norton Distribuidora">
      </a>
    </div>
  </div>
  <!-- END -->
</header>
<script>
  let __menu = document.getElementById('__menu');
  let button_hamburger = document.getElementById('button_hamburger');
  let __menuClose = document.getElementById('__menu-close');
  __menuClose.addEventListener('click', ()=>{
    console.log('Clicado!');
    __menu.style.transform == 'translateX(-100%)' ? __menu.style.transform = 'translateX(0)' : __menu.style.transform = 'translateX(-100%)';
    if(__menuClose.style.display === 'block'){
      __menuClose.style.display = 'none'
    }
    else{
      setTimeout(()=>{
        __menuClose.style.display == 'none' ? __menuClose.style.display = 'block' : __menuClose.style.display = 'none';
      }
                 , 500);
    }
  }
                              );
  button_hamburger.addEventListener('click', ()=>{
    console.log('Clicado!');
    __menu.style.transform == 'translateX(-100%)' ? __menu.style.transform = 'translateX(0)' : __menu.style.transform = 'translateX(-100%)';
    if(__menuClose.style.display === 'block'){
      __menuClose.style.display = 'none'
    }
    else{
      setTimeout(()=>{
        __menuClose.style.display == 'none' ? __menuClose.style.display = 'block' : __menuClose.style.display = 'none';
      }
                 , 500);
    }
  }
                                   );
</script>
{# FIM HEADER MOBILE --------------------------------------------------------------------- #}
{% if section.id == "home" %}
{% if variables.cms_cabecalho.cms_transp_header is not empty %}  
<style>
  /*-- Banner fixed --*/
  .header-body {
    background-color: transparent;
    position: absolute;
    z-index: 2;
    width: 100%;
    top: auto;
  }
  .header-menu .automatic-menu {
    background: transparent !important;
  }
  @media all and (max-width: 1000px) {
    .header-menu .automatic-menu {
      background: var(--cor-bg-menu) !important;
    }
    .header-body {
      position: initial;
    }
  }
  /*-- Fim banner fixed --*/
</style>
{% if banners.getByTag(['billboard']) is empty %}
<style>
  header .header-body {
    position: initial;
  }
</style>
{% endif %}
{% endif %}
{% endif %}
{#
{% endif %}
#}
<script defer src="https://front-libs.iset.io/libs/quicksearch/auto-complete.min.js">
</script>
<script>
  /* VALIDATE CUSTOMER-LOGIN */
  $(document).ready(function () {
    var validCustomer = $.cookie("customer");
    if (validCustomer != null) {
      validCustomer = JSON.parse(validCustomer);
      nameCustomer = html_entity_decode(validCustomer.name);
      nameCustomer = nameCustomer.replace("+", " ");
      $(".logged-out").hide();
      $(".logged-in").show();
      $(".logged-in .custumer-name").text(nameCustomer);
    }
    else {
      $(".logged-out").show();
      $(".logged-in").hide();
    }
    /* AUTOCOMPLETE */
    $("#keywords, #frmbusca-mobi").autoComplete({
      menuClass: "suggestions-fixed",
      buttons: false,
    }
                                               );
    /*SEARCHBAR ACTIONS*/
    $(".header-search").on("click", function () {
      $(".header-search-open").addClass("action-search");
    }
                          );
    $(".header-close-search").on("click", function () {
      $(".header-search-open").removeClass("action-search");
    }
                                );
  }
                   );
</script>
{% if (variables.cms_cabecalho.cms_floating_header) %}
<script>
  $(document).ready(function () {
    /* FIXED HEADER HANDLER */
    $('.header-body').attr("data-bottom", $('.header-body').position().top + $('.header-body').height());
    checkHeaderPos();
    $(window).scroll(function () {
      checkHeaderPos();
    }
                    );
    function checkHeaderPos() {
      let headerBottom = Number.parseInt($('.header-body').attr("data-bottom"));
      if ($(this).scrollTop() > headerBottom) {
        const topPos = $("#cart-offer").is(":visible") ? $("#cart-offer").height() : 0;
        $(".header-body").css("top",topPos);
        $(".header-body").addClass("fixed");
        if ($(".header-menu").hasClass("extended"))
          $(".header-body").addClass("extended");
        $(".header-spacer").css('height',(headerBottom-20)+'px');
        $(".bars-cab-scroll").css("display","block");
        $(".header-menu").addClass("menu-hide");
      }
      else {
        $(".header-body").css("top","auto");
        $(".header-body").removeClass("fixed");
        $(".header-spacer").css('height','0px');
        $(".bars-cab-scroll").css("display","none");
        $(".header-menu").removeClass("menu-hide");
      }
      if (window.matchMedia('(max-width: 600px)').matches) {
        $(".header-menu").removeClass("menu-hide");
      }
    }
  }
                   );
</script>
{% endif %}
