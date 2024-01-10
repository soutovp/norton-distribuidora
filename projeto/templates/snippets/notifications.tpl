{% for notify in notifications %}
    {% if notify.type == "info" %}
        <div class="alert alert-info"><i class="fad fa-info-circle"></i><span>{{ notify.message|raw }}</span></div>
    {% elseif notify.type == "success" %}
        <div class="alert alert-success"><i class="fad fa-check-circle"></i><span>{{ notify.message|raw }}</span></div>
    {% elseif notify.type == "error" %}
        <div class="alert alert-danger"><i class="fas fa-engine-warning"></i><span>{{ notify.message|raw }}</span></div>
    {% elseif notify.type == "alert" %}
        <div class="alert alert-warning"><i class="fas fa-engine-warning"></i><span>{{ notify.message|raw }}</span></div>
    {% elseif notify.type == "custom" %}
        <div class="{{notify.class}}"><span>{{ notify.message|raw }}</span></div>
    {% endif %}
{% endfor %}