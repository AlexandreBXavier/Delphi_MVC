unit Menus.Model.Entity.Clients;

interface

uses Menus.Model.Entity.Interfaces, System.Classes,
  Menus.Model.Connections.Interfaces;

Type
  TModelEntityClient = class(TInterfacedObject, iModelEntity)
    private
      FDataSet : iModelDataSet;
    public
      constructor Create(DataSet : iModelDataSet);
      destructor Destroy; override;
      class function New(DataSet : iModelDataSet) : iModelEntity;
      function Listar : TComponent;
  end;

implementation

const
  FTABLENAME = 'Clients';

{ TModelEntityClient }

constructor TModelEntityClient.Create(DataSet : iModelDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntityClient.Destroy;
begin

  inherited;
end;

function TModelEntityClient.Listar: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityClient.New(DataSet : iModelDataSet) : iModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.
