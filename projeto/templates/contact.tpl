{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<link media="all" href="{{asset("css/addons/buttons.min.css","ui")}}" type="text/css" rel="stylesheet">
<link media="all" href="{{asset("css/addons/form-inputs.min.css","ui")}}" type="text/css" rel="stylesheet">
<style type="text/css">
  section.contact-page fieldset.form-fields-group ul.fields>li textarea{
    padding: 10px;
    height: auto;
  }
  section.contact-page .title-container {
    font-size: 2em;
    text-align: center;
    margin: 5px 0 30px 0;
  }
  section.contact-page .title-container h1 {
    margin: 0 0 5px 0;
    padding: 0;
  }
  section.contact-page .title-container h2 {
    margin: 0;
    padding: 0;
    font-size: .8rem;
    color: #767676;
    font-weight: 400;
  }
  section.contact-page .validate-code > li:first-child {
    display: flex;
    justify-content: center;
    flex-flow: column nowrap;
  }
  section.contact-page .validate-code div.image {
    width: 135px;
    padding:1px;
    border:1px solid #E6E6E6;
    margin: 0 auto;
  }
  section.contact-page .validate-code div.refresh {
    font-size: 0.6em;
    text-align: center;
  }
  section.contact-page .validate-code input[name=code] {
    text-transform: uppercase;
    font-weight: bold;
    text-align: center;
    font-size: 1.2em;
  }
  section.contact-page .product-detail a.product {
    display: flex;
    flex-flow: row nowrap;
    justify-content: stretch;
    align-items: center;
  }
  section.contact-page .product-detail a.product div.image img {
    max-width: 135px;
    max-height: 60px;
    width: 100%;
    height: 100%;
  }
  section.contact-page .product-detail a.product div.name {
    display: flex;
    flex-flow: column nowrap;
    margin-left: 20px;
  }
</style>
{{ banners.getByTag(["contact"]) }}
<section class="contact-page">
  <form class="page-contact-form" action="/action/contact/send" method="post">
    <div class="form-content" data-element="form-content">
      <div class="title-container">
        <h1 class="title">Fale Conosco
        </h1>
        <h2>Se preferir, entre em contato atrav�s do {{ (store.telephone is not empty ? 'telefone <b>'~store.telephone~'</b> ou<br> por')|raw}} e-mail 
          <b>{{store.email_sac}}</b>.
        </h2>
      </div>
      {% if (product is defined and product.id is defined) %}
      <fieldset class="product-detail form-fields-group">
        <input type="hidden" name="pid" value="{{product.id}}">
        <legend>
          <span>Sobre o produto
          </span>
        </legend>
        <a href="{{product.url}}" target="_blank" class="product">
          <div class="image">
            <img src="{{product.image_default}}" border="0" alt="{{product.name|raw}}" />
          </div>
          <div class="name">
            <b>{{product.name|raw}}</b>
            {{product.sku ? ("<small>Refer�ncia: "~product.sku~"</small>")|raw : ""}}
          </div>
        </a>
      </fieldset>
      {% endif %}
      <fieldset class="page-contact form-fields-group">
        <legend>
          <span>Contato
          </span>
        </legend>
        <input type="hidden" name="form_type" value="contact">
        {% include 'snippets/notifications.tpl' %}
        <ul class="fields">
          <li>
            <label class="label">Nome
            </label>
            <input type="text" class="input" name="name" required="required">
          </li>
          <li>
            <label class="label">E-mail
            </label>
            <input type="email" class="input" name="email" required="required">
          </li>
          <li>
            <label class="label">Telefone
            </label>
            <input type="text" class="input" name="phone" data-mask="(00) 00000-0009" placeholder="(00) 00000-0000" required="required" autocomplete="off" maxlength="15">
          </li>
          <li>
            <label class="label">Pedido&nbsp;
              <small>(opcional)
              </small>
            </label>
            <input type="number" class="input" name="order" placeholder="0000000">
          </li>
        </ul>
        <ul class="fields">
          <li>
            <label class="label">Mensagem
            </label>
            <textarea name="message" class="textarea" required="required">
            </textarea>
          </li>
        </ul>
        <ul class="fields validate-code">
          <li>
            <div class="image">
              <img id="image" src="?img=1" alt="">
            </div>
            <div class="refresh">
              <a tabindex="-1" href="javascript:void(0);" title="Trocar imagem" onclick="$('#image').attr('src','?img=1&'+Math.random());return false">
                <i class="fas fa-sync-alt">
                </i> Trocar Imagem
              </a>
            </div>
          </li>
          <li>
            <label class="label">Informe o código de validação ao lado:
            </label>
            <input type="text" class="input" name="code" size="20" maxlength="6" required="required">
          </li>
        </ul>
        <div class="form-btn">
          <button type="submit" name="btn-go" id="btn-go" class="btn btn-primary btn-shadow">
            <i class="fas fa-paper-plane">
            </i> 
            <span>Enviar
            </span>
          </button>
        </div>
      </fieldset>
    </div>
  </form>
</section>
{% include("footer.tpl") %}
