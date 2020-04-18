unit UntLayoutBase;

interface

uses
  UntBase,

  FMX.Controls,
  FMX.Dialogs,
  FMX.Forms,
  FMX.Graphics,
  FMX.StdCtrls,
  FMX.Types,

  System.Classes,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Variants, FMX.Objects, FMX.Layouts;

type
  TFrmLayoutBase = class(TFrmBase)
    lytBase: TLayout;
    rctClient: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLayoutBase: TFrmLayoutBase;

implementation

{$R *.fmx}

end.
