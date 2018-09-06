unit Menus.View.Clients;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, Menus.Controller.Entity.Interfaces,
  Data.DB, System.Rtti, FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ScrollBox,
  FMX.Grid;

type
  TfrmClients = class(TForm)
    ToolBar1: TToolBar;
    Layout1: TLayout;
    DataSource1: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FEntity : iControllerEntity;
  public
    { Public declarations }
  end;

var
  frmClients: TfrmClients;

implementation

{$R *.fmx}

uses Menus.Controller.ListBox.Factory, Menus.Controller.Entity.Factory;

procedure TfrmClients.FormCreate(Sender: TObject);
begin
  FEntity := TControllerEntityFactory.New.Client.Lista(DataSource1);
  TControllerListBoxFactory.New.Clients(Layout1).Exibir;
end;

initialization
  RegisterFmxClasses([TfrmClients]);

end.
