program RestaurantesMoveis;

uses
  System.StartUpCopy,
  FMX.Forms,
  UntBase in 'UntBase.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
