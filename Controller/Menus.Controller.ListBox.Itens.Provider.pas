unit Menus.Controller.ListBox.Itens.Provider;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.Types, Menus.Controller.Forms.Default;

type
  TControllerListBoxItensProvider = class(TInterfacedObject, iControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensProvider }

uses Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensProvider.Create;
begin

end;

destructor TControllerListBoxItensProvider.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensProvider.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensProvider.onClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TfrmProvider');
end;

function TControllerListBoxItensProvider.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnProvider')
              .Text('Provider')
              .onClick(onClick)
              .Item;
end;

end.
