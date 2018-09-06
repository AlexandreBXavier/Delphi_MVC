unit Menus.Model.Entity.Factory;

interface

uses Menus.Model.Entity.Interfaces, Menus.Model.Connections.Interfaces,
  Menus.Model.Entity.Products;

Type
  TModelEntityFactory = class(TInterfacedObject, iModelEntityFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelEntityFactory;
      function Product(DataSet : iModelDataSet) : iModelEntity;
      function Clients(DataSet : iModelDataSet) : iModelEntity;
  end;

implementation

{ TModelEntityFactory }

uses Menus.Model.Entity.Clients;

function TModelEntityFactory.Clients(DataSet: iModelDataSet): iModelEntity;
begin
  Result := TModelEntityClient.New(DataSet);
end;

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin

  inherited;
end;

class function TModelEntityFactory.New: iModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.Product(DataSet: iModelDataSet): iModelEntity;
begin
  Result := TModelEntityProduct.New(DataSet);
end;

end.
