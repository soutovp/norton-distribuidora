<script type="text/javascript" src="https://kit.fontawesome.com/80583c5e2b.js" data-keep-original-source="false" data-auto-replace-svg="nest" async>
</script>
<link media="all" href="{{asset("css/addons/pagination.min.css","ui")}}" type="text/css" rel="stylesheet">
<style>
    .fancybox-container .fancybox-toolbar {
    opacity: 1;
    visibility: initial;
}
.fancybox-container .fancybox-slide {
    padding: 15px;
}
  form {
    margin: 0;
  }
  section.product-reviews {
    font-family: 'Nunito Sans',sans-serif;
  }
  section.product-reviews .product-reviews-header {
    border-bottom:1px solid rgba(229, 229, 229, 0.58);
    padding-bottom: 15px;
    text-align: right;
  }
  section.product-reviews .product-reviews-header select {
    background: none;
    outline: inherit;
    padding: 8px 13px;
    border:1px solid rgba(229, 229, 229, 0.58);
    border-radius: 5px;
    width: fit-content;
  }
  section.product-reviews ul.reviews,
  section.product-reviews ul.reviews li {
    list-style: none;
    padding:0;
    margin:0;
    background: #FFF;
  }
  section.product-reviews ul.reviews {
    margin: 10px 0;
    max-height: 250px;
    overflow: -moz-scrollbars-vertical;
    overflow-y: auto;
    overflow-anchor: none;
    -ms-overflow-style: none;
    touch-action: auto;
    -ms-touch-action: auto;
    transition-property: all;
    transition-duration: .5s;
    transition-timing-function: cubic-bezier(0, 1, 0.5, 1);
  }
  section.product-reviews ul.reviews li {
    margin-bottom: 10px;
    border-bottom: 1px solid var(--color-txt-20);
    padding-bottom: 10px;
    display: flex;
    align-items: center;
    color: #555;
  }
  section.product-reviews ul.reviews li:last-child {
    border-bottom: none;
  }
  .product-reviews span.rating {
    color: #ffb503;
  }
  section.product-reviews ul.reviews li > div.reviewer {
    width: 100px;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  section.product-reviews ul.reviews li > div.comment {
    border-left: 1px solid var(--color-txt-20);
    padding-left: 10px;
    margin-left: 10px;
    display: flex;
    flex-direction: column;
  }
  section.product-reviews ul.reviews li > div span {
    margin-bottom: 8px;
  }
  section.product-reviews ul.reviews li > div span.title {
    font-size: 14px;
    font-weight: bold;
  }
  section.product-reviews ul.reviews li > div span.text {
    word-wrap: break-word;
  }
  section.product-reviews ul.reviews li > div span.date {
    font-size: 10px;
    color: #A9A9AA;
  }
  section.product-reviews ul.reviews li > div span.name {
    font-size: 0.8em;
  }
  nav.pagination {
    margin: 10px 0;
  }
</style>
<section class="product-reviews">
  <div class="product-reviews-header">
    <div class="collection-sort">
      <form name="f-collection-sort" id="f-collection-sort" method="post" action="{{ url("current") }}">
        <select name="sort" onchange="$('form#f-collection-sort').submit()">
          <option {{ paginate.sort == "" ? "selected" : "" }} disabled>Ordenar por
          </option>
          <option {{ paginate.sort == "best_rating" ? "selected" : "" }} value="best_rating">Melhores avaliações
          </option>
          <option {{ paginate.sort == "low_rating" ? "selected" : "" }} value="low_rating">Piores avaliações
          </option>
        </select>
      </form>
    </div>
  </div>
  <div class="content flex" direction="column" align-items="center">
    <ul class="reviews w-100">
      {% for review in reviews %}
      <li class="review flex" direction="row" wrap="false"  itemscope itemtype="http://data-vocabulary.org/Review">
        <meta itemprop="itemreviewed" content="{{product.name|raw}}" />
        <meta itemprop="rating" content="{{review.rate}}" />
        <meta itemprop="dtreviewed" content="{{review.date|format_datetime(pattern="YYYY-MM-dd'T'HH:mm:ss'Z'")|raw}}" />
        <div class="reviewer flex text-center" direction="column" align-items="center">
          <span class="img-reviewer">
            <img src="{{review.image}}" alt="" class="responsive-img">
          </span>
          <span class="name" itemprop="reviewer">{{review.name|raw}}</span>
        </div>
        <div class="comment flex w-100" direction="column">
          <span class="title">{{review.title|raw}}</span>
          <span class="rating">
            {% for i in 1..5 %}
            <i class="{{review.rate>=i ? 'fas' : 'far'}} fa-star">
            </i>
            {% endfor %}
          </span>
          <span class="text" itemprop="description">{{review.comment|raw}}</span>
          <span class="date">Avaliado em {{review.date|format_datetime(pattern="dd 'de' MMMM 'de' YYYY', &#xE0;s' HH:mm:ss", locale='brl')|raw}}</span>
        </div>
      </li>
      {% endfor %}
    </ul>
    <div class="collection-paginate">
      {% set paginate = {total:paginate.total,current: paginate.current,main_url: paginate.url } %}
      {% include "snippets/paginate.tpl" %}
    </div>
  </div>
</section>