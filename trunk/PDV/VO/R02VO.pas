unit R02VO;

{$MODE Delphi}

interface

Uses Fgl;

type
  TR02VO = class
  private
    FID: Integer;
    FID_OPERADOR: Integer;
    FID_IMPRESSORA: Integer;
    FID_ECF_CAIXA: Integer;
    FSERIE_ECF: String;
    FCRZ: Integer;
    FCOO: Integer;
    FCRO: Integer;
    FDATA_MOVIMENTO: String;
    FDATA_EMISSAO: String;
    FHORA_EMISSAO: String;
    FVENDA_BRUTA: Extended;
    FGRANDE_TOTAL: Extended;
    FSINCRONIZADO: String;
    FHASH_TRIPA: String;
    FHASH_INCREMENTO: Integer;

  published

    property Id: Integer read FID write FID;
    property IdOperador: Integer read FID_OPERADOR write FID_OPERADOR;
    property IdImpressora: Integer read FID_IMPRESSORA write FID_IMPRESSORA;
    property IdCaixa: Integer read FID_ECF_CAIXA write FID_ECF_CAIXA;
    property SerieEcf: String  read FSERIE_ECF write FSERIE_ECF;
    property CRZ: Integer read FCRZ write FCRZ;
    property COO: Integer read FCOO write FCOO;
    property CRO: Integer read FCRO write FCRO;
    property DataMovimento: String read FDATA_MOVIMENTO write FDATA_MOVIMENTO;
    property DataEmissao: String read FDATA_EMISSAO write FDATA_EMISSAO;
    property HoraEmissao: String read FHORA_EMISSAO write FHORA_EMISSAO;
    property VendaBruta: Extended read FVENDA_BRUTA write FVENDA_BRUTA;
    property GrandeTotal: Extended read FGRANDE_TOTAL write FGRANDE_TOTAL;
    property Sincronizado: String read FSINCRONIZADO write FSINCRONIZADO;
    property HashTripa: String read FHASH_TRIPA write FHASH_TRIPA;
    property HashIncremento: Integer read FHASH_INCREMENTO write FHASH_INCREMENTO;

end;

type
TR02ListaVO = class(specialize TFPGObjectList<TR02VO>);

implementation

end.
