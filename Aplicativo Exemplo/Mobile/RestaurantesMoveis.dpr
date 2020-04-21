program RestaurantesMoveis;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntBase in 'UntBase.pas' {FrmBase},
  UntLayoutBase in 'UntLayoutBase.pas' {FrmLayoutBase},
  UntInfoUsuario in 'UntInfoUsuario.pas' {FrmInfoUsuario},
  UntPrincipal in 'UntPrincipal.pas' {FrmPrincipal},
  UntLib in 'Utils\UntLib.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
