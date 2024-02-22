    <link href="{{ variables.cms_config_geral.cms_fonte_url }}" rel="stylesheet"/>
    {% include 'assets/style_variables.tpl' %}
    {{ include('cart/sidecart.tpl', {type:'body'})}}
    <style>
      /*-- Inclus?o de css geral --*/
      {% include 'assets/showcase_style.css' %}{% include 'assets/utility.css' %}{% include 'assets/buttons.css' %}{% include 'assets/collection_list.css' %}{% include 'assets/form_inputs.css' %}{% include 'assets/theme_template.css' %}{% include 'assets/templatenovo.css' %}/*-- Fim Inclus?o de css geral --*/
      /*== HEADER ==*/
      /*-- header top --*/
      .header-contacts-sociais {
        display: flex;
        gap: 10px;
      }
      .header-top {
        background-color: var(--cor-bg-login);
      }
      .header-container-top a,
      .header-container-top span {
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
      .header-logo,
      .header-cart,
      .header-menu {
        align-self: center;
      }
      .header-logo {
        gap: 10px;
      }
      .header-logo img {
        height: {{variables.cms_cabecalho.cms_altura_img_logo}}
          px;
      }
      .header-user-area ul {
        gap: 20px;
        position: relative;
        justify-content: end;
      }
      .header-user-area ul li,
      .header-user-area ul li a,
      .btn-openMenu {
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
        box-shadow: 0 2px 7px 0 rgba(0, 0, 0, 0.11);
        -moz-box-shadow: 0 2px 7px 0 rgba(0, 0, 0, 0.11);
        -webkit-box-shadow: 0 2px 7px 0 rgba(0, 0, 0, 0.11);
        padding: 15px;
        right: 0;
        top: 37px;
        visibility: hidden;
        opacity: 0;
        min-width: 150px;
        -webkit-transition: all 0.5s ease;
        -moz-transition: all 0.5s ease;
        -ms-transition: all 0.5s ease;
        -o-transition: all 0.5s ease;
        transition: all 0.5s ease;
      }
      .header-icon-user:hover .header-customer-area {
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
      .header-customer-area .logged-in,
      .header-customer-area .logged-out {
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
      .header-body:not(.fixed) .header-central-logo .header-navigation-list,
      .header-body:not(.fixed) .header-central-logo .header-user-area {
        min-width: 350px;
      }
      .header-body:not(.fixed) .header-central-logo .header-user-area ul {
        justify-content: flex-end;
      }
      .header-contact-list {
        line-height: 1.500;
      }
      .header--mobile .header__top-links > li {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
      }
      .header--mobile .header__top-links > li > a {
        height: 50px;
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 5px;
      }
      @media(min-width: 1000px) {
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
        .header-body:not(.fixed) .header-central-logo .header-search,
        .header-body:not(.fixed) .header-central-logo .header-user-area {
          min-width: unset;
          max-width: 20%;
        }
        .header-body:not(.fixed) .header-central-logo .header-user-area {
          order: 3;
        }
      }
      @media(max-width: 1000px) {
        .header-body .header-central-logo {
          gap: 0 15px;
          display: flex;
          justify-content: space-between;
        }
        .header-logo img {
          height: auto;
          width: 100%;
        }
        .header-body:not(.fixed) .header-central-logo .header-navigation-list,
        .header-body:not(.fixed) .header-central-logo .header-user-area {
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
        -o-transition: all 0.1s ease-in-out;
        transition: all 0.1s ease-in-out;
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
        top: 4.3px !important;
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
        box-shadow: 0 2px 7px 0 rgb(0 0 0 / 11%);
        -moz-box-shadow: 0 2px 7px 0 rgba(0, 0, 0, 0.11);
        -webkit-box-shadow: 0 2px 7px 0 rgb(0 0 0 / 11%);
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
      @media(max-width: 1200px) {
        .header-body:not(.fixed) .header-menu {
          order: 3;
          width: 100%;
        }
      }
      /*--fim header body --*/
      @media(max-width: 1000px) {
        .header-navigation-list {
          display: none;
        }
        .header-menu {
          order: 3;
          width: 100%;
        }
        .header-body .header-container-body .header-content .header-logo,
        .header-user-area {
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
      @media(max-width: 768px) {
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
        -webkit-box-shadow: 0 0 3px 3px rgb(0 0 0 / 3%);
        box-shadow: 0 0 3px 3px rgb(0 0 0 / 3%);
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
      .header-body.fixed .header-navigation-list {
        display: none;
      }
      .header-body.fixed .header-user-area ul {
        font-size: 1em;
      }
      @media(max-width: 600px) {
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
    <div class="float-sidecart-button sidecart-button"> {{ include('cart/sidecart.tpl', {type:'button'})}}
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
        webkit-box-shadow: 0 3px 10px -6px #000000, 0 0 5px 5px rgb(0 0 0 / 0%);
        box-shadow: 0 3px 10px -6px #000000, 0 0 5px 5px rgb(0 0 0 / 0%);
      }
      .float-sidecart-button:hover {
        opacity: 1;
      }
      .float-sidecart-button .sidecart-items-counter {
        top: 0;
        right: 0;
      }
    </style>
    {% endif %}
    <!--FIM-->
    {% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_cabecalho.cms_exibir_lp) %}
      <style>
        .header--market-place-4{
          position: sticky;
          top: 0;
          z-index: 998;
        }
      </style>
    <header class="header header--standard header--market-place-4">
      {{ include('cart/sidecart.tpl', {type:'offer'})}}
      {% if variables.cms_cabecalho.cms_bg_login is not empty %}
      {# <div class="header-spacer" style="height: 0px;"> #}
      </div>
      <div class="header-top">
        <style>
          :root{
            --base-size: 10px;

            --color-background: #DD1836;
            --color-primary: #FFF;
            --color-secondary: rgb(255, 217, 0);
          }
          .norton-cupom-desconto{
            font-size: var(--base-size);
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: var(--color-background);
            height: 50px;
            padding: 0 1em;
            overflow: hidden;
            color: var(--color-primary);
            font-family: Arial, sans-serif;
          }

          /* FRETE GRÁTIS */

          .norton-cupom-desconto > div:first-of-type{
            /* display: flex;
            flex-direction: column; */
            color: var(--color-secondary);
            gap: .2em;
            position: absolute;
            left: 10px;
          }
          .norton-cupom-desconto > div:first-of-type > p{
            padding: 0;
            margin: 0;
          }
          .norton-cupom-desconto > div:first-of-type > p:first-of-type{
            font-size: 2.5em;
            color: var(--color-primary);
            font-weight: 900;
            text-transform: uppercase;
            letter-spacing: .2em;
            line-height: normal;
          }
          .norton-cupom-desconto > div:first-of-type > p:last-of-type{
            font-size: 1.4em;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: .01em;
            color: var(--color-secondary);
            line-height: normal;
            position: relative;
            top: -5px;
          }

          /* CUPOM */

          .norton-cupom-desconto > div:nth-of-type(2){
            display: flex;
            flex-direction: row;
            gap: 1em;
            align-items: center;
          }
          .norton-cupom-desconto > div:nth-child(2) > p:first-of-type{
            display: flex;
            align-items: center;
            gap: .5em;
            flex-wrap: wrap;
            justify-content: center;
            color: var(--color-primary);
          }
          .norton-cupom-desconto > div:nth-child(2) > p:first-of-type > span:first-of-type{
            font-size: 1.5em;
            font-weight: 900;
            animation: pisca;
            animation-duration: 1s;
            animation-iteration-count: infinite;
            animation-fill-mode: forwards;
            color: var(--color-primary);
          }
          .norton-cupom-desconto > div:nth-child(2) > p:first-of-type > span:last-of-type{
            font-weight: 900;
          }
          .norton-cupom-desconto > div:nth-child(2) > p:first-of-type > button{
            padding: 0;
            border: none;
            background-color: transparent;
            font-size: 1em;
            color: var(--color-primary);
            font-weight: 900;
          }
          .norton-cupom-desconto > div:nth-child(2) > p:first-of-type > button:hover{
            cursor: pointer;
            animation: pisca;
            animation-duration: 1s;
            animation-iteration-count: infinite;
            animation-fill-mode: forwards;
            border-bottom: 3px solid #fff;
          }
          .norton-cupom-desconto > div:nth-of-type(2) > img{
            position: relative;
            width: 8em;
            top: 1.5em;
          }
          .norton-cupom-desconto > div:nth-of-type(2) > p{
            font-size: 2em;
            text-transform: uppercase;
            font-weight: 900;
            color: var(--color-primary);
          }
          .norton-cupom-desconto > div:nth-of-type(2) > p:last-of-type{
            font-size: 1em;
            width: 250px;
            color: var(--color-primary);
          }
          @media screen and (max-width: 2000px){
            .norton-cupom-desconto{
              justify-content: space-around;
            }
            .norton-cupom-desconto > div:first-of-type{
              position: relative;
            }
          }
          @media screen and (max-width: 1870px){
            .norton-cupom-desconto > div:nth-of-type(3),
            .norton-cupom-desconto > div:nth-of-type(2) > img:nth-of-type(2),
            .norton-cupom-desconto > div:nth-of-type(2) > p:nth-of-type(2){
              display: none;
            }
            .norton-cupom-desconto{
              justify-content: center;
            }
          }
          @media screen and (max-width: 1500px){
            .norton-cupom-desconto{
              gap: 2em;
            }
            .norton-cupom-desconto > div:first-of-type{
              position: relative;
            }
          }

          @media screen and (max-width: 1299px){
            .norton-cupom-desconto > div:nth-of-type(1){
              display: none;
            }
          }
          @media screen and (max-width: 765px){
            .norton-cupom-desconto{
                padding: 0;
            }
            .norton-cupom-desconto > div:nth-of-type(2) > p:first-of-type{
              font-size: 1em;
            }
            .norton-cupom-desconto > div:nth-of-type(2) > img:first-of-type{
              width: 5em;
              top: 0;
            }
          }
          @keyframes pisca{
            0%,
            50% {
              color: rgb(51, 51, 51);
              border-color: rgb(51, 51, 51);
            }
            51%,
            100% {
              color: rgb(255, 217, 0);
              border-color: rgb(255, 217, 0);
            }
          }
        </style>
        <section class="norton-cupom-desconto" id="norton-cupom-header">
      <div>
        <p>Frete Grátis</p>
        <p>para compras acima de R$ 250,00</p>
      </div>
      <div>
        <img src="{{ variables.cupom_desconto.cupons }}" alt="Cupons de desconto">
        <p>Ganhe <span>10%</span> na primeira compra! <span>Cupom:</span> <button style="display: block;" id="cupom-desconto">BEMVINDO</button></p>
        <img src="{{ variables.cupom_desconto.seta }}" style=" width: 30em; height: 100%; position: relative; top:0;">
        <p>Clique para copiar automaticamente e colar o cupom no seu carrinho!</p>
      </div>
      <script>
        const clipboard = navigator.clipboard;
        document.querySelector('#cupom-desconto').addEventListener('click',()=>{
          if(clipboard == undefined){
          console.error('clipboard is undefined');
          }else{
            clipboard.writeText('bemvindo').then(()=>{
              alert('Cupom copiado para área de transferência!');
            });
          }
        });
      </script>
    </section>
    {# 
      |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
      HEADER CONTENT   
      |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    #}
    <div class="header__content" id="norton-header__content">
      <div class="container">
        <div class="header__content-left">
          <a class="ps-logo" href="/index.php">
            <img src="{{images.logo}}" alt="Norton Distribuidora" id="norton-image-logo" class="" style="transition: .2s; width: 20em;">
          </a>
        </div>
        <div class="header__content-center">
          <form class="ps-form--quick-search" action="{{goto.search}}" method="get" name="frmbusca" id="frmbusca">
            <input class="form-control" id="keywords" name="keywords" placeholder="Buscar..." type="text" autofocus>
            <button
                    type="submit">
              {#<i class="fal fa-search"></i>#}
              Procurar
            </button>
          </form>
        </div>
        {% set icons_color = '#FFFFFF' %}
        <!-- CORES DOS ICONES A SEGUIR! -->
        {% set icons_hover = '#DD1836' %}
        <!-- CORES DOS ICONES EM HOVER! -->
        <style>
          .header__extra:hover .icons_hover_fill,
          .ps-cart--mini:hover .icons_hover_fill {
            fill: {{icons_hover|raw}}
              ;
          }
          .ps-block--user-header:hover .icons_hover_fill {
            stroke: {{icons_hover|raw}}
              ;
          }
        </style>
        <div class="header__content-right">
          <div class="header__actions">
            <style>
              .norton-atendimento {
                display: flex;
                flex-direction: row;
                align-items: center;
                gap: 10px;
              }
              .norton-atendimento > p {
                color: #FFFFFF;
                font-weight: 700;
              }
              #sandbox-message{
                display: none;
              }
            </style>
            <a href="/atendimento/">
              <div class="norton-atendimento">
              <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="32" zoomAndPan="magnify" viewBox="0 0 810 809.999993" height="32" preserveAspectRatio="xMidYMid meet" version="1.0">
                <defs>
                  <clipPath id="4731020673">
                    <path d="M 0 81 L 809.796875 81 L 809.796875 784 L 0 784 Z M 0 81 " clip-rule="nonzero"/>
                  </clipPath>
                  <clipPath id="d24ab86302">
                    <path d="M 191.164062 358.015625 L 618.832031 358.015625 L 618.832031 455 L 191.164062 455 Z M 191.164062 358.015625 " clip-rule="nonzero"/>
                  </clipPath>
                </defs>
                <g clip-path="url(#4731020673)">
                  <path fill="#FFF" d="M 405 81.066406 C 181.96875 81.066406 0.511719 224.257812 0.511719 400.257812 C 0.511719 473.039062 30.832031 541.621094 88.179688 598.578125 L 91.4375 601.835938 L 65.714844 766.230469 C 65.589844 767.046875 65.515625 767.886719 65.515625 768.722656 C 65.515625 778.449219 75.910156 785.808594 85.117188 782.128906 L 284.644531 705.054688 L 287.363281 705.695312 C 325.429688 714.804688 365.007812 719.445312 405 719.445312 C 628.03125 719.445312 809.484375 576.257812 809.484375 400.257812 C 809.484375 224.257812 628.03125 81.066406 405 81.066406 Z M 673.902344 602.699219 C 639.363281 630.125 599.023438 651.652344 553.941406 666.8125 C 472.496094 694.167969 378.953125 697.96875 294.078125 677.722656 L 282.621094 674.960938 L 97.957031 746.308594 L 122.148438 591.761719 L 108.421875 578.136719 C 83.042969 552.929688 63.390625 524.980469 49.9375 495.085938 C 36.261719 464.695312 29.320312 432.773438 29.320312 400.257812 C 29.320312 362.242188 38.726562 325.28125 57.34375 290.324219 C 75.734375 255.8125 102.222656 224.703125 136.097656 197.820312 C 170.632812 170.390625 210.976562 148.863281 256.054688 133.703125 C 350.289062 102.105469 459.828125 102.105469 553.9375 133.703125 C 599.019531 148.863281 639.359375 170.390625 673.898438 197.820312 C 707.769531 224.703125 734.257812 255.8125 752.652344 290.277344 C 771.265625 325.28125 780.671875 362.242188 780.671875 400.257812 C 780.671875 438.253906 771.265625 475.238281 752.652344 510.195312 C 734.261719 544.707031 707.773438 575.816406 673.902344 602.699219 Z M 673.902344 602.699219 " fill-opacity="1" fill-rule="nonzero"/>
                </g>
                <g clip-path="url(#d24ab86302)">
                  <path fill="#FFF" d="M 288.160156 406.496094 C 288.160156 393.636719 283.078125 381.308594 274.011719 372.203125 C 264.90625 363.136719 252.578125 358.015625 239.757812 358.015625 C 226.9375 358.015625 214.609375 363.136719 205.542969 372.203125 C 196.476562 381.308594 191.355469 393.636719 191.355469 406.496094 C 191.355469 419.355469 196.476562 431.683594 205.542969 440.789062 C 214.609375 449.890625 226.9375 454.972656 239.757812 454.972656 C 252.578125 454.972656 264.90625 449.890625 274.011719 440.789062 C 283.078125 431.683594 288.160156 419.355469 288.160156 406.496094 Z M 453.398438 406.496094 C 453.398438 393.636719 448.316406 381.308594 439.214844 372.203125 C 430.148438 363.136719 417.820312 358.015625 404.996094 358.015625 C 392.136719 358.015625 379.847656 363.136719 370.78125 372.203125 C 361.675781 381.308594 356.59375 393.636719 356.59375 406.496094 C 356.59375 419.355469 361.675781 431.683594 370.742188 440.789062 C 379.847656 449.890625 392.136719 454.972656 404.996094 454.972656 C 417.855469 454.972656 430.148438 449.890625 439.25 440.789062 C 448.316406 431.683594 453.398438 419.355469 453.398438 406.496094 Z M 618.640625 406.496094 C 618.640625 393.636719 613.519531 381.308594 604.453125 372.203125 C 595.386719 363.136719 583.058594 358.015625 570.234375 358.015625 C 557.414062 358.015625 545.085938 363.136719 536.019531 372.203125 C 526.914062 381.308594 521.832031 393.636719 521.832031 406.496094 C 521.832031 419.355469 526.914062 431.683594 535.980469 440.789062 C 545.085938 449.890625 557.414062 454.972656 570.234375 454.972656 C 583.058594 454.972656 595.386719 449.890625 604.453125 440.789062 C 613.554688 431.683594 618.640625 419.355469 618.640625 406.496094 " fill-opacity="1" fill-rule="nonzero"/>
                </g>
              </svg>
                <p>Atendimento
                </p>
              </div>
            </a>
            <div class="ps-cart--mini">
              {{ include('cart/sidecart.tpl', {type:'button', color: icons_color|raw, hover: icons_hover|raw})}}
            </div>
            <div class="ps-block--user-header">
              <div class="ps-block__left">
                <svg xmlns="http://www.w3.org/2000/svg" class="icons_hover_stroke" width="36" height="36" viewbox="0 0 24 24">
                  <g class="icons_hover_stroke" fill="none" stroke="{{icons_color|raw}}" stroke-width="2.5">
                    <path stroke-linejoin="round" d="M4 18a4 4 0 0 1 4-4h8a4 4 0 0 1 4 4a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2z"/>
                    <circle cx="12" cy="7" r="3"/>
                  </g>
                </svg>
                <!--<img src="{{ variables.icones_loja.perfil }}" alt="Ícone de Perfil"> -->
              </div>
              <div class="ps-block__right">
                <a href="{{goto.login}}">Entrar
                </a>
                <a href="{{goto.register}}">Cadastrar
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    {# FIM DO MEU CODIGO HEADER #}
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
        .header___top {
          background-color: #5B5B5B;
          color: #FFF;
        }
        .header___top ul {
          margin: 0;
          padding: 0;
          list-style: none;
        }
        .header___top li {
          display: flex;
          align-items: center;
          gap: 5px;
          padding: 10px;
        }
        .header___top a {
          color: #FFF;
          text-decoration: none;
        }
        /* MENU --------------------*/
        .header__menu {
          background-color: #333;
          color: #FFF;
        }
        .header__menu {
          display: flex;
          flex-direction: row;
          justify-content: center;
          padding: 10px;
        }
        #logoNorton {
          width: 150px;
        }
        .menu_hamburger {
          margin: auto 0;
          position: absolute;
          left: 1em;
          transform: translateY(calc(50% - 5px));
          width: fit-content;
        }
        .header__menu div.hamburger {
          width: 25px;
          height: 2px;
          background-color: #FFF;
          border-radius: 1px;
          margin: 14px 0;
        }
        .header__menu div.hamburger::before {
          display: block;
          content: "";
          position: relative;
          top: -8px;
          width: 25px;
          height: 2px;
          background-color: #FFF;
          border-radius: 1px;
        }
        .header__menu div.hamburger::after {
          display: block;
          content: "";
          position: relative;
          top: 6px;
          width: 25px;
          height: 2px;
          background-color: #FFF;
          border-radius: 1px;
        }
        #button_hamburger {
          background: none;
          color: transparent;
          border: none;
        }
        #__menu {
          transition: 0.5s ease-in-out;
          z-index: 999;
        }
        #__menu-close {
          /*transition: .5s;*/
          position: fixed;
          top: 0;
          left: 80vw;
          height: 100vh;
          width: 20vw;
          background: rgba(0, 0, 0, 0.5);
          z-index: 999;
        }
        @media(max-width: 1200px) {
          .header__menu {
            padding: 0 20%;
          }
          .header___top ul {
            font-size: x-small;
          }
          .header___top li > img {
            width: 24px;
          }
          .header___top ul {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
          }
          .header___top > div {
            display: flex;
            align-items: center;
            justify-content: center;
            padding-top: 5px
          }
          .header___top > div > p {
            color: #FFF;
          }
          #__menu {
            position: fixed;
            top: 0;
            height: 100vh;
            width: 80vw;
            background: #FFF;
          }
        }
        @media(max-width: 425px) {
          .header__menu {
            padding: 0;
          }
        }
        @media(max-width: 370px) {
          .header___top > div > p {
            font-size: 10px;
            color: #FFF;
          }
          .header___top li {
            gap: 2.5px;
            padding: 5px;
          }
          .header___top li > img {
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
      <div id="__menu" style="transform: translateX(-100%);">{% include 'snippets/menu_header_mobile.tpl' %}</div>
      <div id="__menu-close" style="display: none; ">
      </div>
      <!-- HEADER MENU ============================================== -->
      <div class="header__menu">
        <div class="menu_hamburger">
          <button id="button_hamburger" onclick="">
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
    <script>let __menu = document.getElementById('__menu');
      let button_hamburger = document.getElementById('button_hamburger');
      let __menuClose = document.getElementById('__menu-close');
      __menuClose.addEventListener('click', () => {
        console.log('Clicado!');
        __menu.style.transform == 'translateX(-100%)' ? __menu.style.transform = 'translateX(0)' : __menu.style.transform = 'translateX(-100%)';
        if (__menuClose.style.display === 'block') {
          __menuClose.style.display = 'none';
        }
        else {
          setTimeout(() => {
            __menuClose.style.display == 'none' ? __menuClose.style.display = 'block' : __menuClose.style.display = 'none';
          }
                    , 500);
        }
      }
                                  );
      button_hamburger.addEventListener('click', () => {
        console.log('Clicado!');
        __menu.style.transform == 'translateX(-100%)' ? __menu.style.transform = 'translateX(0)' : __menu.style.transform = 'translateX(-100%)';
        if (__menuClose.style.display === 'block') {
          __menuClose.style.display = 'none';
        }
        else {
          setTimeout(() => {
            __menuClose.style.display == 'none' ? __menuClose.style.display = 'block' : __menuClose.style.display = 'none';
          }
                    , 500);
        }
      }
                                      );
    </script>{# FIM HEADER MOBILE --------------------------------------------------------------------- #}{% if section.id == "home" %}{% if variables.cms_cabecalho.cms_transp_header is not empty %}<style>/*-- Banner fixed --*/
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
      @media all and(max-width: 1000px) {
        .header-menu .automatic-menu {
          background: var(--cor-bg-menu) !important;
        }
        .header-body {
          position: initial;
        }
      }
      /*-- Fim banner fixed --*/</style>{% if banners.getByTag(['billboard']) is empty %}<style>header .header-body {
        position: initial;
      }
    </style>{% endif %}{% endif %}{% endif %}{#
                  {% endif %}
    #} 
    <script defer src="https://front-libs.iset.io/libs/quicksearch/auto-complete.min.js">
    </script> 
    <script>/* VALIDATE CUSTOMER-LOGIN */
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
          menuClass: "suggestions-fixed", buttons: false}
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
    </script>{% if (variables.cms_cabecalho.cms_floating_header) %} 
    <script>$(document).ready(function () {
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
            $(".header-body").css("top", topPos);
            $(".header-body").addClass("fixed");
            if ($(".header-menu").hasClass("extended")) 
              $(".header-body").addClass("extended");
            $(".header-spacer").css('height', (headerBottom - 20) + 'px');
            $(".bars-cab-scroll").css("display", "block");
            $(".header-menu").addClass("menu-hide");
          }
          else {
            $(".header-body").css("top", "auto");
            $(".header-body").removeClass("fixed");
            $(".header-spacer").css('height', '0px');
            $(".bars-cab-scroll").css("display", "none");
            $(".header-menu").removeClass("menu-hide");
          }
          if (window.matchMedia('(max-width: 600px)').matches) {
            $(".header-menu").removeClass("menu-hide");
          }
        }
      }
                            );
    </script>{% endif %}
