unit Menus.Controller.ListBox.Main;

interface

uses Menus.Controller.ListBox.Interfaces, System.Classes;

type
  TControllerListBoxMain = class(TInterfacedObject, iControllerListBoxMenu)
  private
    FContainer: TComponent;
  public
    constructor Create(Container: TComponent);
    destructor Destroy; override;
    class function New(Container: TComponent): iControllerListBoxMenu;
    procedure Exibir;
  end;

implementation

{ TControllerListBoxMain }

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxMain.Create(Container: TComponent);
begin
  FContainer := Container;
end;

destructor TControllerListBoxMain.Destroy;
begin

  inherited;
end;

procedure TControllerListBoxMain.Exibir;
begin
  TControllerListBoxFactory.New
    .Default(FContainer)
    .AddItem(TControllerListBoxItensFactory.New.Product.Show)
    .AddItem(TControllerListBoxItensFactory.New.Client.Show)
    .Exibir;
end;

class function TControllerListBoxMain.New(Container: TComponent)
  : iControllerListBoxMenu;
begin
  Result := Self.Create(Container);
end;

end.
