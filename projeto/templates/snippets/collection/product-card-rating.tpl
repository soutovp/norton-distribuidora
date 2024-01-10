{% set stars = product.rating.rate %}
<div class="stars flex w-100 {{stars==0?"no-votes":""}}" align-items="center" justify-content="center">
  {% for i in 1..5 %}
  <i class="{{stars>=i ? "fas" : "far"}} fa-star">
  </i>
  {% endfor %}
  {% if card_direction == "row" %}
  <div class="list-only"> 
    <span>{{ product.rating.count }}</span>
  </div>
  {% else %}
  <div class="grid-only">({{ product.rating.count|raw }})
  </div>
  {% endif %}
</div>
