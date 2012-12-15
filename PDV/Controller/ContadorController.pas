unit ContadorController;

{$MODE Delphi}

interface

uses
  Classes, sqldb, SysUtils, ContadorVO;

type
  TContadorController = class
  protected
  public
    class function PegaContador: TContadorVO;
    class function ConsultaIdContador(Id: Integer): Boolean;
    class function GravaCargaContador(vTupla: String): Boolean;
  end;

implementation

uses Udmprincipal, Biblioteca;

var
  ConsultaSQL: String;
  Query: TSQLQuery;

class function TContadorController.ConsultaIdContador(Id: Integer): Boolean;
begin
  ConsultaSQL := 'select ID from ECF_CONTADOR where (ID = :pID) ';
  try
    try
      Query := TSQLQuery.Create(nil);
      Query.DataBase := dmPrincipal.IBCon;
      Query.sql.Text := ConsultaSQL;
      Query.ParamByName('pID').AsInteger:=Id;
      Query.Open;
      if not Query.IsEmpty then
        result := true
      else
        result := false;
    except
    end;
  finally
    Query.Free;
  end;
end;

class function TContadorController.PegaContador: TContadorVO;
var
  Contador: TContadorVO;
begin
  ConsultaSQL := 'select * from ECF_CONTADOR';

  Contador := TContadorVO.Create;

  try
    try
      Query := TSQLQuery.Create(nil);
      Query.DataBase := dmPrincipal.IBCon;
      Query.sql.Text := ConsultaSQL;
      Query.Open;

      Contador.Id := Query.FieldByName('ID').AsInteger;
      Contador.CPF := Query.FieldByName('CPF').AsString;
      Contador.CNPJ := Query.FieldByName('CNPJ').AsString;
      Contador.Nome := Query.FieldByName('NOME').AsString;
      Contador.CRC := Query.FieldByName('INSCRICAO_CRC').AsString;
      Contador.Fone := Query.FieldByName('FONE').AsString;
      Contador.Fax := Query.FieldByName('FAX').AsString;
      Contador.Logradouro := Query.FieldByName('LOGRADOURO').AsString;
      Contador.Numero := Query.FieldByName('NUMERO').AsInteger;
      Contador.Complemento := Query.FieldByName('COMPLEMENTO').AsString;
      Contador.Bairro := Query.FieldByName('BAIRRO').AsString;
      Contador.CEP := Query.FieldByName('CEP').AsString;
      Contador.CodigoMunicipio := Query.FieldByName('CODIGO_MUNICIPIO').AsInteger;
      Contador.UF := Query.FieldByName('UF').AsString;
      Contador.Email := Query.FieldByName('EMAIL').AsString;
      result := Contador;
    except
      result := nil;
    end;
  finally
    Query.Free;
  end;
end;

class function TContadorController.GravaCargaContador(vTupla:string): Boolean;
var
  ID: Integer;
