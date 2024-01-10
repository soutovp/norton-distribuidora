<!-- Start Breadcrumb -->
<style>
  #breadcrumb {
    font-size: 90%;
    margin: 15px auto;
    gap: 5px;
  }
  #breadcrumb li {
    gap: 5px;
    align-items: baseline;
  }
  #breadcrumb li, #breadcrumb li a {
    color: var(--cor-txt-gerais);
    opacity: 0.8;
  }
  #breadcrumb li a:hover {
    opacity: 1;
  }
  #breadcrumb i {
    font-size: 90%;
  }
  @media (max-width: 600px) {
    #breadcrumb {
      display: none;
    }
  }
</style>
{% if section.id not in ["login","checkout","checkout_success","register"] and breadcrumb is defined %}
<ul id="breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList" class="flex custom-container" wrap="true">
  {% for index,bread in breadcrumb %}{% set index = index + 1 %}
  <li class="flex" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">{% if bread.link is not empty %}<a itemprop="item" href="{{bread.link}}" title="{{bread.title|raw}}">{% endif %}{% if (index == 1) %}<meta itemprop="name" content="{{bread.title|raw}}" />
    <span>Home
    </span>{% else %}<span itemprop="name">{{bread.title|raw}}</span>{% endif %}{% if bread.link is not empty %}</a>{% if index < breadcrumb|length %}<i class="fad fa-chevron-double-right fa-xs">
    </i>{% endif %}{% endif %}<meta itemprop="position" content="{{index}}" />
  </li>
  {% endfor %}
</ul>
{% endif %}
<!-- End breadcrumb -->
