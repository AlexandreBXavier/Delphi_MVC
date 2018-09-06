unit Menus.Controller.Connections.Interfaces;

interface

uses Menus.Model.Connections.Interfaces;

type

  iControllerFactoryConnection = interface
    ['{5EBF8D54-0A15-4A32-A123-D78C2DEF7E98}']
    function Connection : iModelConnection;
  end;

  iControllerFactoryDataSet = interface
    ['{549A7119-DBF9-4141-B3A6-6325E54CC9B7}']
    function DataSet(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

end.
