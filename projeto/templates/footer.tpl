<style>
  footer.foot {
    margin-top: 0;
  }
  .foot-information {
    /*background: var(--cor-bg-rodape, #ccc);*/
    background: #333;
  }
  .foot-copyright {
    background: linear-gradient(180deg, #333, #555);
    /*color: var(--cor-txt-creditos);*/
    color: #FFF;
  }
  .foot-container {
    align-items: self-start;
    padding: 30px 15px 10px;
    max-width: 1300px;
    margin: auto;
    gap: 20px;
  }
  .foot-content {
    width: 100%;
    padding: 30px 15px;
  }
  .foot-content ul li {
    margin-bottom: 15px;
  }
  .foot-list a {
    position: relative;
    /*color: var(--cor-txt-rodape, #555);*/
    color: #FFF;
  }
  .foot-content a:hover {
    color: var(--cor-txt-rodape-hover, #999);
  }
  .foot-list a:after {
    content: '';
    background: var(--cor-txt-rodape, #555);
    width: 0;
    height: 1px;
    left: 0;
    right: 0;
    bottom: -5px;
    margin: auto;
    display: block;
    position: absolute;
    transition: all 350ms ease-out 0s;
    -moz-transition: all 350ms ease-out 0s;
    -o-transition: all 350ms ease-out 0s;
    -webkit-transition: all 350ms ease-out 0s;
  }
  .foot-list a:hover:after {
    width: 100%;
  }
  .foot-container-information ul li {
    display: flex;
    gap: 5px;
  }
  .foot-container-information {
    padding-top: 40px;
  }
  .foot-container-information h5 {
    /*color: var(--cor-txt-rodape, #555);*/
    color: #FFF;
    margin-bottom: 15px;
    letter-spacing: 0.5px;
    font-size: 1.250em;
  }
  .foot-container-information li {
    /*color: var(--cor-txt-rodape, #555);*/
    color: #FFF;
  }
  .foot-logo {
    max-width: 225px;
    gap: 10px;
  }
  .foot-logo img {
    width: 100%;
  }
  .foot-container-copyright {
    align-items: flex-end;
    padding: 10px 15px;
    max-width: 1300px;
    margin: auto;
  }
  {% if variables.cms_rodape.cms_bg_creditos == variables.cms_rodape.cms_bg_rodape %}
  .foot-container-copyright {
    border-top: 1px solid var(--cor-txt-rodape);
  }
  {% endif %}
  .foot-copy {
    text-align: start;
    line-height: 20px;
    font-size: 0.875em;
  }
  .foot-social {
    gap: 10px;
    color: var(--cor-txt-rodape, #555);
  }
  .foot-social a {
    color: var(--cor-txt-rodape, #555);
  }
  @media (max-width: 900px) {
    .foot-container .foot-logo {
      max-width: none;
    }
    .foot-container {
      text-align: center;
      flex-direction: column;
    }
    .foot-content {
      padding: 15px;
      text-align: center;
    }
    .foot-content ul li {
      justify-content: center;
    }
    .foot-container-information > div + div {
      border: none;
    }
    .foot-social {
      justify-content: center;
      flex-wrap: wrap;
    }
  }
</style>
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
{% if variables.cms_redes_sociais.cms_telefone_whats is not empty %}
<div class="plugin_whats">
  <a href="https://api.whatsapp.com/send?phone=55{{ variables.cms_redes_sociais.cms_telefone_whats }}" class="flex" align-items="center" justify-content="center" target="_blank">
    <i class="fa-brands fa-whatsapp fa-2x">
    </i>
  </a>
</div>
<style>
  .plugin_whats {
    position: fixed;
    bottom: 50px;
    right: 10px;
    z-index: 5;
  }
  .plugin_whats a {
    background-color: #4CC554;
    color: #fff;
    border-radius: 100%;
    width: 40px;
    height: 40px;
    opacity: 0.3;
    transition: all .2s ease-in-out;
  }
  .plugin_whats a:hover {
    opacity: 1;
    color: #fff;
  }
</style>
{% endif %}
<!--Bot?o voltar ao topo-->
<a href="#" id="back2Top" title="Back to top">
  <i class="fa-duotone fa-circle-arrow-up fa-2x">
  </i>
</a>
<style type="text/css">
  #back2Top {
    z-index: 5;
    cursor: pointer;
    position: fixed;
    bottom: 50px;
    left: 10px;
    color: var(--cor-txt-gerais);
    opacity: 0.5;
    transition: all .2s ease-in-out;
  }
  #back2Top:hover {
    opacity: 0.8;
  }
</style>
<!--FIM-->
<style>
  body{
    margin: 0;
    padding: 0;
  }
  .norton-footer{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    background-color: #333;
    color: #FFF;
  }
  .norton-footer > section{
    box-sizing: border-box;
    width: 20%;
    padding: 5px;
    margin: 2.5%;
  }
  .norton-footer section hr{
    border: 2px solid red;
    border-radius: 1px;
  }
  .norton-footer ul{
    list-style-type: none;
    padding: 0;
    margin: 0;
  }
  .norton-footer ul li{
    margin: 5px 0;
  }
  .norton-footer section h3{
    color: #FFFFFF;
  }
  .norton-footer-sobre p{
    color: #FFFFFF;
  }
  .atendimento ul li p{
    color: #FFFFFF;
  }
  .atendimento ul li{
    display: flex;
    flex-direction: row;
    width: fit-content;
    align-items: center;
    gap: 10px;
  }
  .horario p{
    color: #FFF;
  }
  .norton-redes{
    padding: 10px
  }
  .norton-redes img{
    width: 36px;
  }
  .norton-redes img[alt="Instagram"]{
    width: 33px
  }
  @media (max-width: 1200px){
    .norton-footer .section-categorias, .norton-footer .section-institucional{
      display: none;
    }
    .norton-footer > section{
      box-sizing: border-box;
      width: 45%;
      padding: 5px;
      margin: 2.5%;
    }
  }
  @media (max-width: 600px){
    .norton-footer{
      flex-direction: column;
      justify-content: center;
    }
    .norton-footer > section {
      width: auto;
    }
    .norton-footer > section h3{
      text-align: center;
    }
    .norton-footer-redes > div{
      display: flex;
      justify-content: center;
    }
    .section-contato > div.atendimento > ul{
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .section-contato > div.atendimento > ul li{
      display: flex;
      flex-direction: row;
      justify-content: center;
    }
  }
</style>
{% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_rodape.cms_exibe_lp) %}
{% if variables.cms_rodape.cms_bg_newsletter is not empty %}
{# <!--Inclus?o da Newsletter-->
{% include 'snippets/newsletter.tpl' %}
<!--Fim inclus?o--> #}
{% endif %}
<footer class="norton-footer">
  <section class="section-sobre">
    <div class="norton-footer-sobre">
      <h3>Sobre a loja
      </h3>
      <hr>
      <p>Prezamos pelo respeito ao próximo sempre colocando a satisfação dos nossos clientes em primeiro lugar. Oferecemos produtos de qualidade e com preços justos.
      </p>
    </div>
    <div class="norton-footer-redes">
      <h3>Redes Sociais
      </h3>
      <hr>
      <a href="https://www.facebook.com/norton.online/" class="norton-redes" target="_blank">
        <img src="{{ variables.icones_loja.facebook_white }}" alt="Facebook">
      </a>
      <a href="https://www.instagram.com/nortononlinee/" class="norton-redes" target="_blank">
        <img src="{{ variables.icones_loja.instagram_white }}" alt="Instagram">
      </a>
    </div>
  </section>
  <section class="section-categorias">
    <h3>Categorias
    </h3>
    <hr>
    {#
    {% include 'snippets/menu_header_footer.tpl' %}
    #}
    <style>
      .list-categories-norton{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin: 0;
      }
      .list-categories-norton > li > a{
        padding: 0!important;
      }
    </style>
     <section>
    <div class="navigation__right">
  <div id="menu">
    <ul class="list-categories-norton">
      {% set categoryLimit = variables.cms_cabecalho.cms_category_limit %}
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
        <a href="{{category.url}}">
          {% if category.img_h %}
          <img alt="icone_categoria" class="menu-icon" src="{{category.img_h}}" />
          {% endif %}    
          {{category.name | raw}}
        </a>
        <!-- defines column count -->
      </li>
      {% endif %}
      {% endfor %}
      {% if (categoryCount > categoryLimit) %}
      {% endif %}
      {% if categoryCount > 10 and categoryLimit > 10 %}
      <script>
        $('.header-menu').addClass('extended');
      </script>
      {% endif %}
    </ul>
  </div>
</div>
</div>
</div>
  </section>
  </section>
  {% if variables.cms_rodape.cms_coluna_b is not empty %}
  <section class="section-institucional">
    <h3>{{ variables.cms_rodape.cms_coluna_b|raw }}</h3>
    <hr>
    <ul>
      {% for page in pages|slice(0,10) %}
      <li>
        <a href="{{page.url}}">{{ page.title | raw }}</a>
      </li>
      {% endfor %}
    </ul>
  </section>
 
  {% endif %}
  <section class="section-contato">
    <div class="atendimento">
      <h3>Central de Atendimento
      </h3>
      <hr>
      <ul>
        <li>
          <img src="{{ variables.icones_loja.telefone_white }}" alt="Icone">
          <p>{{ fixo_formatado }}</p>
        </li >
        <li>
          <img src="{{ variables.icones_loja.whatsapp_white }}" alt="Icone">
          <p>{{ tel_formatado }}
          </p>
        </li >
        <li>
          <img src="{{ variables.icones_loja.email_white }}" alt="Icone">
          <p>{{ variables.informacoes_loja.e_mail_atendimento }}
          </p>
        </li >
      </ul>
    </div>
    <div class="horario">
      <h3>Horário de Atendimento
      </h3>
      <hr>
      <p>Seg a sex de {{ variables.informacoes_loja.horario_inicio }}h ás {{ variables.informacoes_loja.horario_final }}h
      </p>
    </div>
  </section>
</footer>
{% if variables.cms_rodape.cms_bg_creditos is not empty %}
<div class="foot-copyright">
  <div class="foot-container foot-container-copyright flex" justify-content="space-between">
    <div class="foot-copy foot-content">
      <div>
        <b>{{ store.name | raw }}</b> - TODOS OS DIREITOS RESERVADOS.
      </div>
      <div>
        CNPJ: {{store.cnpj}}
      </div>
      <div>
        Proibida a reprodução total ou parcial. Pre?os e estoque sujeitos a
        alteração sem aviso prévio.
      </div>
    </div>
    <div class="foot-content">
      {{ banners.getByTag(['bandeiras-pagamento','and']) }}
    </div>
  </div>
</div>
{% endif %}
<!--Inclus?o dos Popups e Alertas-->
{% include 'snippets/popup.tpl' %}
{{ banners.getByTag(['popup-entrada'],'and') }}
{{ banners.getByTag(['popup-saida'],'and') }}
{{ banners.getByTag(['popup-produto'],'and') }}
<!--Fim inclus?o-->
{% endif %}
<script>
  /* BACKTO-TOP */
  $(document).ready(function () {
    $(window).scroll(function () {
      var height = $(window).scrollTop();
      if (height > 100) {
        $("#back2Top").fadeIn();
      }
      else {
        $("#back2Top").fadeOut();
      }
    }
                    );
    $("#back2Top").click(function (event) {
      event.preventDefault();
      $("html, body").animate(
        {
          scrollTop: 0,
        }
        ,
        "slow"
      );
      return false;
    }
                        );
  }
                   );
  function consoleDebug(file, func, msg){
    const debug = false;
    if (debug){
      const now = new Date();
      const time = now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds() + "." + (now.getMilliseconds() < 100 ? "0" + now.getMilliseconds() : now.getMilliseconds());
      const debugInfo = file + (func ? "::"+ func : "") + (msg ? " => " + msg : "");
      console.log(time + " | " + debugInfo);
    }
  }
  function handleImgError(imgElement, altImgSrc) {
    imgElement.onerror = "";
    imgElement.src = altImgSrc;
    return true;
  }
  function closeFancybox(){
    try{
      $.fancybox.close(true);
    }
    catch (e) {
    }
  }
</script>
