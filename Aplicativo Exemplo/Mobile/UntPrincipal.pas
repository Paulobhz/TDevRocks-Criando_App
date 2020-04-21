unit UntPrincipal;

interface

uses
  UntBase,
  ksTabControl,

  FMX.Controls,
  FMX.Controls.Presentation,
  FMX.Dialogs,
  FMX.Forms,
  FMX.Graphics,
  FMX.ImgList,
  FMX.Layouts,
  FMX.ListBox,
  FMX.MultiView,
  FMX.Objects,
  FMX.StdCtrls,
  FMX.Types,

  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Variants;

type
  TFrmPrincipal = class(TFrmBase)
    tbCtrlMain: TksTabControl;
    tbItemLogin: TksTabItem;
    tbItemMain: TksTabItem;
    mtvMenu: TMultiView;
    rctFundoMenu: TRectangle;
    imgMenu: TImageList;
    ListBox1: TListBox;
    rctSair: TRectangle;
    Glyph1: TGlyph;
    lblSair: TLabel;
    lbiPerfil: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    rctPerfil: TRectangle;
    Glyph2: TGlyph;
    lblNomePerfil: TLabel;
    Line1: TLine;
    Label1: TLabel;
    lytPerfil: TLayout;
    ListBoxItem1: TListBoxItem;
  private
    { Private declarations }
  public
    { Public declarations }
    FActiveForm : TForm;
    procedure AbrirForm(const AFormClass: TComponentClass);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

{ TFrmPrincipal }

procedure TFrmPrincipal.AbrirForm(const AFormClass: TComponentClass);
Var
  oLayoutBase : TComponent;
  oBotaoMenu  : TComponent;
  I           : Integer;
begin
  if (Assigned(FActiveForm)) then
  begin
    if (FActiveForm.ClassType = AFormClass) then
    begin
      mtvMenu.HideMaster;
      Exit;
    end
    else
    begin
      FActiveForm.DisposeOf;
      FactiveForm := nil;
    end;
  end;

  Application.CreateForm(AFormClass, FActiveForm);

  oLayoutBase := FActiveForm.FindComponent('rctClient');
  if (Assigned(oLayOutBase)) then
  begin
    rctCliente.AddObject(TRectangle(oLayOutBase));
    mtvMenu.HideMaster;
  end;
end;

end.
