unit Menus.Model.Connections.ConnectionFiredac;

interface

uses Menus.Model.Connections.Interfaces, FireDAC.Comp.Client, System.Classes,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Comp.UI, Data.DB, FireDAC.DApt;

Type
  TModelConnectionFiredac = class(TInterfacedObject, iModelConnection,
    iModelConnectionParametros)
  private
    FConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
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

{ TModelConnectionFiredac }

function TModelConnectionFiredac.Conectar: iModelConnection;
begin
  Result := Self;
  LerParametros;
  FConnection.Connected := true;
end;

constructor TModelConnectionFiredac.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(nil);
  FDPhysFBDriverLink1 := TFDPhysFBDriverLink.Create(nil);
end;

function TModelConnectionFiredac.Database(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FDatabase := Value;
end;

destructor TModelConnectionFiredac.Destroy;
begin
  FDGUIxWaitCursor1.Free;
  FDPhysFBDriverLink1.Free;
  FConnection.Free;
  inherited;
end;

function TModelConnectionFiredac.DriverID(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FDriverID := Value;
end;

function TModelConnectionFiredac.EndConnection: TComponent;
begin
  Result := FConnection;
end;

function TModelConnectionFiredac.EndParametros: iModelConnection;
begin
  Result := Self;
end;

procedure TModelConnectionFiredac.LerParametros;
begin
  FConnection.Params.Database := FDatabase;
  FConnection.Params.UserName := FUserName;
  FConnection.Params.Password := FPassword;
  FConnection.Params.DriverID := FDriverID;
  FConnection.Params.Add('Server=' + FServer);
  FConnection.Params.Add('Port=' + IntToStr(FPorta));
end;

class function TModelConnectionFiredac.New: iModelConnection;
begin
  Result := Self.Create;
end;

function TModelConnectionFiredac.Parametros: iModelConnectionParametros;
begin
  Result := Self;
end;

function TModelConnectionFiredac.Password(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FPassword := Value;
end;

function TModelConnectionFiredac.Porta(Value: Integer): iModelConnectionParametros;
begin
  Result := Self;
  FPorta := Value;
end;

function TModelConnectionFiredac.Server(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FServer := Value;
end;

function TModelConnectionFiredac.UserName(Value: String): iModelConnectionParametros;
begin
  Result := Self;
  FUserName := Value;
end;

end.