begin
  try
    try
      if dmprincipal.BancoPAF = 'FIREBIRD' then
      begin
        ConsultaSQL := 'UPDATE OR INSERT INTO ecf_contador '+
        ' (ID, '+
        'ID_ECF_EMPRESA, '+
        'CPF, '+
        'CNPJ, '+
        'NOME, '+
        'INSCRICAO_CRC, '+
        'FONE, '+
        'FAX, '+
        'LOGRADOURO, '+
        'NUMERO, '+
        'COMPLEMENTO, '+
        'BAIRRO, '+
        'CEP, '+
        'CODIGO_MUNICIPIO, '+
        'UF, '+
        'EMAIL)'+
        ' VALUES ('+
        DevolveConteudoDelimitado('|',vTupla)+','+  //    ID                INTEGER NOT NULL,
        DevolveConteudoDelimitado('|',vTupla)+','+  //    ID_ECF_EMPRESA    INTEGER NOT NULL,
        DevolveConteudoDelimitado('|',vTupla)+','+  //    CPF               VARCHAR(11),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    CNPJ              VARCHAR(14),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    NOME              VARCHAR(100),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    INSCRICAO_CRC     VARCHAR(15),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    FONE              VARCHAR(15),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    FAX               VARCHAR(15),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    LOGRADOURO        VARCHAR(100),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    NUMERO            INTEGER,
        DevolveConteudoDelimitado('|',vTupla)+','+  //    COMPLEMENTO       VARCHAR(100),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    BAIRRO            VARCHAR(30),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    CEP               VARCHAR(8),
        DevolveConteudoDelimitado('|',vTupla)+','+  //    CODIGO_MUNICIPIO  INTEGER,
        DevolveConteudoDelimitado('|',vTupla)+','+  //    UF                CHAR(2),
        DevolveConteudoDelimitado('|',vTupla)+')';  //    EMAIL             VARCHAR(250)
      end
      else if dmprincipal.BancoPAF = 'MYSQL' then
      begin
        ID := StrToInt(DevolveConteudoDelimitado('|',vTupla));            //    ID              INTEGER NOT NULL,

        if not ConsultaIdContador(ID) then
          ConsultaSQL :=
          ' INSERT INTO ecf_contador ' +
          ' (ID, '+
          'ID_ECF_EMPRESA, '+
          'CPF, '+
          'CNPJ, '+
          'NOME, '+
          'INSCRICAO_CRC, '+
          'FONE, '+
          'FAX, '+
          'LOGRADOURO, '+
          'NUMERO, '+
          'COMPLEMENTO, '+
          'BAIRRO, '+
          'CEP, '+
          'CODIGO_MUNICIPIO, '+
          'UF, '+
          'EMAIL)'+
          ' VALUES ('+
          IntToStr(ID)+', '+                            //    ID                    INTEGER NOT NULL,
          DevolveConteudoDelimitado('|',vTupla)+','+  //    ID_ECF_EMPRESA    INTEGER NOT NULL,
          DevolveConteudoDelimitado('|',vTupla)+','+  //    CPF               VARCHAR(11),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    CNPJ              VARCHAR(14),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    NOME              VARCHAR(100),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    INSCRICAO_CRC     VARCHAR(15),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    FONE              VARCHAR(15),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    FAX               VARCHAR(15),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    LOGRADOURO        VARCHAR(100),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    NUMERO            INTEGER,
          DevolveConteudoDelimitado('|',vTupla)+','+  //    COMPLEMENTO       VARCHAR(100),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    BAIRRO            VARCHAR(30),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    CEP               VARCHAR(8),
          DevolveConteudoDelimitado('|',vTupla)+','+  //    CODIGO_MUNICIPIO  INTEGER,
          DevolveConteudoDelimitado('|',vTupla)+','+  //    UF                CHAR(2),
          DevolveConteudoDelimitado('|',vTupla)+')'  //    EMAIL             VARCHAR(250)

        else
          ConsultaSQL := ' update ecf_contador set '+
          'ID_ECF_EMPRESA ='+    DevolveConteudoDelimitado('|',vTupla)+','+  //    ID_ECF_EMPRESA    INTEGER NOT NULL,
          'CPF ='+               DevolveConteudoDelimitado('|',vTupla)+','+  //    CPF               VARCHAR(11),
          'CNPJ ='+              DevolveConteudoDelimitado('|',vTupla)+','+  //    CNPJ              VARCHAR(14),
          'NOME ='+              DevolveConteudoDelimitado('|',vTupla)+','+  //    NOME              VARCHAR(100),
          'INSCRICAO_CRC ='+     DevolveConteudoDelimitado('|',vTupla)+','+  //    INSCRICAO_CRC     VARCHAR(15),
          'FONE ='+              DevolveConteudoDelimitado('|',vTupla)+','+  //    FONE              VARCHAR(15),
          'FAX ='+               DevolveConteudoDelimitado('|',vTupla)+','+  //    FAX               VARCHAR(15),
          'LOGRADOURO ='+        DevolveConteudoDelimitado('|',vTupla)+','+  //    LOGRADOURO        VARCHAR(100),
          'NUMERO ='+            DevolveConteudoDelimitado('|',vTupla)+','+  //    NUMERO            INTEGER,
          'COMPLEMENTO ='+       DevolveConteudoDelimitado('|',vTupla)+','+  //    COMPLEMENTO       VARCHAR(100),
          'BAIRRO ='+            DevolveConteudoDelimitado('|',vTupla)+','+  //    BAIRRO            VARCHAR(30),
          'CEP ='+               DevolveConteudoDelimitado('|',vTupla)+','+  //    CEP               VARCHAR(8),
          'CODIGO_MUNICIPIO ='+  DevolveConteudoDelimitado('|',vTupla)+','+  //    CODIGO_MUNICIPIO  INTEGER,
          'UF ='+                DevolveConteudoDelimitado('|',vTupla)+','+  //    UF                CHAR(2),
          'EMAIL ='+             DevolveConteudoDelimitado('|',vTupla)+')'+  //    EMAIL             VARCHAR(250)
          ' where ID ='+IntToStr(ID);
      end;

      Query := TSQLQuery.Create(nil);
      Query.DataBase := dmPrincipal.IBCon;
      Query.sql.Text := ConsultaSQL;
      Query.ExecSQL();

      result := True;
    except
      result := false;
    end;
  finally
    Query.Free;
  end;
end;

end.
