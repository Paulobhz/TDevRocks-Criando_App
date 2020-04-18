program RestaurantesMoveis;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntBase in 'UntBase.pas' {FrmBase},
  UntLayoutBase in 'UntLayoutBase.pas' {FrmLayoutBase},
  UntInfoUsuario in 'UntInfoUsuario.pas' {FrmLayoutBase1},
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntLib in 'Utils\UntLib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmBase, FrmBase);
  Application.CreateForm(TFrmLayoutBase, FrmLayoutBase);
  Application.CreateForm(TFrmLayoutBase1, FrmLayoutBase1);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
