unit Menus.Controller.ListBox.Products;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxProduct = class(TInterfacedObject, iControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): iControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

{ TControllerListBoxProduct }

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxProduct.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxProduct.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxProduct.Exibir;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Client.Show)
    .Exibir;
end;

class function TControllerListBoxProduct.New(Container: TComponent)
  : iControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;


end.
