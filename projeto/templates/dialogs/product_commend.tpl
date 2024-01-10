<style type="text/css">
  .fancybox-stage .fancybox-content {
    background-color: var(--cor-bg-blcs-gp);
  }
  fieldset.form-fields-group ul.fields label {
    color: var(--cor-txt-nome-prto) !important;
}
  fieldset.form-fields-group legend span {
    background-color: var(--cor-bg-blcs-gp);
  }
  fieldset.form-fields-group legend span {
    background-color: var(--cor-bg-blcs-gp);
    color: var(--cor-txt-nome-prto);
  }
  section.product-commend {
    padding: 0;
    font-size: 0.9em;
  }
  section.product-commend .form-btn.group {
    justify-content: space-between;
  }
  section.product-commend fieldset.form-fields-group ul.fields li > input,
  section.product-commend fieldset.form-fields-group ul.fields li > select {
    height: 35px;
  }
  section.product-commend fieldset.form-fields-group ul.fields li > textarea {
    height: 100px;
    padding: 8px;
  }
  section.product-commend .validate-code > li:first-child {
    display: flex;
    justify-content: center;
    flex-flow: column nowrap;
  }
  section.product-commend .validate-code div.image {
    width: 135px;
    padding:1px;
    border:1px solid #E6E6E6;
    margin: 0 auto;
  }
  section.product-commend .validate-code div.refresh {
    font-size: 0.6em;
    text-align: center;
  }
  section.product-commend .validate-code input[name=code] {
    text-transform: uppercase;
    font-weight: bold;
    text-align: center;
    font-size: 1.2em;
  }
  @media only screen and (max-width:600px) {
    section.product-commend .form-btn.group button {
      margin-bottom: 10px;
      order:1;
    }
    section.product-commend .form-btn.group button.cancel {
      border:none;
      background: none;
      color:var(--custom-font-dark-color,#404040);
      font-size: 1em;
      margin: 0;
      order:2;
    }
  }
</style>
<section class="product-commend">
  <form name="f-product-commend" id="f-product-commend" type="post" data-element="form-commend">
    <div class="container">
      <fieldset class="form-fields-group">
        <legend>
          <span>Seus dados
          </span>
        </legend>
        <ul class="fields">
          <li>
            <label for="from_name">Nome:
            </label>
            <input type="text" name="from_name" id="from_name" class="validate[required,minSize[2],maxSize[50]]" autocomplete="off" placeholder="Seu nome" value="{{customer.firstname|raw}}" />
          </li>
          <li>
            <label for="from_email_address">E-mail:
            </label>
            <input type="email" inputmode="email" value="{{customer.email}}" name="from_email_address" id="from_email_address" class="validate[required,custom[email]]" placeholder="seu@email.com" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,}$">
          </li>
        </ul>
      </fieldset>
      <fieldset class="form-fields-group">
        <legend>
          <span>Indicar para
          </span>
        </legend>
        <ul class="fields">
          <li>
            <label for="to_name">Nome:
            </label>
            <input type="text" name="to_name" id="to_name" class="validate[required,minSize[2],maxSize[50]]" autocomplete="off" placeholder="Nome do destinatario" value="{{customer.firstname|raw}}" />
          </li>
          <li>
            <label for="to_email_address">E-mail:
            </label>
            <input type="email" inputmode="email" value="{{customer.email}}" name="to_email_address" id="to_email_address" class="validate[required,custom[email]]" placeholder="destinatario@email.com" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+.[A-Za-z]{2,}$">
          </li>
        </ul>
        <ul class="fields">
          <li>
            <label for="comment">Descreva seu comentário (opcional):
            </label>
            <textarea  name="comment" id="comment" rows="10" placeholder="Informe uma mensagem para o destinatário">
            </textarea>
          </li>
        </ul>
        <ul class="fields validate-code">
          <li>
            <div class="image">
              <img id="image" src="{{ url("current",{"img":1,"v":date|date("U")}) }}" alt="">
            </div>
            <div class="refresh">
              <a tabindex="-1" href="javascript:void(0);" title="Trocar imagem" onclick="$('#image').attr('src','{{ url("current",{"img":1,"v":date|date("U")}) }}');return false">
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
      </fieldset>
      <div class="form-btn group">
        <button type="button" name="btn-cancel" id="btn btn-secondary" class="btn cancel" onclick="$.fancybox.close();">
          <span>Cancelar
          </span>
        </button>
        <button type="submit" name="btn-submit" id="btn btn-submit" class="btn btn-primary">
          <i class="fas fa-check">
          </i> 
          <span>Enviar indicação
          </span>
        </button>
      </div>
    </div>
  </form>
</section>
