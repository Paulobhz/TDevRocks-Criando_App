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
    mtvMenu: TMultiView;
    rctFundoMenu: TRectangle;
    imgMenu: TImageList;
    lstboxMenu: TListBox;
    rctSair: TRectangle;
    glySair: TGlyph;
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
    tbCtrlMain: TksTabControl;
    tbItemLogin: TksTabItem;
    tbItemMain: TksTabItem;
    lytBase: TLayout;
    rctCliente: TRectangle;
    Button1: TButton;
    procedure ListBoxItem2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstboxMenuItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure Button1Click(Sender: TObject);
    procedure rctSairClick(Sender: TObject);
    procedure glySairTap(Sender: TObject; const Point: TPointF);
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

uses UntInfoUsuario, UntLib;

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
    mtvMenu.Visible := False;
  end;
end;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  inherited;
  mtvMenu.ShowMaster;
  mtvMenu.Visible := true;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  inherited;
  tbCtrlMain.TabPosition := TKsTabBarPosition.ksTbpNone;
  tbCtrlMain.ActiveTab   := tbItemLogin;
  mtvMenu.HideMaster;
  mtvMenu.Visible        := False;
end;

procedure TFrmPrincipal.glySairTap(Sender: TObject; const Point: TPointF);
begin
  inherited;
  rctSairClick(Sender);
end;

procedure TFrmPrincipal.ListBoxItem2Click(Sender: TObject);
begin
  inherited;
  AbrirForm(TFrmInfoUsuario);
  Tlibrary.MudarAba(tbCtrlMain,tbItemMain);
end;

procedure TFrmPrincipal.lstboxMenuItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
Var
  i : Integer;
begin
  inherited;
  for I := 0 to Pred(lstboxMenu.Items.Count) do
    begin
      lstboxMenu.ListItems[I].ImageIndex := 1;
    end;
  Item.ImageIndex := 0;
end;

procedure TFrmPrincipal.rctSairClick(Sender: TObject);
begin
  inherited;
  ShowMessage('Logoff Efeturato');
  mtvMenu.HideMaster;
  mtvMenu.Visible := False;
  TLibrary.MudarAba(tbCtrlMain,tbItemLogin);
end;

end.
