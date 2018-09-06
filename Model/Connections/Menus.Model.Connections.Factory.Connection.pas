unit Menus.Model.Connections.Factory.Connection;

interface

uses
  {$IFDEF FIREDAC}
    Menus.Model.Connections.ConnectionFiredac,
  {$ENDIF}
  {$IFDEF ZEOS}
    Menus.Model.Connections.Zeos.Connection,
  {$ENDIF}
  Menus.Model.Connections.Interfaces;

Type
  TModelConnectionFactoryConnections = class(TInterfacedObject, iModelFactoryConnection)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFactoryConnection;
      function ConnectionFiredac : iModelConnection;
      function ConnectionZeos : iModelConnection;
  end;

implementation

{ TModelConnectionFactoryConnections }

function TModelConnectionFactoryConnections.ConnectionFiredac: iModelConnection;
begin
  {$IFDEF FIREDAC}
    Result := TModelConnectionFiredac.New;
  {$ENDIF}
end;

function TModelConnectionFactoryConnections.ConnectionZeos: iModelConnection;
begin
  {$IFDEF ZEOS}
    Result := TModelConnectionZeos.New;
  {$ENDIF}
end;

constructor TModelConnectionFactoryConnections.Create;
begin

end;

destructor TModelConnectionFactoryConnections.Destroy;
begin

  inherited;
end;

class function TModelConnectionFactoryConnections.New: iModelFactoryConnection;
begin
  Result := Self.Create;
end;

end.
