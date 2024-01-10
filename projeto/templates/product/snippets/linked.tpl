<style>
  section.recommendations .product-card-quickview {
    display: none;
}
  section.recommendations div.title {
    font-size: initial;
    text-transform: uppercase;
    letter-spacing: 0.025em;
    line-height: 3em;
    border-bottom: 2px solid;
    display: flex;
    margin: 50px 0;
  }
  section.recommendations div.title h2 {
    top: -25px;
    background-color: var(--cor-bg-corpo);
    color: var(--cor-txt-gerais);
    padding: 0 15px;
  }
  section.recommendations div.wishlist button {
    border: none;
  }
  @media (max-width: 600px) {
    section.recommendations div.title {
      margin: 30px 0;
    }
    section.recommendations div.title h2 {
      position: relative;
      font-size: 1em;
      top: 0;
      white-space: break-spaces;
    }
    .recommendations .product-card .countdown {
      bottom: 100px;
      margin: 0 auto;
    }
  }
</style>
<section class="recommendations">
  <div class="title flex position-relative w-100" align-items="center" justify-content="center">
    <h2 class="position-absolute">Aproveite e veja também
    </h2>
  </div>
  <div class="content w-100">
    <div class="carousel-products-wrapper collection-grid mode-grid flex" direction="row" wrap="false"
         data-element="carousel-products"
         data-auto-play="true"
         data-loop="true"
         data-nav="false"
         data-dots="true"
         data-speed="1000"
         data-timeout="5000"
         data-items-mobile="2"
         data-items="{{element.items}}"
         data-margin="15"
         >
      {% for product in linkedProducts %}
      {% if product.stock > 0 %}
      <div data-element="carousel-products-item">
        {% include 'snippets/collection/product-card.tpl' %}
      </div>
      {% endif %}
      {% endfor %}
    </div>
  </div>
</section>  
