{{cart.total|raw}}
{{ cart.points is defined and cart.points >= 0 ? ('<div class="total_points">Pontos acumulados:<span>' ~ cart.points ~ '</span></div>')|raw : "" }}