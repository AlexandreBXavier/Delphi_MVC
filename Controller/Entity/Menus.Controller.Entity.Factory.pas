unit Menus.Controller.Entity.Factory;

interface

uses Menus.Controller.Entity.Interfaces, Menus.Controller.Entity.Products;

Type
  TControllerEntityFactory = class(TInterfacedObject, iControllerEntityFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerEntityFactory;
      function Product : iControllerEntity;
      function Client : iControllerEntity;
  end;

implementation

{ TControllerEntityFactory }

uses Menus.Controller.Entity.Clients;

function TControllerEntityFactory.Client: iControllerEntity;
begin
  Result := TControllerEntityClient.New;
end;

constructor TControllerEntityFactory.Create;
begin

end;

destructor TControllerEntityFactory.Destroy;
begin

  inherited;
end;

class function TControllerEntityFactory.New: iControllerEntityFactory;
begin
  Result := Self.Create;
end;

function TControllerEntityFactory.Product: iControllerEntity;
begin
  Result := TControllerEntityProduct.New;
end;

end.
