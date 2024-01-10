{% include("header.tpl") %}
{% include 'snippets/breadcrumb.tpl' %}
<link media="all" href="{{asset("css/addons/buttons.min.css","ui")}}" type="text/css" rel="stylesheet">
{{ banners.getByTag(["newsletter"]) }}
<section class="newsletter-subscribe-confirmed-page">
    {% include 'snippets/notifications.tpl' %}
    <div class="actions">
        <a href="{{goto.home}}" class="goto-home"><button type="button" class="btn btn-primary btn-shadow" name="btn-home"><i class="fas fa-home"></i> Continuar navegando</button></a>
    </div>
</section>
{% include("footer.tpl") %}