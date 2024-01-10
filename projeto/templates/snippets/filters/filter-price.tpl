{% set filterPrice = filter %}
{% if filterPrice and filterPrice.max > 0 %}
<style>
  .content-filter--price #slider-range .ui-slider-range {
    height: 5px;
    background: #555;
  }
  .content-filter--price.content {
    margin-top: 15px;
    height: 40px;
  }
  .content-filter--price #slider-range {
    height: 5px;
    background: #ddd;
    border: none;
    max-width: 90%;
    margin: 15px auto 0;
  }
  .content-filter--price .ui-slider-horizontal .ui-slider-handle {
    width: 15px;
    height: 15px;
    border-radius: 100%;
    cursor: grab;
  }
  .ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active {
    cursor: grabbing !important;
  }
  .content-filter--price p input {
    font-size: 80%;
    background: none;
    border: none;
    max-width: 110px;
    margin-top: 5px;
    color: var(--cor-txt-nome-prto);
  }
  .content-filter--price p input#price_max {
    text-align: end;
  }
  @media (max-width: 600px) {
    .content-filter--price.content {
      margin-top: 5px;
    }
  }
</style>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<div class="sidebar-filter-block filter--price">
  <div class="header flex" align-items="center" justify-content="space-between">
    <h3>Faixa de preço
    </h3>
    <i class="icon-plus fas fa-plus">
    </i>
    <i class="icon-minus fas fa-minus">
    </i>
  </div>
  <div class="content position-relative">
    <form method="get" name="f-filter-price" id="f-filter-price" class="w-100 flex" direction="column" action="{{ url("current") }}">
      <div class="content-filter--price content position-relative">
        <div id="slider-range">
        </div>
        <p class="flex" justify-content="space-between">
          <input name="price_min" type="text" id="price_min" class="flex" justify-content="start" value="R$ {{currency.format_only_value(filterPrice.min)}}">
          <input name="price_max" type="text" id="price_max" class="flex" justify-content="end" value="R$ {{currency.format_only_value(filterPrice.max)}}">
        </p>    
      </div>  
      <div class="flex w-100" direction="row" wrap="false" align-items="start">
        <input type="checkbox" name="promotion" value="1">
        <span class="label">Somente promoções
        </span>
      </div>
      <div class="flex w-100" direction="column" wrap="false">
        <button type="submit" class="btn-secondary button-style-secondary btn w-100"><span>Filtrar</span>
        </button>
      </div>
    </form>
  </div>
</div>
<script defer src="https://ajax.aspnetcdn.com/ajax/jquery.ui/1.12.1/jquery-ui.js" >
</script>
<script>
  $(document).ready(function () {
    $( "#slider-range" ).slider({
      range: true,
      min: {{ filterPrice.min }},
      max: {{ filterPrice.max }},
      step: 10,
      values: [ {{ filterPrice.min }}, {{ filterPrice.max }} ],
                                slide: function( event, ui ) {
      const minValue = ui.values[ 0 ];
      const maxValue = ui.values[ 1 ];
      $( "#price_min" ).val( "" + FormataMoeda(parseFloat(minValue),1));
      $( "#price_max" ).val( "" + FormataMoeda(parseFloat(maxValue),1));
    }
  }
                   );
  }
  );
</script>
{% endif %}
