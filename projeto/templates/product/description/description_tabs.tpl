<style type="text/css">
    .description_tabs {
        display: -webkit-flex;
        display: flex;
        -webkit-flex-wrap: wrap;
        flex-wrap: wrap;
    }
    .description_tabs label {
        background: #eee;
        border: 1px solid #ddd;
        padding: .7em 1em;
        cursor: pointer;
        z-index: 1;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
    }
    .description_tabs label:first-of-type {
        margin-left: 0;
    }
    .description_tabs div.tab-content {
        width: 100%;
        margin-top: -1px;
        padding: 1em;
        border: 1px solid #ddd;
        -webkit-order: 1;
        order: 1;
    }
    .description_tabs input[type=radio], .description_tabs div.tab-content {
        display: none;
    }
    .description_tabs input[type=radio]:checked + label {
        background: #fff;
        border-bottom: 1px solid #fff;
    }
    .description_tabs input[type=radio]:checked + label + div.tab-content {
        display: block;
    }
</style>
<div class="description_tabs">
    {% for index,item in description %}
    <input id="{{item.id}}" type="radio" name="grp" {{index==0?"checked":""}}/>
    <label for="{{item.id}}">{{item.title|raw}}</label>
    <div class="tab-content">
        {{item.content|raw}}
    </div>
    {% endfor %}
</div>