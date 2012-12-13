{*******************************************************************************
Title: T2Ti ERP
Description: Classe de controle de Logs de Importa��o de Dados.

The MIT License

Copyright: Copyright (C) 2010 T2Ti.COM

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

       The author may be contacted at:
           t2ti.com@gmail.com</p>

@author Albert Eije (T2Ti.COM) | Jose Rodrigues de Oliveira Junior
@version 1.0
*******************************************************************************}
unit LogImportacaoController;

{$MODE Delphi}

interface

uses
  Classes, sqldb, SysUtils;

type
  TLogImportacaoController = class
  protected
  public
    class procedure GravaLogImportacao(Erro: string);
    class function  ExcluirLog(Id: Integer): Boolean;
    class function  ExcluirTodos : Boolean;
  end;

implementation

uses UDataModule, UCaixa;

var
  ConsultaSQL : String;
  Query: TSQLQuery;



class procedure TLogImportacaoController.GravaLogImportacao(Erro: string);
begin
  try
    try
      ConsultaSQL := ' insert into LOG_IMPORTACAO ('+
                          'DATA_IMPORTACAO, '+
                          'LOG_ERRO) '+
                      ' values ('+
                          ':pDATA_IMPORTACAO, '+
                          ':pLOG_ERRO)';

      Query := TSQLQuery.Create(nil);
      Query.SQLConnection := FDataModule.Conexao;
      Query.sql.Text := ConsultaSQL;

      Query.ParamByName('pDATA_IMPORTACAO').AsDate := Now;
      Query.ParamByName('pLOG_ERRO').AsString := Erro;

      Query.ExecSQL();

      FCaixa.GifAnimadoLogErro.Visible := true;
      FCaixa.GifAnimadoLogErro.Animate := true;
    except
      //
    end;
  finally
     Query.Free;
  end;
end;

class function TLogImportacaoController.ExcluirLog(Id: Integer): Boolean;
begin
    ConsultaSQL :=  'delete from LOG_IMPORTACAO  where id = :pID ';

  try
    try
      Query := TSQLQuery.Create(nil);
      Query.SQLConnection := FDataModule.Conexao;
      Query.sql.Text := ConsultaSQL;
      Query.ParamByName('pID').AsInteger := Id;
      Query.ExecSQL();
      result := True;
    except
      result := false;
    end;
  finally
    Query.Free;
  end;

end;

class Function TLogImportacaoController.ExcluirTodos: Boolean;
begin
    ConsultaSQL :=  'delete from LOG_IMPORTACAO';

  try
    try
      Query := TSQLQuery.Create(nil);
      Query.SQLConnection := FDataModule.Conexao;
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
