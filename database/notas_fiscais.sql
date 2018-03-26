DROP DATABASE IF EXISTS notas_fiscais;
CREATE DATABASE notas_fiscais;
USE notas_fiscais;

CREATE TABLE nota_fiscal(
    Chave_de_acesso				CHAR(44),
    Numero					INT(10),
    Serie					SMALLINT(3),
    Data_de_emissao				DATETIME,
    Situacao					SMALLINT(1),
    Tipo_Operacao				CHAR(10),
    Valor_total_da_nota				DECIMAL(12, 2),
    Nota_referenciada				MEDIUMTEXT,
    Nome_razao_social_emit			VARCHAR(60),
    CPF_CNPJ_emit				VARCHAR(18),
    Inscricao_estadual_emit			INT(9),
    Endereco_emit				VARCHAR(60),
    Bairro_distrito_emit			VARCHAR(60),
    CEP_emit					INT(8),
    Municipio_emit				VARCHAR(40),
    Fone_fax_emit				VARCHAR(20),
    UF_emit					CHAR(2),
    Pais_emit					CHAR(6),
    Nome_razao_social_dest			VARCHAR(60),
    CPF_CNPJ_dest				VARCHAR(18),
    Inscricao_estadual_dest			INT(9),
    Endereco_dest				VARCHAR(60),
    Bairro_distrito_dest			VARCHAR(60),
    CEP_dest					INT(8),
    Municipio_dest				VARCHAR(40),
    Fone_fax_dest				VARCHAR(20),
    UF_dest					CHAR(2),
    Pais_dest					VARCHAR(23),
    Numero_fatura				VARCHAR(60),
    Vencimento_fatura				CHAR(10),
    Valor_fatura				DECIMAL(12, 2),
    Placa_do_veiculo_reboque			CHAR(7),
    UF_placa					CHAR(2),
    Nome_da_Transportadora			VARCHAR(60),
    Inscricao_Estadual_da_Transportadora	VARCHAR(14),
    CNPJ_da_Transportadora			VARCHAR(18),
    CPF_da_Transportadora			VARCHAR(14),
    Modalidade_do_Frete				SMALLINT(2),
    Base_de_Calculo_do_ICMS			DECIMAL(9, 2),
    Valor_do_ICMS				DECIMAL(9, 2),
    Base_de_calculo_do_ICMS_substituicao	DECIMAL(8, 2),
    Valor_do_ICMS_substituicao			DECIMAL(7, 2),
    Valor_total_dos_produtos			DECIMAL(12, 2),
    Valor_do_frete				DECIMAL(6, 2),
    Valor_do_seguro				INT(3),
    Valor_desconto				DECIMAL(12, 2),
    Valor_outras_despesas_acessorias		DECIMAL(7, 2),
    Valor_do_IPI				DECIMAL(8, 2),
    Valor_total_ICMS_UF_dest			DECIMAL(9, 2),
    Valor_total_ICMS_UF_remet			DECIMAL(9, 2),
    Valor_BC_ICMS_UF_dest			DECIMAL(10, 2),
    Aliquota_Interna_UF_dest			INT(4),
    Aliquota_Interestadual_UF_env		INT(2),
    Perc_prov_partilha_UF			INT(2),
    Perc_ICMS_FCP_UF_dest			DECIMAL(5, 2),
    Valor_ICMS_FCP_UF_dest			DECIMAL(7, 2),
    Valor_ICMS_partilha_UF_dest			DECIMAL(9, 2),
    Valor_ICMS_partilha_UF_remet		DECIMAL(9, 2),
    Nr_item                                     INT(3),
    Cod_prod					VARCHAR(60),
    Descricao_do_Produto_ou_servicos		VARCHAR(120),
    NCM_prod					VARCHAR(8),
    CST_prod					CHAR(2),
    CFOP_prod					CHAR(4),
    Quant_prod					DECIMAL(12, 2),
    Valor_unit_prod				DECIMAL(12, 2),
    Valor_total_prod				DECIMAL(12, 2),
    Valor_desconto_item				DECIMAL(10, 2),
    BC_ICMS_prod				DECIMAL(10, 2),
    Valor_ICMS_prod				DECIMAL(10, 2),
    Aliq_ICMS_prod				INT(5),
    BC_ICMS_ST_prod				DECIMAL(8, 2),
    Valor_ICMS_ST_prod     			DECIMAL(7, 2),
    Aliq_ICMS_ST_prod				INT(4),
    Valor_IPI_prod				DECIMAL(8, 2),
    Aliq_IPI_prod				INT(4),
    Valor_PMC_prod				DECIMAL(15, 2),
    Cod_EAN					CHAR(14),
    Info_Adicional_Item				TEXT,
    Tipo_Operacao_Veic_Novo			CHAR(1),
    Tipo_Pintura_Veic_Novo			CHAR(1),
    CNPJ_Concessionaria_entrega			VARCHAR(19),
    UF_entrega					CHAR(2),
    Chassi_do_Veiculo				VARCHAR(17),
    Informacoes_adicionais_do_FISCO		TEXT,
    Informacoes_complementares			TEXT,
    Unid_prod                                   VARCHAR(7),
    Metrica					DECIMAL(9, 8),
    Confiavel					CHAR(5),
    
    PRIMARY KEY (Chave_de_acesso, Nr_item),
    INDEX NCM (NCM_prod)
);

CREATE TABLE ncm (
    NCM			CHAR(8),
    Categoria		VARCHAR(300),
    Descricao		VARCHAR(80),
    InicioVigencia	DATE,
    FimVigencia		DATE,
    UTrib		VARCHAR(10),
    DescricaoUTrib	VARCHAR(20),
    Observacao		VARCHAR(40),

    PRIMARY KEY (NCM)
);

CREATE TABLE medicamentos_nota_fiscal(
    id					VARCHAR(7),
    Aliquota_icms			DECIMAL(17, 2),
    Chave_de_acesso			CHAR(44),
    CNPJ_destinatario			CHAR(14),
    CNPJ_emitente			CHAR(14),
    Codigo_produto			VARCHAR(15),
    Data_de_emissao			DATE,
    Data_de_fabricacao			DATE,
    Data_de_validade			DATE,
    Descricao_produto			VARCHAR(140),
    EAN					VARCHAR(72),
    Informacao_adicional		VARCHAR(30),
    NCM					VARCHAR(11),
    Numero_da_NFE			VARCHAR(10),
    Numero_lote				VARCHAR(11),
    PMC					CHAR(11),
    Quantidade				INT(13),
    Quantidade_lote			INT(11),
    Razao_Social_Destinatario		VARCHAR(80),
    Razao_Social_Emitente		VARCHAR(80),
    Unidade				VARCHAR(60),
    Valor_total_nota			DECIMAL(12, 2),
    Valor_total_produto			DECIMAL(12, 2),
    Valor_unitario			DECIMAL(12, 2),

    PRIMARY KEY (id),
    INDEX NCM (NCM)
);
