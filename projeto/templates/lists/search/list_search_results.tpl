<style type="text/css">
    section.lists-search-results .search-form {
        width: fit-content;
        margin: 1rem auto;
        padding: 1rem;
    }
    section.lists-search-results .search-form > form fieldset {
        margin: 0;
    }
    section.lists-search-results .search-form > form fieldset.form-fields-group ul.fields>li label {
        margin-bottom: 0;
        padding-bottom: 3px;
        text-align: center;
    }
    section.lists-search-results .search-form > form .form-btn {
        margin: 10px;
    }
    section.lists-search-results .search-form > form .form-btn .btn {
        width: unset;
        min-width: 200px;
    }
    section.lists-search-results .search-results {
        min-height: calc(100% - 275px);
        margin-bottom: 50px;
        flex-direction: column;
        -webkit-box-align: center;
        align-items: center;
        width: 100%;
    }
    section.lists-search-results .search-results ul.lists-grid {
        padding: 15px;
        list-style: none;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 30px 15px;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card {
        height: 351px;
        font-size: 1rem;
        width: calc(100% / 4 - 15px);
        padding: 15px;
        border-radius: 3px;
        border: 1px solid var(--color-txt-20);
        background-color: var(--cor-bg-blcs-gp);
        cursor: pointer;
        transition: all 0.2s ease 0s;
        position: relative;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card:hover {
        border: 1px solid var(--color-txt-60);
        transform: translateY(-5px);
        box-shadow: rgb(0 0 0 / 16%) 0px 3px 10px;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card div.image {
        display: flex;
        flex: 0 0 auto;
        flex-flow: row nowrap;
        align-items: center;
        justify-content: center;
        width: 142px;
        height: 142px;
        margin: -40px auto 15px;
        padding: 0px;
        background-color: aliceblue;
        border-radius: 50%;
        box-shadow: rgb(0 0 0 / 16%) 0px 3px 6px;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card div.image img {
        width: calc(100% - 10px);
        height: calc(100% - 10px);
        border-radius: 50%;
        object-fit: cover;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card div.image i {
        opacity: 0.1;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card div.list-info {
        font-size: 1rem;
        color: var(--cor-txt-nome-prto);
        margin: 8px 0px 0px;
        display: flex;
        flex-flow: column;
        justify-content: center;
        align-items: center;
    }
    section.lists-search-results .search-results ul.lists-grid li.list-card div.list-info p {
        font-size: 10px;
        color: var(--color-txt-60);
        margin: 0;
        line-height: normal;
    }
    section.lists-search-results .search-results .empty {
        margin: 0 auto;
        width: fit-content;
    }
    @media (max-width: 768px) {
        section.lists-search-results .search-results ul.lists-grid li.list-card {
            width: calc(100% / 3 - 15px);
        }
    }
    @media (max-width: 600px) {
        section.lists-search-results .search-results ul.lists-grid li.list-card {
            width: calc(100% / 2 - 15px);
        }
        section.lists-search-results .search-results ul.lists-grid {
            padding: 0;
        }
    }
</style>
<script>
</script>
{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<section class="lists-search-results custom-container">
    <div class="search-form" direction="row">
        <form action="{{list.url}}/search" class="desktop-view flex" direction="column" name="f-search-list" id="f-search-list" type="post" method="post" data-element="form-search-list">
            <fieldset class="form-fields-group">
                <ul class="fields flex" direction="row">
                    {% for search_field in list.search_fields %}
                    {% set field = search_field.field %}
                    <li>
                        <label for="{{field.name}}">{{search_field.label|raw}}</label>
                        {% if field.type == "textbox" %}
                        <input type="text" name="{{field.name}}" id="{{field.name}}" class="validate[required,minSize[2],maxSize[30]]" autocomplete="off" placeholder="{{field.placeholder|raw}}" value="{{field.value}}" />
                        {% elseif field.type == "datetime" %}
                        <input autocomplete="off" data-mask="99/99/9999" data-dd-format="d/m/Y" class="validate[required,custom[date],past[now]]" type="text" name="{{field.name}}" id="{{field.name}}" size="14" maxlength="10" placeholder="__/__/____" value="{{field.value}}">
                        {% endif %}
                    </li>
                    {% endfor %}
                </ul>
            </fieldset>
            <div class="form-btn">
                <button type="submit" name="btn-submit" id="btn-submit" class="button-style-primary btn btn-primary btn">
                    <i class="fas fa-search">
                    </i> 
                    <span>Buscar Lista
                    </span>
                </button>
            </div>
        </form>
    </div>
    <div class="search-results">
        {% if list.search_results|length > 0 %}
        <ul class="lists-grid flex" justify-content="center" justify-content="center" wrap="true">
            {% for list in list.search_results %}
            <li class="list-card text-center flex" justify-content="center" justify-content="center" direction="column">
                <a href="{{list.url}}">
                    <div class="image">
                        {% if list.image is not empty %}
                        <img src="{{list.image}}" alt="">
                        {% else %}
                        <i class="fas fa-image fa-5x">
                        </i>
                        {% endif %}
                    </div>
                    {% for infoLabel,infoValue in list.data %}
                    <div class="list-info">
                        <p>{{infoLabel|raw}}</p>
                        <span>{{infoValue|raw}}</span>
                    </div>
                    {% endfor %}
                </a>
            </li>
            {% endfor %}
        </ul>
        {% else %}
        <div class="empty">Nenhuma lista encontrada
        </div>
        {% endif %}
    </div>
</section>
{% include("footer.tpl") %}