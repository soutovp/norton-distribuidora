{% set selected = filters.selected  %}
{% if selected and selected|length > 0 %}
<div class="sidebar-filter-block filter--selected">
  <div class="header flex" align-items="center" justify-content="space-between">
    <i class="fas fa-filter">
    </i>
    <h3>Filtros ativos ({{selected|length}})
    </h3>
  </div>
  <div class="content position-relative">
    <ul class="options flex" direction="column" data-type="list">
      {% for item in selected %}
      <li class="options__item">
        <a href="{{ item.url }}" class="link flex position-relative" direction="row" wrap="false" rel="nofollow" align-items="center" justify-space="between">
          <span class="text">{{ item.label|raw }}</span>
          <span class="remove">
            <i class="far fa-times">
            </i>
          </span>
        </a>
      </li>
      {% endfor %}
    </ul>
  </div>
  <div class="footer">
    <a href="{{ paginate.url }}" class="link" rel="nofollow">Remover todos
    </a>
  </div>
</div>
{% endif %}
