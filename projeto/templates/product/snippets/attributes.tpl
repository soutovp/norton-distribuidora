<div id="ProductOptionList" class="product-attributes" data-element="attributes-grid" data-pid="{{ attributes.pid }}" data-type="{{ attributes.type }}">
 {% if attributes.type == "combo_multiple" and attributes.combinations is defined and attributes.combinations is iterable %}

    {% set grid_columns_label = (attributes.combinations|first).options|column("name") %}
    {% set show_thumb = attributes.combinations|column("image")|length > 0 ? true : false %}

    <ul class="attributes-combinations" data-element="attributes-combinations">
        <li class="attributes-header">
            {% if show_thumb %}
            <div class="column">&nbsp;</div>
            {% endif %}
            {% for column in grid_columns_label %}
            <div class="column">{{column|raw}}</div>
            {% endfor %}
            <div class="column">&nbsp;</div>
        </li>
        {% for attributeIndex,attribute in attributes.combinations %}
        <li class="attributes-combo">
            {% if attribute.image %}
            <div class="thumb"><img src="{{ attribute.image }}" border="0" width="50" alt="" /></div>
            {% elseif show_thumb %}
            <div class="thumb">&nbsp;</div>
            {% endif %}
            {% for combo in attribute.options %}
            <div class="attributes-item type-{{ combo.type }}">
                <label>{% if combo.type == "image" %}<img src="{{ combo.option.label }}" border="0" width="50" alt="" />{% else %}{{ combo.option.label|raw }}{% endif %}</label>
            </div>
            {% endfor %}
            <div class="attributes-item-buy">
                <input name="{{ attribute.input.name }}" type="checkbox" value="{{ attribute.input.value }}" id="{{ attribute.input.id }}" {{ attribute.stock > 0 ? '' : 'class="disable"' }} {{ attribute.input.checked ? 'checked' : '' }}/>
                <input autocomplete="none" name="quantity[{{ product.id }}][{{ attributeIndex }}]" id="quantity[{{ product.id }}][{{ attributeIndex }}]" class="quantitySelect" type="number" value="0" step="1" min="0" max="{{ quantity_select.max }}">
            </div>
        </li>
        {% endfor %}
    </ul>
{% else %}
    {% for groupIndex, attribute in attributes.items %}

    <fieldset class="grupo-{{ attribute.group.id }}" >
        <legend class="name">{{ attribute.group.name|raw }}</legend>
        <ul class="attributes-group" data-element="attributes-group">
            {% for optionIndex, option in attribute.options %}
            <li class="attributes-item type-{{ attribute.group.type }}">
                {% if option.thumb and attributes.type == "individual" %}
                <div class="thumb"><img src="{{ option.thumb }}" border="0" alt="" /></div>
                {% endif %}
                {% if quantity_select.status and attributes.type == "individual" %}
                <input autocomplete="none" name="quantity[{{ product.id }}][{{ optionIndex }}]" id="quantity[{{ product.id }}][{{ optionIndex }}]" class="quantitySelect" type="number" value="0" step="1" min="0" max="{{ quantity_select.max }}">
                {% endif %}
                {% if attributes.type == "individual" or attribute.group.type == "checkbox" %}
                <input name="{{ option.input.name }}" type="checkbox" value="{{ option.input.value }}" id="{{ option.input.id }}" {{ option.stock > 0 ? '' : 'class="disable"' }} {{ option.input.checked ? 'checked' : '' }}/>
                {% elseif attribute.group.type in ["radio","color","image"] %}
                <input name="{{ option.input.name }}" type="radio" value="{{ option.input.value }}" id="{{ option.input.id }}" {{ option.stock > 0 ? '' : 'class="disable"' }} {{ option.input.checked ? 'checked' : '' }}/>
                {% elseif attribute.group.type == "select" %}
                <select type="select" name="{{ option.input.name }}" id="{{ option.input.id }}">
                    <option value="" disabled selected>Selecione</option>
                    {% for value in option.input.values %}
                    <option value="{{ value.id }}" {{ value.checked ? 'selected' : '' }}>{{ value.label|raw }}</option>
                    {% endfor %}
                </select>
                {% endif %}
                {% if option.label is defined %}
                <label for="{{ option.input.id }}">{% if attribute.group.type == "image" %}<img src="{{ option.label }}" border="0" width="50" alt="" />{% else %}{{ option.label|raw }}{% endif %}</label>
                {% endif %}
            </li>
            {% endfor %}
        </ul>
        {% if quantity_select.status and attributes.type == "group" %}
        <input autocomplete="none" name="quantity[{{ product.id }}][{{ groupIndex }}]" id="quantity[{{ product.id }}][{{ groupIndex }}]" class="quantitySelect" type="number" value="{{ quantity_select.min }}" step="1" min="{{ quantity_select.min }}" max="{{ quantity_select.max }}">
        {% endif %}
    </fieldset>
    {% endfor %}
{% endif %}
</div>