unit R07VO;

{$MODE Delphi}

interface

Uses Fgl;

type
  TR07VO = class
  private
    FID: Integer;
    FID_R06: Integer;
    FSERIE_ECF: String;
    FCOO: Integer;
    FCCF: Integer;
    FGNF: Integer;
    FMEIO_PAGAMENTO: String;
    FVALOR_PAGAMENTO: Extended;
    FESTORNO: String;
    FVALOR_ESTORNO: Extended;
    FSINCRONIZADO: String;
    FHASH_TRIPA: String;
    FHASH_INCREMENTO: Integer;

  published

    property Id: Integer read FID write FID;
    property IdR06: Integer read FID_R06 write FID_R06;
    property SerieEcf: String read FSERIE_ECF write FSERIE_ECF;
    property Coo: Integer read FCOO write FCOO;
    property Ccf: Integer read FCCF write FCCF;
    property Gnf: Integer read FGNF write FGNF;
    property MeioPagamento: String read FMEIO_PAGAMENTO write FMEIO_PAGAMENTO;
    property ValorPagamento: Extended read FVALOR_PAGAMENTO write FVALOR_PAGAMENTO;
    property IndicadorEstorno: String read FESTORNO write FESTORNO;
    property ValorEstorno: Extended read FVALOR_ESTORNO write FVALOR_ESTORNO;
    property Sincronizado: String read FSINCRONIZADO write FSINCRONIZADO;
    property HashTripa: String read FHASH_TRIPA write FHASH_TRIPA;
    property HashIncremento: Integer read FHASH_INCREMENTO write FHASH_INCREMENTO;

end;

type
TR07ListaVO = class(specialize TFPGObjectList<TR07VO>);

implementation

end.
