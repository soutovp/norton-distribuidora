{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<style type="text/css">
  .list-search-form .mobile-view {
    display: none;
  }
  .list-search-form {
    margin: 20px auto;
    width: fit-content;
  }
  .list-search-form .desktop-view {
    display: flex;
    flex-flow: column nowrap;
    padding: 0px 50px 30px;
  }
  .list-search-form .desktop-view .title {
    font-size: 1.3em;
    color: #414141;
  }
  .list-search-form .mobile-view .actions {
    display: flex;
    flex:0 0 auto;
    justify-content: center;
    align-items: center;
    flex-flow: column;
    width: fit-content;
    margin: 0 auto;
  }
  .list-search-form .mobile-view .actions button{
    margin-top: 15px;
  }
  .list-search-form .desktop-view .actions {
    margin: 24px 0px;
    display: flex;
    flex-flow: row nowrap;
    align-items: center;
  }
  .list-search-form .desktop-view .actions button {
    margin-right: 10px;
    padding: .375rem 1rem;
  }
  .list-search-form .desktop-view .description {
    font-size: 16px;
    letter-spacing: unset;
    text-align: start;
    text-transform: unset;
    margin: 13px 0px;
    padding: 0;
  }
  .list-search-form .desktop-view fieldset.form-fields-group ul.fields>li label {
    margin: 0;
    padding: 3px 0;
  }
  @media only screen and (max-width:600px) {
    .list-search-form {
      margin:10px auto;
    }
    .list-search-form .mobile-view {
      display: unset;
    }
    form#f-search-list .description,
    .list-search-form .desktop-view {
      display: none;
    }
  }
</style>
<script type="text/javascript">
  $(document).ready(function() {
    var _form = $("form[data-element='form-search-list']");
    if (_form.length == 0)
      throw new Error("This page require the form type element 'form-search-list'.");
    $.applyDataMask();
    _form.validationEngine({
      promptPosition: "topLeft",
      autoHidePrompt:true,
      autoHideDelay:5000,
      onValidationComplete: function(form, status){
        return status;
      }
    }
                          );
    $('input[data-dd-format]')
      .dateDropper({
      theme: 'iflat',
      lang: "pt",
      modal: true,
      largeOnly: true,
      startFromMonday: false,
      eventListener: 'click',
      autofill: false,
      lock: 'from',
      minDate: '{{"now"|date("m/d/Y")}}'
    }
                  );
  }
                   );
</script>
<section class="lists list-{{list.id}}">
  <div class="list-search-form" direction="column">
    <div class="desktop-view" style="border-bottom: 1px solid rgb(206, 206, 206);">
      <div class="title">
        Quero Criar uma Lista
      </div>
      <div class="actions">
        <a href="/minha-conta/listas/{{list.id}}">
          <button type="button" class="button-style-primary btn btn-primary">
            <span>Criar minha lista
            </span>
          </button>
        </a>
        <a href="/minha-conta/listas/{{list.id}}">
          <button type="button" class="btn-secondary button-style-secondary btn">
            <span>
              <i class="fas fa-clipboard-list-check">
              </i>&nbsp;Gerenciar minha lista
            </span>
          </button>
        </a>
      </div>
    </div>
    <div class="mobile-view" direction="column">
      <div class="title">O que você deseja fazer?
      </div>
      <div class="actions">
        <button type="button" class="btn btn-primary" data-fancybox data-src="#f-search-list">
          <span>Quero Presentear
          </span>
        </button>
        <a href="/minha-conta/listas/{{list.id}}">
          <button type="button" class="button-style-primary btn btn-primary btn">
            <span>Criar minha lista
            </span>
          </button>
        </a>
        <a href="/minha-conta/listas/{{list.id}}">
          <button type="button" class="btn-secondary button-style-secondary btn">
            <span>
              <i class="fas fa-clipboard-list-check">
              </i>&nbsp;Gerenciar minha lista
            </span>
          </button>
        </a>
      </div>
    </div>
    <form action="{{list.url}}search" class="desktop-view" name="f-search-list" id="f-search-list" type="post" method="post" style="padding: 40px 50px;" data-element="form-search-list">
      <div class="title">Quero 
        <b>Presentear
        </b>
      </div>
      <div class="description">Encontre uma lista para presentear alguém especial
        <br>preenchendo um dos campos abaixo.
      </div>
      <fieldset class="form-fields-group">
        <ul class="fields">
          {% for search_field in list.search_fields %}
          {% set field = search_field.field %}
          <li>
            <label for="{{field.name}}">{{search_field.label|raw}}</label>
            {% if field.type == "textbox" %}
            <input type="text" name="{{field.name}}" id="{{field.name}}" class="validate[required,minSize[2],maxSize[30]]" autocomplete="off" placeholder="{{field.placeholder|raw}}" value="{{field.value}}" />
            {% elseif field.type == "datetime" %}
            <input autocomplete="off" data-mask="99/99/9999" data-dd-format="d/m/Y" class="validate[required,custom[date],past[now]]" type="text" name="{{field.name}}" id="{{field.name}}" size="14" maxlength="10" placeholder="__/__/____" value="{{field.value}}">
            {% endif %}
          </li>
          {% endfor %}
        </ul>
      </fieldset>
      <div class="form-btn" style="margin-top: 0;">
        <button type="submit" name="btn-submit" id="btn-submit" class="button-style-primary btn btn-primary">
          <i class="fas fa-search">
          </i> 
          <span>Buscar Lista
          </span>
        </button>
      </div>
    </form>
  </div>
</section>
{% include("footer.tpl") %}