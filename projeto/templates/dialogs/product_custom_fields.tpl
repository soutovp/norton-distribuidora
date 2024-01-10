<style type="text/css">
  section.popup-product-custom-fields {
    max-width: 500px;
  }
  @media only screen and (max-width:600px) {
    section.popup-product-custom-fields div.form-btn button {
      margin-bottom: 10px;
      width: 100%;
      order:1;
    }
    section.popup-product-custom-fields div.form-btn button.cancel {
      border:none;
      background: none;
      color:var(--custom-font-dark-color,#404040);
      font-size: 1em;
      margin-bottom: 0;
      align-self: flex-end;
      order:2;
    }
  }
</style>
<script type="text/javascript">
  $('form#f-product-custom-fields').validationEngine({
    promptPosition: "bottomLeft:0,-7",
    autoHidePrompt: true,
    autoHideDelay: 5000, scroll: false,
    onValidationComplete: function(form, status){
      if (status) {
        _formdata = $('form#f-product-custom-fields').serializeArray();
        _formdata.push({
          name:'pid',value:'{{id}}'});
          shoppingCart.sendData('?action=update_config_product',_formdata,function (result){
          shoppingCart.getCart();
        }
        );
        $.fancybox.close();
      }
    }
  }
                                                    );
</script>
<section class="popup-product-custom-fields">
  <form name="f-product-custom-fields" id="f-product-custom-fields" method="post" data-element="form-custom-fields">
    <div class="form-content" data-element="form-content">
      <fieldset class="form-fields-group" id="custom-fields">
        {% for field in product.custom_fields %}
        <ul class="fields product-custom-fields">
          <li>
            <label for="{{ field.id }}">{{ field.label|raw }}{{ (field.required ? '<span class="required">*</span>':"")|raw }}:
            </label>
            {% if field.type == "text" %}
            <input autocomplete="off" type="text" name="{{ field.name }}" id="{{ field.id }}" class="{{ field.required ? 'required validate[required,minSize[1]]' : '' }}" size="50" value="{{field.value|raw}}" />
            {% elseif field.type == "textarea" %}
            <textarea name="{{ field.name }}" id="{{ field.id }}" wrap="" style="width:95%" rows="3" class="{{ field.required ? 'required validate[required,minSize[10]]' : '' }}">{{field.value|raw}}</textarea>
            {% elseif field.type == "checkbox" %}
            <input type="checkbox" name="{{ field.name }}" id="{{ field.id }}" value="Sim" class="{{ field.required ? 'required validate[required]' : '' }}" value="{{field.value|raw}}">
            {% elseif field.type == "date" %}
            <input type="date" data-date-format="DD/MMM/YYYY" name="{{ field.name }}" id="{{ field.id }}" class="{{ field.required ? 'required validate[required,custom[date]]' : '' }}" placeholder="__/__/____" value="{{field.value}}">
            <script type="text/javascript">$(document).ready(function(){
                $("input[id='{{ field.id }}']").mask("9900r00r9900", { placeholder: "__/__/____",translation: { 'r': { pattern: /[/-]/, fallback: '/' }, placeholder: "__/__/____" } } ); });</script>
            {% endif %}
          </li>
        </ul>
        {% endfor %}
      </fieldset>
    </div>
    <div class="form-btn group">
      <button type='button' class='btn cancel' onclick="$.fancybox.close();">Cancelar
      </button>
      <button type='submit'  class='btn btn-primary right' id="btn-submit">Salvar alterações
      </button>
    </div>
  </form>
</section>
