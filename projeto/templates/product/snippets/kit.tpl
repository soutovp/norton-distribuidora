<div class="product-kit">
    <div class="kit-title">Produtos do Kit</div>
    <div class="kit-list">
        <ul class="kit-items">
            {% for item in product.kit.items %}
            <li class="kit-item">
                <div class="kit-item-image">
                    <div class="image">{{ item.thumb|raw}}</div>
                    <div class="quantity">{{ item.qtda~(item.qtda>1 ? " unidades" : " unidade") }}</div>
                </div>
                <div class="kit-item-info" data-element="kit-item-info">
                    <a href="{{ item.url }}" target="_blank">
                        <div class="name">{{ item.name|raw }}</div>
                    </a>
                    <div class="sku">Ref: {{ item.sku }}</div>
                    {% if item.attributes is defined %}
                        {% set attributes = item.attributes %}
                        {% include 'product/snippets/attributes.tpl' %}
                    {% endif %}
                </div>
            </li>
            {% endfor %}
        </ul>
    </div>
</div>