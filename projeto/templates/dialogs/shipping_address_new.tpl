<style type="text/css">
  section.shipping-address-new {
    max-width: 700px;
    padding: 0;
    font-size: 0.9em;
  }
  section.shipping-address-new .form-btn.group {
    justify-content: space-between;
  }
  section.shipping-address-new fieldset.form-fields-group ul.fields li > input,
  section.shipping-address-new fieldset.form-fields-group ul.fields li > select {
    height: 35px;
  }
  @media only screen and (max-width:600px) {
    section.shipping-address-new .form-btn.group button {
      margin-bottom: 10px;
      order:1;
    }
    section.shipping-address-new .form-btn.group button.cancel {
      border:none;
      background: none;
      color:var(--custom-font-dark-color,#404040);
      font-size: 1em;
      margin: 0;
      order:2;
    }
  }
</style>
<section class="shipping-address-new">
  <form name="f-shipping-address-new" id="f-shipping-address-new" type="post">
    <div class="custom-container">
      <fieldset class="form-fields-group">
        <ul class="fields">
          <li>
            <label for="label">Como você deseja chamar este endereço?</label>
            <input type="text" name="label" id="label" class="validate[required,minSize[3],maxSize[20]]" autocomplete="off" placeholder="Casa, apartamento, trabalho..." value="{{address.fields.label.default|raw}}" />
          </li>
        </ul>
      </fieldset>
      <fieldset class="form-fields-group">
        <legend><span>Responsável</span>
        </legend>
        <ul class="fields">
          <li>
            <label for="firstname">Nome:</label>
            <input type="text" autocomplete="given-name" name="firstname" id="firstname" class="validate[required,minSize[3]]" value="{{address.fields.firstname.default|raw}}" />
          </li>
          <li>
            <label for="lastname">Sobrenome:</label>
            <input type="text" autocomplete="additional-name" name="lastname" id="lastname" class="validate[required,minSize[3]]" value="{{address.fields.lastname.default}}" />
          </li>
        </ul>
      </fieldset>
      <fieldset class="form-fields-group">
        <legend><span>Endereço</span>
        </legend>
        <ul class="fields">
          <li class="input-field-autosize">
            <label for="postcode">CEP:</label>
            <input type="text" autocomplete="postal-code" value="{{address.fields.postcode.default}}" inputmode="numeric" size="9" pattern="d{5}-?d{3}" name="postcode" id="postcode" data-mask-clearifnotmatch="true" data-mask="00000-000" data-mask-selectonfocus="true" class="searching validate[required]" maxlength="10" placeholder="______-___" onBlur="utilityFnc.getAddressByCep(this);">
          </li>
        </ul>
        <ul class="fields">
          <li><label for="street">Endereço:</label>
            <input autocomplete="street-address" value="{{address.fields.street.default|raw}}" type="text" name="street" id="street" class="validate[required]" /></li>
          <li><label for="number">Número:</label>
            <input value="{{address.fields.number.default}}" inputmode="numeric" type="number" name="number" id="number" size="11" class="validate[required]" data-mask="99999" /></li>
          <li><label for="address_complement">Complemento:</label>
            <input autocomplete="address-line3" value="{{address.fields.street_complement.default|raw}}" type="text" name="street_complement" id="address_complement" maxlength="170" placeholder="(Opcional)" /></li>
          <li><label for="suburb">Bairro:</label>
            <input type="text" autocomplete="address-line2" value="{{address.fields.suburb.default|raw}}" name="suburb" id="suburb" class="validate[required]" /></li>
          <li><label for="city">Cidade:</label>
            <input type="text" autocomplete="address-level2 "value="{{address.fields.city.default|raw}}" name="city" id="city" class="validate[required]" /></li>
          <li>
            <label for="state">Estado:</label>
            <select name="state" id="state" class="validate[required]" data-default="{{address.fields.state.default}}">
            </select>
          </li>
          {% if ("country" in address.fields|keys and address.fields.country.status) %}
          <li><label for="country">País</label>
            <select name="country" id="country" data-zone-field="state">
              {% for country in address.fields.country.values %}
              <option {{ country.id == address.fields.country.default ? "selected" : "" }} value="{{country.id}}">{{country.text|raw}}</option>
              {% endfor %}
            </select>
          </li>
          {% endif %}
        </ul>
      </fieldset>
      <div class="form-btn group">
        <button type="button" name="btn-cancel" id="btn-cancel" class="btn cancel" onclick="$.fancybox.close();"><span>Cancelar</span>
        </button>
        <button type="submit" name="btn-submit" id="btn-submit" class="btn btn-primary"><i class="fas fa-check"></i> <span>{{(address.id>0 ? "Atualizar":"Cadastrar")|raw}}</span>
        </button>
      </div>
    </div>
  </form>
</section>