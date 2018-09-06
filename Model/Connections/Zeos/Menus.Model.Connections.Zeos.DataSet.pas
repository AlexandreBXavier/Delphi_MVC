unit Menus.Model.Connections.Zeos.DataSet;

interface

uses Menus.Model.Connections.Interfaces, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ZConnection;

Type
  TModelConnectionsZeosDataSet = class(TInterfacedObject, iModelDataSet)
  private
    FTable: TZTable;
  public
    constructor Create(Connection: iModelConnection);
    destructor Destroy; override;
    class function New(Connection: iModelConnection): iModelDataSet;
    function Open(aTable: String): iModelDataSet;
    function EndDataSet: TComponent;
  end;

implementation

{ TModelConnectionsZeosDataSet }

constructor TModelConnectionsZeosDataSet.Create(Connection: iModelConnection);
begin
  FTable := TZTable.Create(nil);
  FTable.Connection := (Connection.EndConnection as TZConnection);
end;

destructor TModelConnectionsZeosDataSet.Destroy;
begin
  FTable.Free;
  inherited;
end;

function TModelConnectionsZeosDataSet.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConnectionsZeosDataSet.New(Connection: iModelConnection)
  : iModelDataSet;
begin
  Result := Self.Create(Connection);
end;

function TModelConnectionsZeosDataSet.Open(aTable: String): iModelDataSet;
begin
  Result := Self;
  FTable.TableName := aTable;
  FTable.Open;
end;

end.
