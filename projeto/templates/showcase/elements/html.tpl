<div class="element-container w-100" id="element-products-{{element.id}}">
    <div class="content">
        {{ include(template_from_string(element.html)|raw) }}
    </div>
</div>