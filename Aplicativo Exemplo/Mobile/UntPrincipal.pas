unit UntPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UntBase, ksTabControl;

type
  TFrmPrincipal = class(TFrmBase)
    tbCtrlMain: TksTabControl;
    tbItemLogin: TksTabItem;
    tbItemMain: TksTabItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

end.
