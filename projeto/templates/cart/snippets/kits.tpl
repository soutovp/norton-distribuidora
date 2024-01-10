{% for id, kit in kits %}
<div class="kit flex" justify-content="space-between">
  <span class="title">
    <b>{{kit.quantity}}x
    </b> {{ kit.title|raw }}:
  </span>
  <span class="value">{{ currency.format(kit.value) }}</span>
</div>
{% endfor %}