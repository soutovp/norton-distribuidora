<link href="{{ variables.cms_config_geral.cms_fonte_url }}" rel="stylesheet" />
{% include 'assets/style_variables.tpl' %}
<style type="text/css">
  {% include 'assets/showcase_style.css' %}
  {% include 'assets/utility.css' %}
  {% include 'assets/buttons.css' %}
  {% include 'assets/collection_list.css' %}
  .header-content {
    /*background-color: var(--cor-bg-reduzido);*/
    background-color: #333;
  }
  .safe-text {
    line-height: 12px;
    margin-right: 5px;
    text-align: right;
    width: 100%;
    font-weight: 700;
    font-size: 80%;
    color: var(--cor-txt-cabecalho);
  }
  .lite-grid--item.name b {
    color: var(--cor-txt-nome-prto, #000);
    font-weight: 400;
  }
  .header-middle {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 30px 30px;
    max-width: 1400px;
    margin: 0 auto;
  }
  .mini-brand img {
    max-width: 200px;
  }
  header.header-content .header-middle .safe {
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .checkout .btn {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  #ck-login .form-btn .btn {
    width: 50%;
    margin: auto;
  }
  header.header-content .header-middle .safe .safe-icon {
    border-radius: 50%;
    border: 2px solid green;
    background-color: #fff;
    padding: 5px 8px;
    vertical-align: middle;
  }
  header.header-content .header-middle .safe .safe-icon i {
    color: green;
  }
  /*-- Login --*/
  section.login-page .form-content {
    background-color: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto);
  }
  section.login-page .form-input input {
    background-color: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto);
    border: 1px solid var(--color-txt-20);
  }
  #ck-login .form-btn .btn {
    border: 1px solid var(--cor-bg-bt-confirm, #000);
    background-color: var(--cor-bg-bt-confirm, #000);
    color: var(--cor-txt-bt-confirm, #fff);
    margin: auto;
  }
  #ck-login .form-btn .btn:hover {
    border: 1px solid var(--cor-realce-bt-confirm, #333);
    background-color: var(--cor-realce-bt-confirm, #333);
    color: var(--cor-txt-bt-confirm, #fff);
  }
  /*-- Cadastro --*/
  section.customer-register .form-content {
    padding: 20px 15px;
    background-color: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto);
  }
  .customer-register .title-container h1, fieldset.form-fields-group ul.fields>li label:not(.option-input-label,.field-group) {
    color: var(--cor-txt-nome-prto);
  }
  .customer-register .title-container h2 {
    color: var(--color-txt-60);
  }
  fieldset.form-fields-group legend span {
    padding: 0 30px;
    text-transform: none;
    font-size: 1.2rem;
    background-color: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto);
  }
  section.customer-register .form-btn button {
    margin: auto;
    border: 1px solid var(--cor-bg-bt-confirm, #000);
    background-color: var(--cor-bg-bt-confirm, #000);
    color: var(--cor-txt-bt-confirm, #fff);
  }
  section.customer-register .form-btn button:hover {
    border: 1px solid var(--cor-realce-bt-confirm, #333) !important;
    background-color: var(--cor-realce-bt-confirm, #333) !important;
  }
  /*-- Fim Cadastro --*/
  @media only screen and (max-width: 600px) {
    header.header-content .header-middle {
      padding: 20px 30px;
    }
    header.header-content .header-middle .mini-brand img {
      max-width: 100px;
    }
  }
</style>
<header class="header-content">
  <div class="header-middle">
    <div id="h_brand" class="mini-brand">
      <a href="{{goto.home}}" title="{{store.name|raw}}" class="brd-link" id="brd-link" tabindex="6">
        <img src="{{images.logo}}" border="0"/>
      </a>
    </div>
    <div class="safe">
      <div class="safe-text">Ambiente
        <br />protegido
      </div>
      <div class="safe-icon">
        <i class="fas fa-lock-alt">
        </i>
      </div>
    </div>
  </div>
</header>
{% if section.id == "checkout_success" or section.id == "login" %} 
<div class="content-banners" style="padding:20px 15px;max-width:1300px;margin:auto;">
  {% if section.id == "checkout_success" %} 
  {{ banners.getByTag(['checkout'],'and') }}
  {% endif %}
  {% if section.id == "login" %}
  {{ banners.getByTag(['login'],'and') }}
  {% endif %}
</div>
{% endif %}