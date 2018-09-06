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
  end;

implementation

{ TControllerListBoxItensFactory }

uses Menus.Controller.ListBox.Itens.Product,
  Menus.Controller.ListBox.Itens.Client;

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

destructor TControllerListBoxItensFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensFactory.New: iControllerListBoxItensFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxItensFactory.Product: iControllerListBoxItemForm;
begin
  Result := TControllerListBoxItensProduct.New;
end;

end.
