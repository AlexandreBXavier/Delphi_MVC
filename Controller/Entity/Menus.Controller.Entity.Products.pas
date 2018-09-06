unit Menus.Controller.Entity.Products;

interface

uses Menus.Controller.Entity.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Controller.Connections.Factory.Connection,
  Menus.Controller.Connections.Factory.DataSet, Menus.Model.Entity.Interfaces,
  Menus.Model.Entity.Factory, Data.DB;

Type
  TControllerEntityProduct = class(TInterfacedObject, iControllerEntity)
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

{ TControllerEntityProduct }

constructor TControllerEntityProduct.Create;
begin
  FConnection := TControllerConnectionsFactoryConnection.New.Connection;
  FDataSet := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
  FEntity := TModelEntityFactory.New.Product(FDataSet);
end;

destructor TControllerEntityProduct.Destroy;
begin

  inherited;
end;

function TControllerEntityProduct.Lista(
  aDataSource: TDataSource): iControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.Listar);
end;

class function TControllerEntityProduct.New: iControllerEntity;
begin
  Result := Self.Create;
end;

end.
