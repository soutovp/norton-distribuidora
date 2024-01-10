<style type="text/css">
  /**==Declaracao variaveis CSS==**/
  :root {
    /**==Variaveis botoes==**/    
    /*--background botoes--*/
    --cor-bg-bt-alerta: #F0B568;
    --cor-bg-bt-cancel: #E62222;
    --cor-bg-bt-confirm: #61B32B;
    --cor-bg-bt-destaque: #DDDDDD;
    --cor-bg-bt-inativo: #A6A6A6;
    --cor-bg-bt-info: #0994BA;
    /*--Cor textos botoes--*/
    --cor-txt-bt-alerta: #F0B568;
    --cor-txt-bt-cancel: #E62222;
    --cor-txt-bt-confirm: #61B32B;
    --cor-txt-bt-destaque: #DDDDDD;
    --cor-txt-bt-inativo: #A6A6A6;
    --cor-txt-bt-info: #0994BA;
    /*--Realce bot�es--*/
    --cor-realce-bt-alerta: #F0B568;
    --cor-realce-bt-cancel: #E62222;
    --cor-realce-bt-confirm: #61B32B;
    --cor-realce-bt-destaque: #DDDDDD;
    --cor-realce-bt-info: #0994BA;
    /**==Fim Variaveis botoes==**/
    /*==variaveis cabecalho==*/
    /*--Cor background cabecalho--*/
    {#
    --cor-bg-busca: {{variables.cms_cabecalho.cms_bg_busca}};
    --cor-bg-cabecalho: {{variables.cms_cabecalho.cms_bg_cabecalho}};
    --cor-bg-login: {{variables.cms_cabecalho.cms_bg_login}};
    --cor-bg-menu: {{variables.cms_cabecalho.cms_bg_menu}};
    --cor-bg-parceiro: {{variables.cms_cabecalho.cms_bg_parceiro}};
    --cor-bg-reduzido: {{variables.cms_cabecalho.cms_bg_reduzido}};
    --cor-bg-fundo-sub: {{ variables.cms_cabecalho.cms_bg_submenu }};
    --color-bg-cb-20: {{variables.cms_cabecalho.cms_bg_cabecalho}}33;
    --color-bg-cb-40: {{variables.cms_cabecalho.cms_bg_cabecalho}}66;
    --color-bg-cb-60: {{variables.cms_cabecalho.cms_bg_cabecalho}}99;
    --color-bg-cb-80: {{variables.cms_cabecalho.cms_bg_cabecalho}}CC;
    #}
    --cor-bg-busca: #FFF;
    --cor-bg-login: #F9F9F9;
    --cor-bg-menu: #F9F9F9;
    --cor-bg-parceiro: #f9f9f9;
    --cor-bg-reduzido: #F8F8F8;
    --cor-bg-fundo-sub: #F6F6F6;
    --color-bg-cb-20: #FFF
    --color-bg-cb-40: #FFF
    --color-bg-cb-60: #FFF
    --color-bg-cb-80: #FFF
    /*--Cor textos cabecalho--*/
    --cor-txt-busca: #000;
    --cor-txt-cabecalho: #555;
    --cor-txt-login: #666;
    --cor-txt-menu: #000;
    --cor-txt-parceiro: #555;
    --cor-txt-reduzido: #555;
    /*--Realce textos cabecalho--*/
    --cor-realce-cb-realce: #555;
    --cor-realce-cb-login: #555;
    --cor-realce-cb-menu: #555;
    /*==Fim variaveis cabecalho==*/
    /*==Variaveis de gerais==*/
    --txt-ff: {{ variables.cms_config_geral.cms_fonte_familia }};
    --cor-bg-corpo: {{variables.cms_config_geral.cms_cor_corpo}};
    --cor-txt-gerais: {{variables.cms_config_geral.cms_cor_txt_gerais}};
    --d-none-var-vitrine: {{variables.cms_config_geral.cms_variaveis_boxes}};
    --d-none-quant-contador: {{variables.cms_config_geral.cms_quant_contador}};
    /*==Fim variaveis de gerais==*/
    /*==Variaveis grade produtos==*/
    --cor-bg-blcs-gp: {{variables.cms_grade_produtos.cms_cor_blocos}};
    --cor-bg-fd-gp: {{variables.cms_grade_produtos.cms_cor_fundo}};
    --cor-txt-nome-prto: {{ variables.cms_grade_produtos.cms_nome_produto }};
    --cor-txt-prc-prto: {{ variables.cms_grade_produtos.cms_preco_produto }};
    --cor-bg-tag-desc: {{variables.cms_grade_produtos.cms_tag_desconto}};
    --cor-bg-tag-exclus: {{variables.cms_grade_produtos.cms_tag_exclusivo}};
    --cor-bg-tag-lanc: {{variables.cms_grade_produtos.cms_tag_lancamento}};
    --cor-bg-tag-ofer: {{variables.cms_grade_produtos.cms_tag_oferta}};
    /*==Fim variaveis grade produtos==*/
    /*==Variaveis Footer==*/
    --cor-bg-rodape: {{variables.cms_rodape.cms_bg_rodape}};
    --cor-bg-creditos: {{variables.cms_rodape.cms_bg_creditos}};
    --cor-bg-news: {{variables.cms_rodape.cms_bg_newsletter}};
    --cor-bg-btn-nwes: {{variables.cms_rodape.cms_bg_btn_news}};
    --cor-txt-rodape: {{variables.cms_rodape.cms_cor_textos}};
    --cor-txt-rodape-hover: {{variables.cms_rodape.cms_cor_texto_hover}};
    --cor-txt-nwes: {{variables.cms_rodape.cms_cor_texto_news}};
    --cor-txt-creditos: {{ variables.cms_rodape.cms_cor_texto_credit }};
    /*==Fim Variaveis Footer==*/
    /*==Variaveis gerais==*/
    /*Trasparencia color nome do produto*/
    --color-txt-20: {{ variables.cms_grade_produtos.cms_nome_produto }}33;
    --color-txt-40: {{ variables.cms_grade_produtos.cms_nome_produto }}66;
    --color-txt-60: {{ variables.cms_grade_produtos.cms_nome_produto }}99;
    --color-txt-80: {{ variables.cms_grade_produtos.cms_nome_produto }}CC;
    /*Trasparencia BG cards*/
    --color-bg-20: {{variables.cms_grade_produtos.cms_cor_blocos}}33;
    --color-bg-40: {{variables.cms_grade_produtos.cms_cor_blocos}}66;
    --color-bg-60: {{variables.cms_grade_produtos.cms_cor_blocos}}99;
    --color-bg-80: {{variables.cms_grade_produtos.cms_cor_blocos}}CC;
    /*==Fim Variaveis gerais==*/
    /*== NOVAS CORES DO TEMA ==*/
    --norton-vermelho-geral: #DD1836;
  }
  /**==Fim declaracao variaveis CSS==**/
</style>
