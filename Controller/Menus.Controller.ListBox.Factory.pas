unit Menus.Controller.ListBox.Factory;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes,
  Menus.Controller.ListBox.Default;

type
  TControllerListBoxFactory = class(TInterfacedObject, iControllerListBoxFactory)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxFactory;
    function Default(Container: TComponent) : iControllerListBoxDefault;
    function Main(Container: TComponent) : iControllerListBoxMenu;
    function Product(Container: TComponent) : iControllerListBoxMenu;
    function Clients(Container: TComponent) : iControllerListBoxMenu;
  end;

implementation

{ TControllerListBoxFactory }

uses Menus.Controller.ListBox.Main, Menus.Controller.ListBox.Product,
  Menus.Controller.ListBox.Clients;

function TControllerListBoxFactory.Clients(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxClients.New(Container);
end;

constructor TControllerListBoxFactory.Create;
begin

end;

function TControllerListBoxFactory.Default(
  Container: TComponent): iControllerListBoxDefault;
begin
  Result := TControllerListBoxDefault.New(Container);
end;

destructor TControllerListBoxFactory.Destroy;
begin

  inherited;
end;

class function TControllerListBoxFactory.New: iControllerListBoxFactory;
begin
  Result := Self.Create;
end;

function TControllerListBoxFactory.Main(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxMain.Create(Container);
end;

function TControllerListBoxFactory.Product(
  Container: TComponent): iControllerListBoxMenu;
begin
  Result := TControllerListBoxProduct.New(Container);
end;

end.
