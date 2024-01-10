{% if showcase is defined %}
<div data-element="showcase-grid" class="showcase-grup flex" direction="row" wrap="true" justify-space="between" align-items="center">
  {% for element in showcase.elements %}
  <div data-element="showcase-grid-item" class="showcase-element {{ element.tags ? " tag-" : " " }}{{ element.tags|join(' tag-')|raw }} element-{{element.type}} element-{{element.id}} flex"
       sc-x="{{element.x}}"
       sc-y="{{element.y}}"
       width="{{element.width}}"
       sc-id="{{element.id}}"
       >
    {{element.content|raw}}
  </div>
  {% endfor %}
</div>
{% endif%}
