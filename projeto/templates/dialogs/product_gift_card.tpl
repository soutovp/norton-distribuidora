<style type="text/css">
  section.product-gift-card {
    max-width: 700px;
    padding: 0;
    font-size: 0.9em;
  }
  section.product-gift-card .form-btn.group {
    justify-content: space-between;
  }
  section.product-gift-card fieldset.form-fields-group ul.fields li > input,
  section.product-gift-card fieldset.form-fields-group ul.fields li > select {
    height: 35px;
  }
  section.product-gift-card fieldset.form-fields-group ul.fields li > textarea {
    height: 100px;
    padding: 8px;
  }
  @media only screen and (max-width:600px) {
    section.product-gift-card .form-btn.group button {
      margin-bottom: 10px;
      order:1;
    }
    section.product-gift-card .form-btn.group button.cancel {
      border:none;
      background: none;
      color:var(--custom-font-dark-color,#404040);
      font-size: 1em;
      margin: 0;
      order:2;
    }
  }
</style>
<section class="product-gift-card">
  <form name="f-product-gift-card" id="f-product-gift-card" type="post" data-element="form-gift-card">
    <div class="container">
      <fieldset class="form-fields-group">
        <ul class="fields">
          <li>
            <label for="giftcard_from">Nome de:
            </label>
            <input type="text" name="giftcard_from" id="giftcard_from" class="validate[required,minSize[2],maxSize[30]]" autocomplete="off" placeholder="Seu nome" value="{{customer.firstname|raw}}" />
          </li>
        </ul>
        <ul class="fields">
          <li>
            <label for="giftcard_to">Nome para:
            </label>
            <input type="text" name="giftcard_to" id="giftcard_to" class="validate[required,minSize[2],maxSize[30]]" autocomplete="off" placeholder="Nome do destinatário" value="" />
          </li>
        </ul>
        <ul class="fields">
          <li>
            <label for="giftcard_msg">Mensagem do presente:
            </label>
            <textarea  rows="6" name="giftcard_msg" id="giftcard_msg" placeholder="Aproveite seu presente!">
            </textarea>
          </li>
        </ul>
      </fieldset>
      <div class="form-btn group">
        <button type="button" name="btn-cancel" id="btn-cancel" class="btn cancel" onclick="$.fancybox.close();">
          <span>Cancelar
          </span>
        </button>
        <button type="submit" name="btn-submit" id="btn-submit" class="btn btn-primary">
          <i class="fas fa-check">
          </i> 
          <span>Salvar cartão
          </span>
        </button>
      </div>
    </div>
  </form>
</section>
