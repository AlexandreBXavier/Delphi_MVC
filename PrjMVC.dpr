program PrjMVC;

uses
  System.StartUpCopy,
  FMX.Forms,
  Menus.View.Main in 'View\Menus.View.Main.pas' {frmMain},
  Menus.View.Products in 'View\Menus.View.Products.pas' {frmProduct},
  Menus.View.Clients in 'View\Menus.View.Clients.pas' {frmClients},
  Menus.View.Provider in 'View\Menus.View.Provider.pas' {frmProvider},
  Menus.Model.Connections.Interfaces in 'Model\Connections\Menus.Model.Connections.Interfaces.pas',
  Menus.Model.Connections.Factory.Connection in 'Model\Connections\Menus.Model.Connections.Factory.Connection.pas',
  Menus.Model.Connections.Factory.DataSet in 'Model\Connections\Menus.Model.Connections.Factory.DataSet.pas',
  Menus.Model.Entity.Interfaces in 'Model\Entity\Menus.Model.Entity.Interfaces.pas',
  Menus.Model.Entity.Products in 'Model\Entity\Menus.Model.Entity.Products.pas',
  Menus.Model.Entity.Factory in 'Model\Entity\Menus.Model.Entity.Factory.pas',
  Menus.Model.Entity.Clients in 'Model\Entity\Menus.Model.Entity.Clients.pas',
  {$IFDEF FIREDAC}
  Menus.Model.Connections.ConnectionFiredac in 'Model\Connections\Firedac\Menus.Model.Connections.ConnectionFiredac.pas',
  Menus.Model.Connections.TableFiredac in 'Model\Connections\Firedac\Menus.Model.Connections.TableFiredac.pas',
  {$ENDIF }
  {$IFDEF ZEOS}
  Menus.Model.Connections.Zeos.Connection in 'Model\Connections\Zeos\Menus.Model.Connections.Zeos.Connection.pas',
  {$ENDIF }
  Menus.Controller.ListBox.Interfaces in 'Controller\Menus\Menus.Controller.ListBox.Interfaces.pas',
  Menus.Controller.ListBox.Itens.Factory in 'Controller\Menus\Menus.Controller.ListBox.Itens.Factory.pas',
  Menus.Controller.ListBox.Factory in 'Controller\Menus\Menus.Controller.ListBox.Factory.pas',
  Menus.Controller.ListBox.Itens.Default in 'Controller\Menus\Menus.Controller.ListBox.Itens.Default.pas',
  Menus.Controller.ListBox.Default in 'Controller\Menus\Menus.Controller.ListBox.Default.pas',
  Menus.Controller.ListBox.Itens.Product in 'Controller\Menus\Menus.Controller.ListBox.Itens.Product.pas',
  Menus.Controller.ListBox.Main in 'Controller\Menus\Menus.Controller.ListBox.Main.pas',
  Menus.Controller.ListBox.Itens.Client in 'Controller\Menus\Menus.Controller.ListBox.Itens.Client.pas',
  Menus.Controller.ListBox.Products in 'Controller\Menus\Menus.Controller.ListBox.Products.pas',
  Menus.Controller.ListBox.Clients in 'Controller\Menus\Menus.Controller.ListBox.Clients.pas',
  Menus.Controller.ListBox.CRUD in 'Controller\Menus\Menus.Controller.ListBox.CRUD.pas',
  Menus.Controller.ListBox.Itens.Insert in 'Controller\Menus\Menus.Controller.ListBox.Itens.Insert.pas',
  Menus.Controller.ListBox.Itens.Update in 'Controller\Menus\Menus.Controller.ListBox.Itens.Update.pas',
  Menus.Controller.ListBox.Itens.Delete in 'Controller\Menus\Menus.Controller.ListBox.Itens.Delete.pas',
  Menus.Controller.ListBox.Itens.Provider in 'Controller\Menus\Menus.Controller.ListBox.Itens.Provider.pas',
  Menus.Controller.Connections.Interfaces in 'Controller\Connections\Menus.Controller.Connections.Interfaces.pas',
  Menus.Controller.Connections.Factory.Connection in 'Controller\Connections\Menus.Controller.Connections.Factory.Connection.pas',
  Menus.Controller.Connections.Factory.DataSet in 'Controller\Connections\Menus.Controller.Connections.Factory.DataSet.pas',
  Menus.Controller.Entity.Interfaces in 'Controller\Entity\Menus.Controller.Entity.Interfaces.pas',
  Menus.Controller.Entity.Products in 'Controller\Entity\Menus.Controller.Entity.Products.pas',
  Menus.Controller.Entity.Factory in 'Controller\Entity\Menus.Controller.Entity.Factory.pas',
  Menus.Controller.Entity.Clients in 'Controller\Entity\Menus.Controller.Entity.Clients.pas',
  Menus.Controller.Forms.Default in 'Controller\Forms\Menus.Controller.Forms.Default.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
