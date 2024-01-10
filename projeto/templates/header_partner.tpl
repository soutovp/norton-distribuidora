<section class="header-parceiro">
    <div class="container">
        <div class="seller-location">Vocé está na loja <b>{{ partner.label|raw }}</b></div>
        <div class="seller.name">Olá, meu nome é <b>{{ partner.name|raw }}</b></div>
        <div class="seller-avatar-location">
            <div class="seller-avatar"><img src="{{partner.image}}" alt="" class="circle responsive-img" width="120"></div>
        </div>
        <nav>
            <ul class="seller-info">
                <li class="seller.phone"><i class="fas fa-phone"></i><span>({{ partner.phone.prefix }}) {{ partner.phone.number }}</span></li>
                <li class="seller.email"><a href="mailto:{{ partner.email }}" title="Envie um e-mail!"><i class="fas fa-at"></i> E-mail</a></li>
            </ul>
        </nav>
    </div>
</section>
<style>
    .header-parceiro {
        background: var(--custom-base-secondary-color);
        color: var(--custom-font-light-color);
    }
    .header-parceiro .container {
        display: grid;
        max-width: 1390px;
        margin: 0 auto;
        grid-template-columns: 1fr auto;
        gap: 5px 5px;
        align-items: center;
        padding: 5px;
    }
    .header-parceiro .container .seller-avatar {
        max-width: 100px;
    }
    .header-parceiro .container .seller-avatar img {
        width: 100%;
        height: auto;
    }
    .header-parceiro .container .seller-avatar img {
        border-radius: 100%;
    }
    .header-parceiro .container nav .seller-info a {
        color: color: var(--custom-font-light-color);;
    }
    .header-parceiro .container nav .seller-info {
        padding: 0;
        margin: 0;
        list-style: none;
        display: flex;
        flex-wrap: wrap;
    }
    .header-parceiro .container nav .seller-info li + li {
        margin-left: 30px;
    }
    @media (max-width: 500px) {
        .header-parceiro .container {
            width: 100%;
            grid-template-columns: 100%;
            text-align: center;
        }
        .header-parceiro .container .seller-avatar {
            margin: auto;
        }
        .header-parceiro .container nav .seller-info {
            justify-content: center;
        }
    }
</style>