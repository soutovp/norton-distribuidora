{% macro pagination(total, current, main_url, nearbyPagesLimit = 3) %}
    {% apply spaceless %}
        {% if total > 1 %}
            <nav class="pagination" role="navigation" aria-label="Products">
                <div class="nav-links">
                    {% if current > 1 %}
                        <a class="prev page-numbers" title="Página anterior" href="{{ url("current",{"page":(current-1)}) }}"><i class="far fa-long-arrow-left"></i></a>
                    {% endif %}
                    {% for i in 1..total %}
                        {% if 0 == (current - nearbyPagesLimit) - loop.index %}
                            <a class="page-numbers" href="{{ url("current",{"page":1}) }}">1</a>
                            {% if 1 != loop.index %}
                                <span class="page-numbers dots">...</span>
                            {% endif %}
                        {% elseif 0 == (current + nearbyPagesLimit) - loop.index  and (current + nearbyPagesLimit) < total %}
                            <span class="page-numbers dots">...</span>
                        {% elseif 0 < (current - nearbyPagesLimit) - loop.index %}

                        {% elseif 0 > (current + nearbyPagesLimit) - loop.index %}

                        {% else %}
                            {% if current == loop.index  %}
                                <span class="page-numbers current" aria-current="page">{{ loop.index }}</span>
                            {% else %}
                                {% if loop.index == 1 %}
                                    <a class="page-numbers" href="{{ main_url }}">{{ loop.index }}</a>
                                {% else %}
                                    <a class="page-numbers" href="{{ url("current",{"page":loop.index}) }}">{{ loop.index }}</a>
                                {% endif %}
                            {% endif %}
                        {% endif %}
                    {% endfor %}
                    {% if current != total  and (current + nearbyPagesLimit) < total %}
                        <a class="page-numbers" href="{{ url("current",{"page":total}) }}">{{ total }}</a>
                    {% endif %}
                    {% if current < total %}
                        <a class="next page-numbers" title="Próxima página" href="{{ url("current",{"page":(current+1)}) }}"><i class="far fa-long-arrow-right"></i></a>
                    {% endif %}
                </div>
            </nav>
        {% endif %}
    {% endapply %}
{% endmacro %}
{{ _self.pagination(paginate.total, paginate.current, paginate.main_url) }}