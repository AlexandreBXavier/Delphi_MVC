unit Menus.Controller.ListBox.Itens.Factory;

interface

uses Menus.Controller.ListBox.Interfaces, Menus.Controller.ListBox.Itens.Default;

type
  TControllerListBoxItensFactory = class(TInterfacedObject, iControllerListBoxItensFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItensFactory;
    function Default : iControllerListBoxItensDefault;
    function Product : iControllerListBoxItemForm;
    function Client : iControllerListBoxItemForm;
    function Provider : iControllerListBoxItemForm;
    function Insert : iControllerListBoxItemCRUD;
    function Update : iControllerListBoxItemCRUD;
    function Delete : iControllerListBoxItemCRUD;
  end;

implementation

{ TControllerListBoxItensFactory }

uses Menus.Controller.ListBox.Itens.Product,
  Menus.Controller.ListBox.Itens.Client, Menus.Controller.ListBox.Itens.Insert,
  Menus.Controller.ListBox.Itens.Delete, Menus.Controller.ListBox.Itens.Update,
  Menus.Controller.ListBox.Itens.Provider;

function TControllerListBoxItensFactory.Client: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensClient.New;
end;

constructor TControllerListBoxItensFactory.Create;
begin

end;

function TControllerListBoxItensFactory.Default: iControllerListBoxItensDefault;
begin
  Result := TControllerListBoxItensDefault.New;
end;

function TControllerListBoxItensFactory.Delete: iControllerListBoxItemCRUD;
begin
  Result := TControllerListBoxItensDelete.New;
end;

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

function TControllerListBoxItensFactory.Provider: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProvider.New;
end;

function TControllerListBoxItensFactory.Insert: iControllerListBoxItemCRUD;
begin
  Result := TControllerListBoxItensInsert.New;
end;

class function TControllerListBoxItensFactory.New: iControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Product: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProduct.New;
end;

function TControllerListBoxItensFactory.Update: iControllerListBoxItemCRUD;
begin
    Result := TControllerListBoxItensUpdate.New;
end;

end.
