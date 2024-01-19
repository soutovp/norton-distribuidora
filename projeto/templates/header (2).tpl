<link href="{{ variables.cms_config_geral.cms_fonte_url }}" rel="stylesheet" />
{% include 'assets/style_variables.twig' %}
{{ include('cart/sidecart.twig', {type:'body'})}}
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
    .header-logo img {
      max-width: 100px;
      height: auto;
      margin-left: 1px;
    }
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
  .header-body.fixed .header-logo img{
    max-height: 36px;
  }
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
  {{ include('cart/sidecart.twig', {type:'button'})}}
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
  {{ include('cart/sidecart.twig', {type:'offer'})}}
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
                Fale Conosco
              </a>
            </li>
            <li>
              <a href="https://api.whatsapp.com/send?phone=55{{ variables.icones_loja.icone_whatsapp }}">
                <img src="{{ variables.icones_loja.icone_whatsapp }}" alt="Ícone do Whatsapp">
                <span>{{ tel_formatado }}</span>
              </a>
            </li>
            <li>
              <a href="tel:{{ variables.icones_loja.icone_telefone }}">
                <img src="{{ variables.icones_loja.icone_telefone }}" alt="Ícone do telefone">
                <span>{{ fixo_formatado}}</span>
              </a>
            </li>
            <li>
              Horário de Atendimento: 
              <span>Seg a sex de {{ variables.informacoes_loja.horario_inicio }} às {{ variables.informacoes_loja.horario_final }}
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
            {#
            <div class="form-group--icon">
              <i class="icon-chevron-down">
              </i>
              <select class="form-control">
                <option value="1">All
                </option>
                <option value="1">Smartphone
                </option>
                <option value="1">Sounds
                </option>
                <option value="1">Technology toys
                </option>
              </select>
            </div>
            #}
            <input class="form-control" id="keywords" name="keywords" placeholder="Buscar..." type="text" autofocus>
            <button type="submit">
              {#<i class="fal fa-search"></i>#}
              Procurar
            </button>
          </form>
        </div>
        <div class="header__content-right">
          <div class="norton-atendimento">
            <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M17.74 30.731L16 29.731L20 22.731H26C26.5304 22.731 27.0391 22.5202 27.4142 22.1452C27.7893 21.7701 28 21.2614 28 20.731V8.73096C28 8.20052 27.7893 7.69182 27.4142 7.31674C27.0391 6.94167 26.5304 6.73096 26 6.73096H6C5.46957 6.73096 4.96086 6.94167 4.58579 7.31674C4.21071 7.69182 4 8.20052 4 8.73096V20.731C4 21.2614 4.21071 21.7701 4.58579 22.1452C4.96086 22.5202 5.46957 22.731 6 22.731H15V24.731H6C4.93913 24.731 3.92172 24.3095 3.17157 23.5594C2.42143 22.8092 2 21.7918 2 20.731V8.73096C2 7.67009 2.42143 6.65268 3.17157 5.90253C3.92172 5.15238 4.93913 4.73096 6 4.73096H26C27.0609 4.73096 28.0783 5.15238 28.8284 5.90253C29.5786 6.65268 30 7.67009 30 8.73096V20.731C30 21.7918 29.5786 22.8092 28.8284 23.5594C28.0783 24.3095 27.0609 24.731 26 24.731H21.16L17.74 30.731Z" fill="white"/>
              <path d="M8 10.731H24V12.731H8V10.731ZM8 16.731H18V18.731H8V16.731Z" fill="white"/>
            </svg>
            <p>Atendimento</p>
          </div>
          <div class="header__actions">
            <a class="header__extra" href="#">
              <img src="{{ variables.icones_loja.coracao }}" alt="�cone de cora��o, like.">
              <span>
                <i>0
                </i>
              </span>
            </a>
            <div class="ps-cart--mini">
              {{ include('cart/sidecart.twig', {type:'button'})}}
            </div>
            <div class="ps-block--user-header">
              <div class="ps-block__left">
                <img src="{{ variables.icones_loja.perfil }}" alt="�cone de Perfil">
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
{#
<div class="header-body">
  <div class="custom-container header-container header-container-body flex" align-items="center" justify-content="space-between">
    <div class="header-content w-100 flex {{ (variables.cms_cabecalho.cms_logo_center) ? 'header-central-logo' : '' }}" align-items="center" wrap="true" justify-content="space-between">
<div class="header-logo flex" width="3" align-items="center">
  <div class="button-automatic-menu">
    <a class="menu btn-openMenu">
      <i class="fa-regular fa-bars">
      </i>
    </a>
  </div>
  <div class="bars-cab-scroll" style="display: none;">
    <span>
    </span>
    <span>
    </span>
    <span>
    </span>
  </div>
  <a href="/index.php">
    <img alt="logo-loja" src="{{images.logo}}" title="loja" width="auto" /> 
  </a>
</div>
{% if variables.cms_cabecalho.cms_bg_busca %}
<div class="header-search flex" width="6">
  <form action="{{goto.search}}" id="frmbusca" class="flex w-100" justify-content="space-between" method="get" name="frmbusca">
    <input id="keywords" name="keywords" placeholder="Buscar..." type="text" autofocus />
    <button type="submit">
      <i class="fal fa-search">
      </i>
    </button>
  </form>
</div>
<style>
  .header-search {
    padding: 15px 0px;
  }
  .header-search form {
    position: relative;
  }
  .header-search form .input-select {
    margin-right: -4px;
    border-radius: 40px 0px 0px 40px;
  }
  .header-search form .input {
    width: calc(100% - 260px);
    margin-right: -4px;
  }
  .header-search form .search-btn {
    height: 40px;
    width: 100px;
    background: #D10024;
    color: #FFF;
    font-weight: 700;
    border: none;
    border-radius: 0px 40px 40px 0px;
  }
</style>
{#
  <div class="header-search flex" width="6">
    <form action="{{goto.search}}" id="frmbusca">
<input id="keywords" class="input" placeholder="Search here">
<button class="search-btn">Search
</button>
<button class="search-btn" type="submit">
  <i class="fal fa-search">
  </i>
</button>
</form>
</div>
#}
</div>
{% endif %}
{#
<div class="header-user-area flex" width="3" justify-content="end">
  <ul class="flex" align-items="center">
    <li class="header-user">
      <span class="header-icon header-icon-user">
        <i class="fa-solid fa-user">
        </i>
        <div class="header-customer-area">
          <div class="logged-out">
            <a href="{{goto.login}}" class="undereffect">Login
</a>
<a href="{{goto.register}}" class="undereffect">Cadastre-se
</a>
<a href="/minha-conta/listas/desejo/" class="undereffect">Lista de Desejos
</a>
</div>
<div class="logged-in" style="display: none;">
  <span class="custumer-name">
  </span>
  <a href="/minha-conta/listas/desejo/" class="undereffect">Lista de Desejos
  </a>
  <a href="{{goto.account}}" class="undereffect">Minha Conta
  </a>
  <a href="{{goto.logoff}}" class="undereffect">Sair
  </a>
</div>
</div>
</span>
</li>
<li>
  {{ include('cart/sidecart.tpl', {type:'button'})}}
</li>
</ul>
</div>
#}
</div>
</div>
{% if variables.cms_cabecalho.cms_bg_menu is not empty %}
{% include 'snippets/menu_header.twig' %}
{% endif %}
</div>
{% endif %}
</header>
<header class="header header--mobile" data-sticky="true">
  <div class="header__top">
    <div class="container">
      <div class="header__right">
        <ul class="header__top-links">
          <li>
            <a href="#">
              <img src="{{ variables.icones_loja.icone_chat }}" alt="Bal�o Fale Conosco">
              Fale Conosco
            </a>
          </li>
          <li>
            <a href="https://api.whatsapp.com/send?phone=55{{ variables.icones_loja.icone_whatsapp }}">
              <img src="{{ variables.icones_loja.icone_whatsapp }}" alt="�cone do Whatsapp">
              {{ tel_formatado }}
            </a>
          </li>
          <li>
            <a href="tel:{{ variables.icones_loja.icone_telefone }}">
              <img src="{{ variables.icones_loja.icone_telefone }}" alt="Icone do telefone">
              {{ fixo_formatado}}
            </a>
          </li>
          <li>
            Hor�rio de Atendimento: 
            <span>Seg a sex de {{ variables.informacoes_loja.horario_inicio }} �s {{ variables.informacoes_loja.horario_final }}
            </span>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="navigation--mobile">
    <div class="navigation__left">
      <a class="ps-logo" href="index.html">
        <img src="{{images.logo}}" alt="" />
      </a>
    </div>
    <div class="navigation__right">
      <div class="header__actions">
        <div class="ps-cart--mini">
          <a class="header__extra" href="#">
            <img src="{{ variables.icones_loja.carrinho }}" alt="�cone de Carrinho">
            <span>
              <i>0
              </i>
            </span>
          </a>
          <div class="ps-cart__content">
            <div class="ps-cart__items">
              <div class="ps-product--cart-mobile">
                <div class="ps-product__thumbnail">
                  <a href="#">
                    <img src="img/products/clothing/7.jpg" alt="" />
                  </a>
                </div>
                <div class="ps-product__content">
                  <a class="ps-product__remove" href="#">
                    <i class="icon-cross">
                    </i>
                  </a>
                  <a href="product-default.html">MVMTH Classical Leather Watch In Black
                  </a>
                  <p>
                    <strong>Sold by:
                    </strong> YOUNG SHOP
                  </p>
                  <small>1 x $59.99
                  </small>
                </div>
              </div>
              <div class="ps-product--cart-mobile">
                <div class="ps-product__thumbnail">
                  <a href="#">
                    <img src="img/products/clothing/5.jpg" alt="" />
                  </a>
                </div>
                <div class="ps-product__content">
                  <a class="ps-product__remove" href="#">
                    <i class="icon-cross">
                    </i>
                  </a>
                  <a href="product-default.html">Sleeve Linen Blend Caro Pane Shirt
                  </a>
                  <p>
                    <strong>Sold by:
                    </strong> YOUNG SHOP
                  </p>
                  <small>1 x $59.99
                  </small>
                </div>
              </div>
            </div>
            <div class="ps-cart__footer">
              <h3>Sub Total:
                <strong>$59.99
                </strong>
              </h3>
              <figure>
                <a class="ps-btn" href="shopping-cart.html">View Cart
                </a>
                <a class="ps-btn" href="checkout.html">Checkout
                </a>
              </figure>
            </div>
          </div>
        </div>
        <div class="ps-block--user-header">
          <div class="ps-block__left">
            <a href="my-account.html">
              <i class="icon-user">
              </i>
            </a>
          </div>
          <div class="ps-block__right">
            <a href="my-account.html">Login
            </a>
            <a href="my-account.html">Register
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
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
