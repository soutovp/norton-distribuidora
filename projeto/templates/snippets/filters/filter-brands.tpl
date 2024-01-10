{% set brands = filter %}
{% if brands and brands|length > 0 %}
<div class="sidebar-filter-block filter--brands">
  <div class="header flex" align-items="center" justify-content="space-between">
    <h3>Marca/Modelo
    </h3>
    <i class="icon-plus fas fa-plus">
    </i>
    <i class="icon-minus fas fa-minus">
    </i>
  </div>
  <div class="content position-relative mini-scroll animated">
    <ul class="options flex" direction="column" data-type="list">
      {% for item in brands %}
      <li class="options__item{% if item.checked %} checked{% endif %}">
        <a href="{{ item.url }}" class="link" rel="nofollow">
          <span class="icon checked">
            <i class="fal fa-check-square">
            </i>
          </span>
          <span class="icon unchecked">
            <i class="fal fa-square">
            </i>
          </span>
          <span class="text">{{ item.name|raw }}</span>
        </a>
      </li>
      {% endfor %}
    </ul>
  </div>
</div>
{% endif %}
