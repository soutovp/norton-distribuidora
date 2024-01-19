  <style>
    /*==Desconto progressivo==*/
    section.product-page div.product-progressive-discount, #product-progressive-discount {
      padding: 0;
      max-width: 100%;
      border: 1px solid #eee;
      margin: 10px 0;
    }
    .product-progressive-discount .rules, #progressive-rules {
      position: relative;
    }
    section.product-page div#product-progressive-discount ul#progressive-rules li#progressive-body>div, section.product-page div#product-progressive-discount ul#progressive-rules li#progressive-header>div {
      /*order: 1px solid #eee;*/
      padding: 10px;
    }
    #progressive-header{
      display: flex;
      flex-direction: row;

    }
    #progressive-header > div{
      border: 1px solid #eee;
      padding: 10px;
      box-sizing: border-box;
      width: 50%;
    }
    section.product-page div.product-progressive-discount div.title, #progressive-title {
      text-align: center;
      background: #0EC040;
      color: #FFFFFF;
      padding: 10px;
      margin: 0;
    }
    section.product-page div.product-progressive-discount ul.rules, #progressive-rules {
      margin: 0;
    }
    section.product-page div.product-progressive-discount ul.rules li#progressive-header div {
      font-size: 1rem;
      font-weight: bold;
      color: {{ variables.cms_config_geral.cms_cor_txt_gerais }};
    }
    section.product-page div.product-progressive-discount ul.rules>li {
      position: relative;
      align-items: center;
    }
    .value, #progressive-value {
      border-right: none !important;
    }
    .product-progressive-discount .percentage-discount, #percentage-discount {
      position: absolute;
      right: 3px;
      top: 0;
      border: none;
      font-size: 10px !important;
      color: #fff;
      font-weight: 600;
    }
    .product-progressive-discount #percentage-discount span {
      background: {{ variables.cms_grade_produtos.cms_tag_oferta }};
      height: 28px;
      width: 28px;
      border-radius: 100%;
      display: flex;
      align-items: center;
      position: absolute;
      right: 0;
    }
    .norton-value-progressive{
      color: #0EC040;
    }
    @media (max-width: 1250px) {
      section.product-page div.product-progressive-discount, #product-progressive-discount {
        max-width: 70%;
      }
    }
    @media (max-width: 1100px) {
      section.product-page div.product-progressive-discount, #product-progressive-discount {
        max-width: 1000%;
      }
    }
    /*==FIM==*/
  </style>
  <div class="product-progressive-discount" id="product-progressive-discount">
    <div class="title" id="progressive-title">Desconto progressivo</div>
    <ul class="rules" id="progressive-rules">
      <li class="header" id="progressive-header">
        <div class="quantity">Quantidade
        </div>
        <div class="value" id="progressive-value">Valor
        </div>
      </li>
      {% for rule in product.price.rules %}
      <li class="body" id="progressive-body">
        <div class="quantity">{{ (rule.max==0 ? ("acima de %s unidades"|format(rule.min)) : ("%s até %s unidades"|format(rule.min,rule.max)))|raw}}</div>
        <div class="value norton-value-progressive">{{currency.format(rule.value)}} / un.</div>
        <div class="percentage-discount" id="percentage-discount">{{ (rule.discount>0) ? ("<span>-"~rule.discount~"%</span>")|raw : ""}}</div>
      </li>
      {% endfor %}
    </ul>
  </div>