unit Menus.View.Products;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, System.Rtti, FMX.Grid.Style,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ScrollBox, FMX.Grid, Data.DB, Menus.Controller.Entity.Factory,
  Menus.Controller.Entity.Interfaces, FMX.Edit;

type
  TfrmProduct = class(TForm)
    ToolBar1: TToolBar;
    Layout1: TLayout;
    DataSource1: TDataSource;
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Layout2: TLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
    FEntity : iControllerEntity;
    procedure preencherDados;
  public
    { Public declarations }
  end;

var
  frmProduct: TfrmProduct;

implementation

{$R *.fmx}

uses Menus.Controller.ListBox.Factory, Menus.Controller.ListBox.Interfaces;

procedure TfrmProduct.Button1Click(Sender: TObject);
begin
  DataSource1.DataSet.Append;
end;

procedure TfrmProduct.Button2Click(Sender: TObject);
begin
  DataSource1.DataSet.Edit;
end;

procedure TfrmProduct.Button3Click(Sender: TObject);
begin
  DataSource1.DataSet.Delete;
end;

procedure TfrmProduct.Button4Click(Sender: TObject);
begin
  preencherDados;
  DataSource1.DataSet.Post;
end;

procedure TfrmProduct.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  Edit1.Text := DataSource1.DataSet.FieldByName('ID_PRODUCT').AsString;
  Edit2.Text := DataSource1.DataSet.FieldByName('NAME_PRODUCT').AsString;
end;

procedure TfrmProduct.FormCreate(Sender: TObject);
begin
  FEntity := TControllerEntityFactory.New.Product.Lista(DataSource1);
  TControllerListBoxFactory.New.Product(Layout1).Exibir;
end;

procedure TfrmProduct.preencherDados;
begin
  DataSource1.DataSet.FieldByName('ID_PRODUCT').Value := Edit1.Text;
  DataSource1.DataSet.FieldByName('NAME_PRODUCT').Value := Edit2.Text;
end;

initialization
  RegisterFmxClasses([TfrmProduct]);

end.
