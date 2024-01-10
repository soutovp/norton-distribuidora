<style>
  {% include 'assets/sidebar_filter.css' %}
</style>
<aside class="collection-sidebar-filter template-cards flex position-relative" direction="column">
  <div class="collection-sidebar-header flex hide-on-large-only" direction="row" align-items="center" justify-content="space-between">
    <h3 class="text">FILTRAR
    </h3>
    <span class="collection-sidebar-close">
      <i class="fas fa-times">
      </i>
    </span>
  </div>
  {% if filters.selected %}
  {% include 'snippets/filters/filter-selected.tpl' %}
  {% endif %}
  {% for group, filter in filters.groups %}
  {% include 'snippets/filters/filter-' ~ group ~ '.tpl' %}
  {% endfor %}
</aside>
<div class="collection-sidebar-overlay">
</div>
