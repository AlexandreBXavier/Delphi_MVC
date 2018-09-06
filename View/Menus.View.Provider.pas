unit Menus.View.Provider;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TfrmProvider = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProvider: TfrmProvider;

implementation

{$R *.fmx}


initialization
  RegisterFmxClasses([TfrmProvider]);

end.
