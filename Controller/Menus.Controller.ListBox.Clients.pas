unit Menus.Controller.ListBox.Clients;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxClients = class(TInterfacedObject, iControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): iControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

{ TControllerListBoxClients }

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxClients.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxClients.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxClients.Exibir;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Product.Show)
    .Exibir;
end;

class function TControllerListBoxClients.New(Container: TComponent)
  : iControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.
