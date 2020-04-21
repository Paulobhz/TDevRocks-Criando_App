unit UntLib;

interface

Uses
  KsTabControl;

type
  Tlibrary = class
  private
//    class var
  public
    class procedure MudarAba(const AKsTabCtrl: TksTabControl; const AksTabItem: TksTabItem);
  end;

implementation

{ Tlibrary }

class procedure Tlibrary.MudarAba(const AKsTabCtrl: TksTabControl;
  const AksTabItem: TksTabItem);
begin
  AksTabCtrl.FadeToTab(AksTabItem, 0.3);
end;

end.
