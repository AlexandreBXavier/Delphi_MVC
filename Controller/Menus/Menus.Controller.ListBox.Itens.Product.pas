unit Menus.Controller.ListBox.Itens.Product;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.Types, Menus.Controller.Forms.Default;

type
  TControllerListBoxItensProduct = class(TInterfacedObject, iControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensProduct }

uses Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensProduct.Create;
begin

end;

destructor TControllerListBoxItensProduct.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProduct.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensProduct.onClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TfrmProduct');
end;

function TControllerListBoxItensProduct.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnProduct')
              .Text('Product')
              .onClick(onClick)
              .Item;
end;

end.
