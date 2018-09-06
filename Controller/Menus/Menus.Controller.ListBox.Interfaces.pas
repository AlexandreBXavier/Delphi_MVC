unit Menus.Controller.ListBox.Interfaces;

interface

uses
  System.Classes, FMX.Types, Data.DB;

type
  iControllerListBoxItensDefault = interface;
  iControllerListBoxDefault = interface;


  iControllerListBoxItemForm = interface
    ['{8F35E67B-982C-4A45-9C30-E68A873C495F}']
    function Show : TFmxObject;
  end;

  iControllerListBoxItemCRUD = interface
    function Execute : TFmxObject;
  end;


  iControllerListBoxMenu = interface
    ['{27AFC304-E6E6-4543-92BF-89ECF99D0EC3}']
    procedure Exibir;
  end;

  iControllerListBoxItensFactory = interface
    ['{EDFC8C69-3605-4D77-9128-826296A3D960}']
    function Default : iControllerListBoxItensDefault;
    function Product : iControllerListBoxItemForm;
    function Client : iControllerListBoxItemForm;
    function Provider : iControllerListBoxItemForm;
    function Insert : iControllerListBoxItemCRUD;
    function Update : iControllerListBoxItemCRUD;
    function Delete : iControllerListBoxItemCRUD;
  end;

  iControllerListBoxFactory = interface
    ['{1B3ACEB6-FE7E-4B5C-87EA-11F5BF4F683D}']
    function Default(Container: TComponent) : iControllerListBoxDefault;
    function Main(Container: TComponent) : iControllerListBoxMenu;
    function Product(Container: TComponent) : iControllerListBoxMenu;
    function Clients(Container: TComponent) : iControllerListBoxMenu;
    function CRUD(Container: TComponent; DataSet : TDataSet) : iControllerListBoxMenu;
  end;

  iControllerListBoxItensDefault = interface
    ['{3E5247D0-E8EA-42AE-BA54-412B490D0D49}']
    function Name(Value : String) : iControllerListBoxItensDefault;
    function Text(Value : String) : iControllerListBoxItensDefault;
    function StyleLookup(Value : String) : iControllerListBoxItensDefault;
    function onClick(Value : TNotifyEvent) : iControllerListBoxItensDefault;
    function Item : TFMXObject;
  end;

  iControllerListBoxDefault = interface
    ['{8CD635AB-D87F-48EA-815E-15175C02C4E7}']
    function Name(Value : String) : iControllerListBoxDefault;
    function Align(Value : TAlignLayout) : iControllerListBoxDefault;
    function ItemHeight(Value : Integer) : iControllerListBoxDefault;
    function AddItem(Value : TFmxObject) : iControllerListBoxDefault;
    function Lista : TFmxObject;
    procedure Exibir;
  end;


implementation

end.
