unit Menus.Controller.Connections.Factory.Connection;

interface

uses Menus.Controller.Connections.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Model.Connections.Factory.Connection;

Type
  TControllerConnectionsFactoryConnection = class(TInterfacedObject, iControllerFactoryConnection)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryConnection;
      function Connection : iModelConnection;
  end;

implementation

uses
  System.SysUtils;

{ TControllerConnectionsFactoryConnection }

function TControllerConnectionsFactoryConnection.Connection: iModelConnection;
begin

  {$IFDEF FIREDAC}
    Result := TModelConnectionFactoryConnections.New
              .ConnectionFiredac
              .Parametros
                .Database('C:\Temp\DBDEMOS.FDB')
                .UserName('SYSDBA')
                .Password('masterkey')
                .DriverID('FB')
                .Server('localhost')
                .Porta(3050)
              .EndParametros
              .Conectar;
  {$ENDIF}

  {$IFDEF ZEOS}
    Result := TModelConnectionFactoryConnections.New
              .ConnectionZeos
              .Parametros
                .Database('C:\Temp\DBDEMOS.FDB')
                .UserName('SYSDBA')
                .Password('masterkey')
                .DriverID('firebird-2.5')
                .Server('localhost')
                .Porta(3050)
              .EndParametros
              .Conectar;
  {$ENDIF}

end;

constructor TControllerConnectionsFactoryConnection.Create;
begin

end;

destructor TControllerConnectionsFactoryConnection.Destroy;
begin

  inherited;
end;

class function TControllerConnectionsFactoryConnection.New: iControllerFactoryConnection;
begin
  Result := Self.Create;
end;

end.
