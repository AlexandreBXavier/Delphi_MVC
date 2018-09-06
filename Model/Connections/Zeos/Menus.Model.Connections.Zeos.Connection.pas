unit Menus.Model.Connections.Zeos.Connection;

interface

uses Menus.Model.Connections.Interfaces, FireDAC.Comp.Client, System.Classes, Data.DB,
     ZAbstractConnection, ZConnection;

Type
  TModelConnectionZeos = class(TInterfacedObject, iModelConnection,
    iModelConnectionParametros)
  private
    FConnection: TZConnection;
    FDatabase: String;
    FUserName: String;
    FPassword: String;
    FDriverID: String;
    FServer: String;
    FPorta: Integer;
    procedure LerParametros;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConnection;
    function EndConnection: TComponent;
    function Database(Value: String): iModelConnectionParametros;
    function UserName(Value: String): iModelConnectionParametros;
    function Password(Value: String): iModelConnectionParametros;
    function DriverID(Value: String): iModelConnectionParametros;
    function Server(Value: String): iModelConnectionParametros;
    function Porta(Value: Integer): iModelConnectionParametros;
    function EndParametros: iModelConnection;
    function Parametros : iModelConnectionParametros;
    function Conectar : iModelConnection;
  end;

implementation

uses
  System.SysUtils;

{ TModelConnectionZeos }

function TModelConnectionZeos.Conectar: iModelConnection;
begin
  Result := Self;
  LerParametros;
  FConnection.Connected := true;
end;

constructor TModelConnectionZeos.Create;
begin
  FConnection := TZConnection.Create(nil);
end;

function TModelConnectionZeos.Database(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FDatabase := Value;
end;

destructor TModelConnectionZeos.Destroy;
begin
  FConnection.Free;
  inherited;
end;

function TModelConnectionZeos.DriverID(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FDriverID := Value;
end;

function TModelConnectionZeos.EndConnection: TComponent;
begin
  Result := FConnection;
end;

function TModelConnectionZeos.EndParametros: iModelConnection;
begin
  Result := Self;
end;

procedure TModelConnectionZeos.LerParametros;
begin
  FConnection.HostName := FServer;
  FConnection.Port := FPorta;
  FConnection.Database := FDatabase;
  FConnection.User := FUserName;
  FConnection.Password := FPassword;
  FConnection.Protocol := FDriverID;
end;

class function TModelConnectionZeos.New: iModelConnection;
begin
  Result := Self.Create;
end;

function TModelConnectionZeos.Parametros: iModelConnectionParametros;
begin
  Result := Self;
end;

function TModelConnectionZeos.Password(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FPassword := Value;
end;

function TModelConnectionZeos.Porta(Value: Integer): iModelConnectionParametros;
begin
  Result := Self;
  FPorta := Value;
end;

function TModelConnectionZeos.Server(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FServer := Value;
end;

function TModelConnectionZeos.UserName(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FUserName := Value;
end;

end.
