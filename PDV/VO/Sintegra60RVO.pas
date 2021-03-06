unit Sintegra60RVO;

{$MODE Delphi}

interface

Uses Fgl;

type
  TSintegra60RVO = class
  private
    FGTIN: String;
    FDataEmissao: String;
    FMesEmissao: String;
    FAnoEmissao: String;
    FSomaQuantidade: Extended;
    FSomaValor: Extended;
    FSomaBaseICMS: Extended;
    FSituacaoTributaria: String;
  published
    property GTIN: String read FGTIN write FGTIN;
    property DataEmissao: String read FDataEmissao write FDataEmissao;
    property MesEmissao: String read FMesEmissao write FMesEmissao;
    property AnoEmissao: String read FAnoEmissao write FAnoEmissao;
    property SomaQuantidade: Extended read FSomaQuantidade write FSomaQuantidade;
    property SomaValor: Extended read FSomaValor write FSomaValor;
    property SomaBaseICMS: Extended read FSomaBaseICMS write FSomaBaseICMS;
    property SituacaoTributaria: String read FSituacaoTributaria write FSituacaoTributaria;
end;

type
TSintegra60RListaVO = class(specialize TFPGObjectList<TSintegra60RVO>);

implementation

end.
