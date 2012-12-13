unit VendaDetalheVO;

{$MODE Delphi}

interface

Uses Fgl;

type
  TVendaDetalheVO = class
  private
    FID: Integer;
    FID_ECF_PRODUTO: Integer;
    FID_ECF_VENDA_CABECALHO: Integer;
    FCFOP: Integer;
    FCOO: Integer;
    FCCF: Integer;
    FITEM: Integer;
    FQUANTIDADE: Extended;
    FVALOR_UNITARIO: Extended;
    FVALOR_TOTAL: Extended;
    FTOTAL_ITEM: Extended;
    FBASE_ICMS: Extended;
    FTAXA_ICMS: Extended;
    FICMS: Extended;
    FTAXA_DESCONTO: Extended;
    FDESCONTO: Extended;
    FTAXA_ISSQN: Extended;
    FISSQN: Extended;
    FTAXA_PIS: Extended;
    FPIS: Extended;
    FTAXA_COFINS: Extended;
    FCOFINS: Extended;
    FTAXA_ACRESCIMO: Extended;
    FACRESCIMO: Extended;
    FACRESCIMO_RATEIO: Extended;
    FDESCONTO_RATEIO: Extended;
    FTOTALIZADOR_PARCIAL: String;
    FECF_ICMS_ST : String;
    FCST: String;
    FCANCELADO: String;
	  FMOVIMENTA_ESTOQUE: String;
    FHASH_TRIPA: String;
    FHASH_INCREMENTO: Integer;
    FGtin: String;
    FUnidadeProduto: String;
    FDescricaoPDV: String;
    FECFICMS: String;
    FIdentificacaoCliente: String;
  published
    property Id: Integer read FID write FID;
    property IdProduto: Integer read FID_ECF_PRODUTO write FID_ECF_PRODUTO;
    property IdVendaCabecalho: Integer read FID_ECF_VENDA_CABECALHO write FID_ECF_VENDA_CABECALHO;
    property CFOP: Integer read FCFOP write FCFOP;
    property Coo: Integer read FCOO write FCOO;
    property Ccf: Integer read FCCF write FCCF;
    property Item: Integer read FITEM write FITEM;
    property Quantidade: Extended read FQUANTIDADE write FQUANTIDADE;
    property ValorUnitario: Extended read FVALOR_UNITARIO write FVALOR_UNITARIO;
    property ValorTotal: Extended read FVALOR_TOTAL write FVALOR_TOTAL;
    property TotalItem: Extended read FTOTAL_ITEM write FTOTAL_ITEM;
    property BaseICMS: Extended read FBASE_ICMS write FBASE_ICMS;
    property TaxaICMS: Extended read FTAXA_ICMS write FTAXA_ICMS;
    property ICMS: Extended read FICMS write FICMS;
    property TaxaDesconto: Extended read FTAXA_DESCONTO write FTAXA_DESCONTO;
    property Desconto: Extended read FDESCONTO write FDESCONTO;
    property TaxaISSQN: Extended read FTAXA_ISSQN write FTAXA_ISSQN;
    property ISSQN: Extended read FISSQN write FISSQN;
    property TaxaPIS: Extended read FTAXA_PIS write FTAXA_PIS;
    property PIS: Extended read FPIS write FPIS;
    property TaxaCOFINS: Extended read FTAXA_COFINS write FTAXA_COFINS;
    property COFINS: Extended read FCOFINS write FCOFINS;
    property TaxaAcrescimo: Extended read FTAXA_ACRESCIMO write FTAXA_ACRESCIMO;
    property Acrescimo: Extended read FACRESCIMO write FACRESCIMO;
    property AcrescimoRateio: Extended read FACRESCIMO_RATEIO write FACRESCIMO_RATEIO;
    property DescontoRateio: Extended read FDESCONTO_RATEIO write FDESCONTO_RATEIO;
    property TotalizadorParcial: String read FTOTALIZADOR_PARCIAL write FTOTALIZADOR_PARCIAL;
    property ECFIcmsST: String read FECF_ICMS_ST write FECF_ICMS_ST;
    property CST: String read FCST write FCST;
    property Cancelado: String read FCANCELADO write FCANCELADO;
    property MovimentaEstoque: String read FMOVIMENTA_ESTOQUE write FMOVIMENTA_ESTOQUE;
    property HashTripa: String read FHASH_TRIPA write FHASH_TRIPA;
    property HashIncremento: Integer read FHASH_INCREMENTO write FHASH_INCREMENTO;

    property GTIN: String read FGtin write FGtin;
    property UnidadeProduto: String read FUnidadeProduto write FUnidadeProduto;
    property DescricaoPDV: String read FDescricaoPDV write FDescricaoPDV;
    property ECFICMS: String read FECFICMS write FECFICMS;
    property IdentificacaoCliente: String read FIdentificacaoCliente write FIdentificacaoCliente;
end;

type
TVendaDetalheListaVO = class(specialize TFPGObjectList<TVendaDetalheVO>);

implementation

end.
