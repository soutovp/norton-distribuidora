{% set attributes = filter %}
{% if attributes and attributes|length >= 0 %}
{% for attribute in attributes %}
{% if attribute.options|length > 0 %}
<div class="sidebar-filter-block filter--attributes filter--{{ attribute.slug }}">
  <div class="header flex" align-items="center" justify-content="space-between">
    <h3>{{ attribute.name|raw }}</h3>
    <i class="icon-plus fas fa-plus">
    </i>
    <i class="icon-minus fas fa-minus">
    </i>
  </div>
  <div class="content position-relative mini-scroll">
    <ul class="options flex" direction="{{ attribute.type == "list"?"column":"row"}}" wrap="true" data-type="{{attribute.type}}">
      {% for item in attribute.options %}
      <li class="options__item{% if item.checked %} checked{% endif %}">
        <a href="{{ item.url }}" class="link" rel="nofollow">
          {% if attribute.type == "list" %}
          <span class="icon checked">
            <i class="fal fa-check-square">
            </i>
          </span>
          <span class="icon unchecked">
            <i class="fal fa-square">
            </i>
          </span>
          {% endif %}
          <span class="text">{{ item.label|raw }}</span>
        </a>
      </li>
      {% endfor %}
    </ul>
  </div>
</div>
{% endif %}
{% endfor %}
{% endif %}
