unit AreaCalculatorUnit;

interface

uses
  SysUtils, Classes, Controls, Forms, StdCtrls;

type
  TForm1 = class(TForm)
    ButtonRectangle: TButton;
    ButtonCircle: TButton;
    ButtonTriangle: TButton;
    EditValue1: TEdit;
    EditValue2: TEdit;
    LabelResult: TLabel;
    procedure CalculateArea(Sender: TObject);
  private
    function GetValue(Edit: TEdit): Double;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CalculateArea(Sender: TObject);
var
  Value1, Value2, Area: Double;
begin
  Value1 := GetValue(EditValue1);
  Value2 := GetValue(EditValue2);

  if Sender is TButton then
  begin
    case (Sender as TButton).Tag of
      1: Area := Value1 * Value2; // Прямокутник
      2: Area := Pi * Sqr(Value1); // Коло
      3: Area := 0.5 * Value1 * Value2; // Трикутник
    end;
    LabelResult.Caption := 'Площа: ' + FloatToStr(Area);
  end;
end;

function TForm1.GetValue(Edit: TEdit): Double;
begin
  if not TryStrToFloat(Edit.Text, Result) then
    Result := 0;
end;

end.
