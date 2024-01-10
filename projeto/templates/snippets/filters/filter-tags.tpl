{% set tags = filter %}
{% if tags and tags|length >= 0 %}
{% for tag in tags %}
{% if tag.options|length > 0 %}
<div class="sidebar-filter-block filter--tags filter--{{ tag.slug }}">
  <div class="header flex" align-items="center" justify-content="space-between">
    <h3>{{ tag.name|raw }} 
    </h3>
    <i class="icon-plus fas fa-plus">
    </i>
    <i class="icon-minus fas fa-minus">
    </i>
  </div>
  <div class="content position-relative mini-scroll">
    <ul class="options flex" direction="column" wrap="true" data-type="list">
      {% for item in tag.options %}
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
