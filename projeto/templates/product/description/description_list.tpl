<style type="text/css">
    .description_list h2 {
        margin: 0 0 0.5em;
        font-weight: normal;
        font-size: 1.2em;
    }

    .description_list input {
        position: absolute;
        opacity: 0;
        z-index: -1;
    }

    .description_list {
        display: flex;
        width: 100%;
        flex-flow: column nowrap;
    }

    /* Accordion styles */
    .description_list .tabs {
        margin-top: 10px;
        border-radius: 4px;
        overflow: hidden;
        box-shadow: 0 1px 2px 0px rgba(0, 0, 0, 0.2);
    }

    .description_list .tab {
        color: #000 !important;
        width: 100%;
        overflow: hidden;
        margin: 0;
    }
    .description_list .tab-label {
        display: flex;
        justify-content: flex-start;
        padding: 1em;
        background: #ffffff;
        font-weight: bold;
        cursor: pointer;
        color: #000;
    }
    .description_list .tab-label:hover {
        background: rgba(232, 232, 232, 0.55);
    }
    .description_list .tab-label::before {
        content: "+";
        width: 1em;
        text-align: left;
        transition: all 0.35s;
        margin-right: 20px;
    }
    .description_list .tab-content {
        max-height: 0;
        padding: 0 1em;
        transition: all 0.35s;
    }

    .description_list input:checked + .tab-label {
        background: rgba(232, 232, 232, 0.55);
    }
    .description_list input:checked + .tab-label::before {
        content: "-";
    }
    .description_list input:checked ~ .tab-content {
        max-height: 100vh;
        padding: 1em;
    }
</style>
<div class="description_list">
    <h2>Informações sobre o produto</h2>
    <div class="tabs">
        {% for item in description %}
        <div class="tab">
            <input type="radio" id="chk_{{item.id}}" name="rd">
            <label class="tab-label" for="chk_{{item.id}}">{{item.title|raw}}</label>
            <div class="tab-content">
                {{item.content|raw}}
            </div>
        </div>
        {% endfor %}
    </div>
</div>