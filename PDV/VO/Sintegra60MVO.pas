unit Sintegra60MVO;

{$MODE Delphi}

interface

Uses Fgl;

type
  TSintegra60MVO = class
  private
    FID: Integer;
    FDATA_EMISSAO: String;
    FNUMERO_SERIE_ECF: String;
    FNUMERO_EQUIPAMENTO: Integer;
    FMODELO_DOCUMENTO_FISCAL: String;
    FCOO_INICIAL: Integer;
    FCOO_FINAL: Integer;
    FCRZ: Integer;
    FCRO: Integer;
    FVALOR_VENDA_BRUTA: Extended;
    FVALOR_GRANDE_TOTAL: Extended;
  published
    property Id: Integer read FID write FID;
    property DataEmissao: String read FDATA_EMISSAO write FDATA_EMISSAO;
    property SerieImpressora: String read FNUMERO_SERIE_ECF write FNUMERO_SERIE_ECF;
    property NumeroEquipamento: Integer read FNUMERO_EQUIPAMENTO write FNUMERO_EQUIPAMENTO;
    property ModeloDocumentoFiscal: String read FMODELO_DOCUMENTO_FISCAL write FMODELO_DOCUMENTO_FISCAL;
    property COOInicial: Integer read FCOO_INICIAL write FCOO_INICIAL;
    property COOFinal: Integer read FCOO_FINAL write FCOO_FINAL;
    property CRZ: Integer read FCRZ write FCRZ;
    property CRO: Integer read FCRO write FCRO;
    property VendaBruta: Extended read FVALOR_VENDA_BRUTA write FVALOR_VENDA_BRUTA;
    property GrandeTotal: Extended read FVALOR_GRANDE_TOTAL write FVALOR_GRANDE_TOTAL;
end;

type
TSintegra60MListaVO = class(specialize TFPGObjectList<TSintegra60MVO>);

implementation

end.
