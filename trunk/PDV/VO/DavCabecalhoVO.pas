unit DavCabecalhoVO;

{$MODE Delphi}

interface

uses Fgl;

type
  TDavCabecalhoVO = class
  private
    FID: Integer;
    FID_PESSOA: Integer;
    FID_EMPRESA: Integer;
    FNUMERO_DAV: String;
    FNUMERO_ECF: String;
    FCCF: Integer;
    FCOO: Integer;
    FNOME_DESTINATARIO: String;
    FCPF_CNPJ_DESTINATARIO: String;
    FDATA_EMISSAO: String;
    FHORA_EMISSAO: String;
    FSITUACAO: String;
    FTAXA_ACRESCIMO: Extended;
    FACRESCIMO: Extended;
    FTAXA_DESCONTO: Extended;
    FDESCONTO: Extended;
    FSUBTOTAL: Extended;
    FVALOR: Extended;
    FIMPRESSO: String;
    FHASH_TRIPA: String;
    FHASH_INCREMENTO: Integer;
  public 
    property Id: Integer  read FID write FID;
    property IdPessoa: Integer  read FID_PESSOA write FID_PESSOA;
    property IdEmpresa: Integer  read FID_EMPRESA write FID_EMPRESA;
    property NumeroDav: String  read FNUMERO_DAV write FNUMERO_DAV;
    property NumeroEcf: String  read FNUMERO_ECF write FNUMERO_ECF;
    property Ccf: Integer  read FCCF write FCCF;
    property Coo: Integer  read FCOO write FCOO;
    property NomeDestinatario: String  read FNOME_DESTINATARIO write FNOME_DESTINATARIO;
    property CpfCnpjDestinatario: String  read FCPF_CNPJ_DESTINATARIO write FCPF_CNPJ_DESTINATARIO;
    property DataEmissao: String  read FDATA_EMISSAO write FDATA_EMISSAO;
    property HoraEmissao: String  read FHORA_EMISSAO write FHORA_EMISSAO;
    property Situacao: String  read FSITUACAO write FSITUACAO;
    property TaxaAcrescimo: Extended  read FTAXA_ACRESCIMO write FTAXA_ACRESCIMO;
    property Acrescimo: Extended  read FACRESCIMO write FACRESCIMO;
    property TaxaDesconto: Extended  read FTAXA_DESCONTO write FTAXA_DESCONTO;
    property Desconto: Extended  read FDESCONTO write FDESCONTO;
    property Subtotal: Extended  read FSUBTOTAL write FSUBTOTAL;
    property Valor: Extended  read FVALOR write FVALOR;
    property Impresso: String  read FIMPRESSO write FIMPRESSO;
    property HashTripa: String  read FHASH_TRIPA write FHASH_TRIPA;
    property HashIncremento: Integer  read FHASH_INCREMENTO write FHASH_INCREMENTO;
  end;


  type
  TDavCabecalhoListaVO = class(specialize TFPGObjectList<TDavCabecalhoVO>);

implementation

end.
