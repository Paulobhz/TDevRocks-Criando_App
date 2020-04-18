unit UntBase;

interface

uses
  FMX.Controls,
  FMX.Dialogs,
  FMX.Forms,
  FMX.Graphics,
  FMX.Types,

  System.Classes,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Variants;

type
  TFrmBase = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ComboBoxEnter(Sender: TObject);

  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.fmx}

procedure TFrmBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := TCloseAction.caFree;
end;

procedure TFrmBase.FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
    if (Key = vkReturn) then
    begin
      Key := vkTab;
      KeyDown(Key, KeyChar, Shift);
    end;
end;

procedure TFrmBase.ComboBoxEnter(Sender: TObject);
begin
  TComboBox(Sender).Dropdown;
end;

end.
