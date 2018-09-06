unit Menus.Controller.Forms.Default;

interface

type
  TControllerFormsDefault = class
    class procedure CreateForm(ClassName : String);
  end;

implementation

uses
  FMX.Types, System.Classes, FMX.Forms, System.SysUtils;

{ TControllerFormsDefault }

class procedure TControllerFormsDefault.CreateForm(ClassName: String);
var
  ObjFMX : TFMXObjectClass;
  newForm : TCustomForm;
begin
  objFMX := TFMXObjectClass(GetClass(ClassName));
  try
    newForm := (objFMX.Create(nil) as TCustomForm);
    try
      newForm.ShowModal;
    finally
      newForm.Free;
    end;
  except
    raise Exception.Create('Objeto n�o existe');
  end;
end;
end.
