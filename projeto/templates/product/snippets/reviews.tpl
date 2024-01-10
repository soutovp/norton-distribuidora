<style>
  section.product-reviews ul.reviews li {
    margin-bottom: 10px;
    border-bottom: 1px solid var(--color-txt-20);
    padding: 10px;
    color: var(--color-txt-80);
  }
  .open-reviews .product-reviews ul.reviews li > div.comment {
    border-left: 1px solid var(--color-txt-20);
    padding-left: 10px;
    margin-left: 10px;
  }
  section.product-reviews .content ul {
    border-radius: 3px;
  }
  .box_products_reviews .title,
  .open-reviews .title{
    letter-spacing:.35em;
    text-transform: uppercase;
    margin-bottom: 15px;
  }
  .box_products_reviews .content {
    border: 1px solid var(--color-txt-20);
    color: var(--cor-txt-nome-prto);
    width: 80%;
    border-radius: 3px;
    margin: auto;
    padding: 30px;
  }
  .box_products_reviews .content ul.rating{
    list-style:none;
    padding:0;
    margin:0;
    text-transform:uppercase;
    letter-spacing:-1px;
  }
  #box-product-payment-methods .label-left {
    max-width: 75%;
    display: inline-block;
  }
  .box_products_reviews .content ul.rating li .pb{
    display:block;
  }
  .box_products_reviews .content .rating li span.progress{
    width: 20%;
  }
  #average div {
    font-size: 14px;
    color: var(--cor-txt-nome-prto);
  }
  .percent-count {
    min-width: 65px;
    font-size: 14px;
    color: var(--cor-txt-nome-prto);
  }
  @media (max-width:1000px) {
    .box_products_reviews .content {
      flex-direction: column;
      gap: 20px;
    }
    .box_products_reviews .content .flex[width='4'] {
      -ms-flex-preferred-size: 100%;
      flex-basis: 100%;
      max-width: 100%;
      width: 100%;
    }
  }
  @media (max-width:600px) {
  .open-reviews section.product-reviews .product-reviews-header select {
    width: 100% !important;
}
  }
  /* Open-riviews */
  .open-reviews section.product-reviews .product-reviews-header select {
    background: var(--cor-bg-blcs-gp);
    outline: inherit;
    padding: 8px 13px;
    border: 1px solid var(--color-bg-40);
    border-radius: 5px;
    width: fit-content;
    color: var(--cor-txt-nome-prto);
  }
  .open-reviews section.product-reviews ul.reviews li {
    margin-bottom: 10px;
    border-bottom: 1px solid var(--color-txt-20);
    padding: 10px;
  }
  .open-reviews .rating i svg path {
    fill: #ffb503;
  }
  .open-reviews span.open-reviews-btn {
    text-align: center;
  }
  @media (max-width:500px) {
    .open-reviews .product-reviews ul.reviews li > div.comment {
      font-size: 0.825em;
    }
  }
  /* End-Open-riviews */
</style>
{% if variables.cms_config_geral.cms_open_reviews is not empty %}  
<div class="open-reviews position-relative flex" direction="column">
  {% if show_reviews %}
  {% if product.rating.count > 0 %}
  <div class="title text-center">Opinião dos consumidores
  </div>
  <reviews data-id="{{ product.id }}" data-limit="10" data-show-pagination="false">
  </reviews>
  {% endif %}
  {% endif %}
  <span class="open-reviews-btn">
    <button type="button" class="button-style-primary btn-lg btn-primary btn" data-action="productInfo.rating" data-type="buttonAction">
      <span>
        <i class="fa fa-comment">
        </i> {{product.reviews.total>0?'Avaliar produto!':'Seja o primeiro a avaliar!'}}</span>
    </button>
  </span>
</div>
{% else %}
<div class="box_products_reviews">
  <div class="title text-center">Opinião dos consumidores
  </div>
  <div class="content flex template-cards" align-items="center" wrap="true">
    <div id="ratings" class="flex" width="4">
      <ul class="rating flex w-100 collection-grid mode-grid" gap="10" direction="column" align-items="center">
        {% for star_rate,star in product.reviews.stars|reverse(true) %}
        <li class="flex w-100 collection-grid mode-grid" gap="10" justify-content="center" align-items="center">
          <span>
            <span class="stars">
              {% for i in 1..5 %}
              <i class="{{star_rate>=i ? 'fas' : 'far'}} fa-star">
              </i>
              {% endfor %}
            </span>
          </span>
          <span class="progress">
            <span class="pb small">
              <span style="width:{{star.percent}}%">
                <i>&nbsp;
                </i>
              </span>
            </span>
          </span>
          <span class="percent-count">{{star.percent}}% | {{star.count}} 
          </span>
        </li>
        {% endfor %}
      </ul>
    </div>
    <div id="average" class="flex" width="4">
      <div class="text-center flex w-100 middle collection-grid mode-grid" gap="10" direction="column" align-items="center">
        <span>Avaliação geral:
        </span>
        <span>
          {% for i in 1..5 %}
          <i class="{{product.reviews.average>=i ? 'fas' : 'far'}} fa-star">
          </i>
          {% endfor %}
        </span>
        <span>{{product.reviews.average}} de 5 estrelas 
        </span>
        <span>
          <a data-fancybox data-options='{"type":"iframe","modal":false, "iframe" : {"css" : {"width" : "700px","height" : "400px"}}}' data-src="/product/{{product.id}}/reviews">Ver todos os comentários
          </a>
        </span>
      </div>
    </div>
    <div id="btn_rating" class="text-center flex w-100 collection-grid mode-grid" gap="10" width="4" direction="column" align-items="center">
      <span>
        {% if product.reviews.total>0 %}
        <b>E você, o que achou?
        </b>
        <br>Compartilhe sua opinião com a gente!
        {% else %}
        <i class="fas fa-comments" style="font-size:40px;color:#ccc;">
        </i>
        <br>
        <small>Este produto ainda não tem avaliações.
        </small>
        {% endif %}
      </span>
      <span>
        <button type="button" class="button-style-primary btn btn-primary" data-action="productInfo.rating" data-type="buttonAction">
          <span>
            <i class="fa-duotone fa-comments">
            </i>{{product.reviews.total>0?'Avaliar produto!':'Seja o primeiro a avaliar!'}}</span>
        </button>
      </span>
    </div>
  </div>
</div>
{% endif %}
