unit Menus.Controller.Connections.Factory.DataSet;

interface

uses Menus.Controller.Connections.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Model.Connections.Factory.DataSet;

Type
  TControllerConnectionsFactoryDataSet = class(TInterfacedObject, iControllerFactoryDataSet)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryDataSet;
      function DataSet(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

{ TControllerConnectionsFactoryDataSet }

constructor TControllerConnectionsFactoryDataSet.Create;
begin

end;

function TControllerConnectionsFactoryDataSet.DataSet(Connection : iModelConnection) : iModelDataSet;
begin
  {$IFDEF FIREDAC}
    Result := TModelConnectionFactoryDataSet.New.DataSetFiredac(Connection);
  {$ENDIF}
  {$IFDEF ZEOS}
    Result := TModelConnectionFactoryDataSet.New.DataSetZeos(Connection);
  {$ENDIF}
end;

destructor TControllerConnectionsFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TControllerConnectionsFactoryDataSet.New: iControllerFactoryDataSet;
begin
  Result := Self.Create;
end;

end.
