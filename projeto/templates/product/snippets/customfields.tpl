<ul class="product-custom-fields">
    {% for field in product.custom_fields %}
        <li>
            <label for="{{ field.id }}">{{ field.label|raw }}{{ (field.required ? '<span class="required">*</span>':"")|raw }}:</label>
            {% if field.type == "text" %}
                <input autocomplete="off" type="text" name="{{ field.name }}" id="{{ field.id }}" class="campo_texto {{ field.required ? 'required validate[required,minSize[1]]' : '' }}" size="50" />
            {% elseif field.type == "textarea" %}
                <textarea name="{{ field.name }}" id="{{ field.id }}" wrap="" style="width:95%" rows="3" class="{{ field.required ? 'required validate[required,minSize[10]]' : '' }}"></textarea>
            {% elseif field.type == "checkbox" %}
                <input type="checkbox" name="{{ field.name }}" id="{{ field.id }}" value="Sim" class="campo_option {{ field.required ? 'required validate[required]' : '' }}">
            {% elseif field.type == "date" %}
                <input type="date" data-date-format="DD/MMM/YYYY" name="{{ field.name }}" id="{{ field.id }}" class="campo_texto {{ field.required ? 'required validate[required,custom[date]]' : '' }}" placeholder="__/__/____">
                {# A chamada deste javascript abaixo tem dois objetivos:
                    1 - Formata e valida o campo em browsers não compativeis com o uso da tipagem no campo acima (type);
                    2 - Compatibilidade de formato aceito no Chrome, onde ao definir a data é passado pro campo o formato YYYY-MM-DD e não definindo o translate no plugin abaixo ele valida no formato DD/MM/AAAA;
                #}
                <script type="text/javascript">$(document).ready(function(){ $("input[id='{{ field.id }}']").mask("9900r00r9900", { placeholder: "__/__/____",translation: { 'r': { pattern: /[/-]/, fallback: '/' }, placeholder: "__/__/____" } } ); });</script>
            {% endif %}
        </li>
    {% endfor %}
</ul>