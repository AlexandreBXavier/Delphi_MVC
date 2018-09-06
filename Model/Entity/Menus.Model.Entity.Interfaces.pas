unit Menus.Model.Entity.Interfaces;

interface

uses
  System.Classes, Menus.Model.Connections.Interfaces;

type
  iModelEntity = interface
    ['{2BCEC5B0-0EF3-4F71-8DF6-064D3E892BAE}']
    function Listar : TComponent;
  end;

  iModelEntityFactory = interface
    ['{8E075DED-D808-4A60-AACD-A6DEB9A0CF23}']
    function Product(DataSet : iModelDataSet) : iModelEntity;
    function Clients(DataSet : iModelDataSet) : iModelEntity;
  end;

implementation

end.
