{% for id, rule in rules %}
<div class="rule-total-desc flex" justify-content="space-between">
  <span class="title">{{rule.title|raw}}:
  </span>
  <span class="value">{{rule.text}}</span>
</div>
{% endfor %}
