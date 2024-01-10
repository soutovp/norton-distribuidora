{% set categories = filter %}
{% if categories and categories|length > 0 %}
<div class="sidebar-filter-block filter--brands">
  <div class="header flex" align-items="center" justify-content="space-between">
    <h3>Categorias
    </h3>
    <i class="icon-plus fas fa-plus">
    </i>
    <i class="icon-minus fas fa-minus">
    </i>
  </div>
  <div class="content position-relative mini-scroll animated">
    <ul class="options flex" direction="column" data-type="list">
      {% for category in categories %}
      <li class="options__item{% if category.checked %} checked{% endif %}">
        <a href="{{ category.url }}" class="link" rel="nofollow">
          <span class="icon checked">
            <i class="fal fa-check-square">
            </i>
          </span>
          <span class="icon unchecked">
            <i class="fal fa-square">
            </i>
          </span>
          <span class="text">{{ category.name|raw }}</span>
        </a>
        {% if category.children|length > 0 %}
        <ul class="options flex" direction="column" data-type="list">
          {% for subCategory in category.children %}
          <li class="options__item{% if subCategory.checked %} checked{% endif %}">
            <a href="{{ subCategory.url }}" class="link" rel="nofollow">
              <span class="icon checked">
                <i class="fal fa-check-square">
                </i>
              </span>
              <span class="icon unchecked">
                <i class="fal fa-square">
                </i>
              </span>
              <span class="text">{{ subCategory.name|raw }}</span>
            </a>
          </li>
          {% endfor %}
        </ul>
        {% endif %}
      </li>
      {% endfor %}
    </ul>
  </div>
</div>
{% endif %}
