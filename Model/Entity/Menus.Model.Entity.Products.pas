unit Menus.Model.Entity.Products;

interface

uses Menus.Model.Entity.Interfaces, System.Classes,
  Menus.Model.Connections.Interfaces;

Type
  TModelEntityProduct = class(TInterfacedObject, iModelEntity)
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
  FTABLENAME = 'Product';

{ TModelEntityProduct }

constructor TModelEntityProduct.Create(DataSet : iModelDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntityProduct.Destroy;
begin

  inherited;
end;

function TModelEntityProduct.Listar: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityProduct.New(DataSet : iModelDataSet) : iModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.
