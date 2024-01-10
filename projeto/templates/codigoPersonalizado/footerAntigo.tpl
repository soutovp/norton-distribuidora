<style>
  footer.foot {
    margin-top: 0;
  }
  .foot-information {
    /*background: var(--cor-bg-rodape, #ccc);*/
    background: #333;
  }
  .foot-copyright {
    background: var(--cor-bg-creditos);
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
{% set tel_ddd = variables.cms_redes_sociais.cms_telefone_whats|slice(0, 2) %}
{% set tel_prefixo = variables.cms_redes_sociais.cms_telefone_whats|slice(2, 5) %}
{% set tel_sufixo = variables.cms_redes_sociais.cms_telefone_whats|slice(7, 4) %}
{% set tel_formatado = '(' ~ tel_ddd ~ ') ' ~ tel_prefixo ~ '-' ~ tel_sufixo %}
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
{% if (section.id != "pages_content" or "lp" not in section.slug or variables.cms_rodape.cms_exibe_lp) %}
{% if variables.cms_rodape.cms_bg_newsletter is not empty %}
<!--Inclus?o da Newsletter-->
{% include 'snippets/newsletter.tpl' %}
<!--Fim inclus?o-->
{% endif %}
<footer class="foot">
  {{ banners.getByTag(['banner-duplo','and']) }}
  {% if variables.cms_rodape.cms_bg_rodape is not empty %}
  <div class="foot-information">
    <div class="foot-container foot-container-information flex" justify-content="center">
      {% if variables.cms_rodape.cms_coluna_c is not empty %}
      <!--COLUNA CONTATOS-->
      <div class="foot-contact-list foot-content">
        <div class="foot-logo flex" align-items="center" direction="column">
          <a href="/index.php">
            <img alt="logo-loja" height="{{ variables.cms_cabecalho.cms_altura_img_logo }}" src="{{images.logo}}" title="loja" width="auto" /> 
          </a>
          <div class="foot-social flex" justify-content="center">
            {% if variables.cms_redes_sociais.cms_instagram is not empty %}
            <div>
              <a href="{{ variables.cms_redes_sociais.cms_instagram }}" target="_blank">
                <i class="fab fa-instagram fa-2x">
                </i>
              </a>
            </div>
            {% endif %}
            {% if variables.cms_redes_sociais.cms_twitter is not empty %}
            <div>
              <a href="{{ variables.cms_redes_sociais.cms_twitter }}" target="_blank">
                <i class="fab fa-twitter fa-2x">
                </i>
              </a>
            </div>
            {% endif %}
            {% if variables.cms_redes_sociais.cms_youtube is not empty %}
            <div>
              <a href="{{ variables.cms_redes_sociais.cms_youtube }}" target="_blank">
                <i class="fab fa-youtube fa-2x">
                </i>
              </a>
            </div>
            {% endif %}
            {% if variables.cms_redes_sociais.cms_tiktok is not empty %}
            <div>
              <a href="{{ variables.cms_redes_sociais.cms_tiktok }}" target="_blank">
                <i class="fa-brands fa-tiktok fa-2x">
                </i>
              </a>
            </div>
            {% endif %}
            {% if variables.cms_redes_sociais.cms_facebook is not empty %}
            <div>
              <a href="{{ variables.cms_redes_sociais.cms_facebook }}" target="_blank">
                <i class="fab fa-facebook fa-2x">
                </i>
              </a>
            </div>
            {% endif %}
            {% if variables.cms_redes_sociais.cms_pinterest is not empty %}
            <div>
              <a href="{{ variables.cms_redes_sociais.cms_pinterest }}" target="_blank">
                <i class="fa-brands fa-pinterest fa-2x">
                </i>
              </a>
            </div>
            {% endif %}
          </div>
        </div>
      </div>
      <!--FIM COLUNA CONTATOS-->
      {% endif %}
      {% if variables.cms_rodape.cms_coluna_b is not empty %}
      <!--COLUNA PAGINAS-->
      <div class="foot-information-pages foot-content foot-list">
        <h5>{{ variables.cms_rodape.cms_coluna_b|raw }}</h5>
        <ul>
          {% for page in pages|slice(0,10) %}
          <li>
            <a href="{{page.url}}">{{ page.title | raw }}</a>
          </li>
          {% endfor %}
        </ul>
      </div>
      <!--FIM PAGINAS-->
      {% endif %}
      {% if variables.cms_rodape.cms_coluna_c is not empty %}
      <div class="foot-customer-area foot-content flex foot-list" direction="column">
        <h5>{{ variables.cms_rodape.cms_coluna_c|raw }}</h5>
        <ul>
          {% if store.telephone %}
          <li>
            <a href="tel:+55{{store.telephone}}">
              <i class="fa-solid fa-square-phone">
              </i> {{store.telephone}}
            </a>
          </li>
          {% endif %}
          {% if variables.cms_redes_sociais.cms_telefone_whats is not empty %}
          <li>
            <a href="https://api.whatsapp.com/send?phone=55{{ variables.cms_redes_sociais.cms_telefone_whats }}" target="_blank">
              <i class="fa-brands fa-whatsapp-square">
              </i> {{tel_formatado}}
            </a>
          </li>
          {% endif %}
          {% if store.email_sac %}
          <li>
            <a href="mailto:{{store.email_sac}}">
              <i class="fa-solid fa-square-envelope">
              </i> {{store.email_sac}}
            </a>
          </li>
          {% endif %}
        </ul>
      </div>
      {% endif %}
    </div>
  </div>
  {% endif %}
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
          Proibida a reprodu??o total ou parcial. Pre?os e estoque sujeitos a
          altera??o sem aviso pr?vio.
        </div>
      </div>
      <div class="foot-content">
        {{ banners.getByTag(['bandeiras-pagamento','and']) }}
      </div>
    </div>
  </div>
  {% endif %}
</footer>
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
