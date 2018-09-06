unit Menus.Controller.Entity.Clients;

interface

uses Menus.Controller.Entity.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Controller.Connections.Factory.Connection,
  Menus.Controller.Connections.Factory.DataSet, Menus.Model.Entity.Interfaces,
  Menus.Model.Entity.Factory, Data.DB;

Type
  TControllerEntityClient = class(TInterfacedObject, iControllerEntity)
    private
      FConnection : iModelConnection;
      FDataSet : iModelDataSet;
      FEntity : iModelEntity;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerEntity;
      function Lista(aDataSource : TDataSource) : iControllerEntity;
  end;

implementation

{ TControllerEntityClient }

constructor TControllerEntityClient.Create;
begin
  FConnection := TControllerConnectionsFactoryConnection.New.Connection;
  FDataSet := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
  FEntity := TModelEntityFactory.New.Clients(FDataSet);
end;

destructor TControllerEntityClient.Destroy;
begin

  inherited;
end;

function TControllerEntityClient.Lista(
  aDataSource: TDataSource): iControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.Listar);
end;

class function TControllerEntityClient.New: iControllerEntity;
begin
  Result := Self.Create;
end;

end.
