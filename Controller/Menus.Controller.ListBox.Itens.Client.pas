unit Menus.Controller.ListBox.Itens.Client;

interface

uses Menus.Controller.ListBox.Interfaces, FMX.Types, Menus.Controller.Forms.Default;

type
  TControllerListBoxItensClient = class(TInterfacedObject, iControllerListBoxItemForm)
    constructor Create;
    destructor Destroy; override;
    class function New : iControllerListBoxItemForm;
    function Show : TFmxObject;
    procedure onClick(Sender : TObject);
  end;

implementation

{ TControllerListBoxItensClient }

uses Menus.Controller.ListBox.Itens.Factory;

constructor TControllerListBoxItensClient.Create;
begin

end;

destructor TControllerListBoxItensClient.Destroy;
begin

  inherited;
end;

class function TControllerListBoxItensClient.New: iControllerListBoxItemForm;
begin
  Result := Self.Create;
end;

procedure TControllerListBoxItensClient.onClick(Sender: TObject);
begin
  TControllerFormsDefault.CreateForm('TfrmClients');
end;

function TControllerListBoxItensClient.Show: TFmxObject;
begin
  Result := TControllerListBoxItensFactory.New
              .Default
              .Name('btnClient')
              .Text('Client')
              .onClick(onClick)
              .Item;
end;

end.
