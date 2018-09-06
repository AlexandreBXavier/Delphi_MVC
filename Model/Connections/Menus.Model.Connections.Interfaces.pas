unit Menus.Model.Connections.Interfaces;

interface

uses
  System.Classes;

type
  iModelConnectionParametros = interface;

  iModelConnection = interface
    ['{E8538D27-DFF2-4485-A303-616176681A93}']
    function Conectar : iModelConnection;
    function EndConnection: TComponent;
    function Parametros: iModelConnectionParametros;
  end;

  iModelConnectionParametros = interface
    ['{69BA62BF-43C2-495B-8E0B-C5B6D509FFCB}']
    function Database(Value: String): iModelConnectionParametros;
    function UserName(Value: String): iModelConnectionParametros;
    function Password(Value: String): iModelConnectionParametros;
    function DriverID(Value: String): iModelConnectionParametros;
    function Server(Value: String): iModelConnectionParametros;
    function Porta(Value: Integer): iModelConnectionParametros;
    function EndParametros: iModelConnection;
  end;

  iModelDataSet = interface
    ['{5CFF1908-225F-4A05-A633-914A35BF2858}']
    function Open(aTable: String): iModelDataSet;
    function EndDataSet: TComponent;
  end;

  iModelFactoryConnection = interface
    ['{30C0A523-319F-46E8-97F5-F4C7B32BDF95}']
    function ConnectionFiredac : iModelConnection;
    function ConnectionZeos : iModelConnection;
  end;

  iModelFactoryDataSet = interface
    ['{EA1766BB-437B-4133-95D5-73AF1EA851D7}']
    function DataSetFiredac(Connection : iModelConnection) : iModelDataSet;
    function DataSetZeos(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

end.
