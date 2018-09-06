unit Menus.Model.Connections.TableFiredac;

interface

uses Menus.Model.Connections.Interfaces, FireDAC.Comp.Client, System.Classes;

Type
  TModelConnectionsTableFiredac = class(TInterfacedObject, iModelDataSet)
  private
    FTable: TFDTable;
  public
    constructor Create(Connection: iModelConnection);
    destructor Destroy; override;
    class function New(Connection: iModelConnection): iModelDataSet;
    function Open(aTable: String): iModelDataSet;
    function EndDataSet: TComponent;
  end;

implementation

{ TModelConnectionsTableFiredac }

constructor TModelConnectionsTableFiredac.Create(Connection: iModelConnection);
begin
  FTable := TFDTable.Create(nil);
  FTable.Connection := (Connection.EndConnection as TFDConnection);
end;

destructor TModelConnectionsTableFiredac.Destroy;
begin
  FTable.Free;
  inherited;
end;

function TModelConnectionsTableFiredac.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConnectionsTableFiredac.New(Connection: iModelConnection)
  : iModelDataSet;
begin
  Result := Self.Create(Connection);
end;

function TModelConnectionsTableFiredac.Open(aTable: String): iModelDataSet;
begin
  Result := Self;
  FTable.Open(aTable);
end;

end.
