unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Button1: TButton;
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox2Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   cizim:boolean;
implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then Radiogroup1.Visible:=true else
Radiogroup1.Visible:=false;
end;

procedure TForm1.RadioGroup3Click(Sender: TObject);
begin
case RadioGroup3.ItemIndex of
  0:self.Canvas.Pen.Width:=2;
  1:self.Canvas.Pen.Width:=4;
  2:self.Canvas.Pen.Width:=8;
  3:self.Canvas.Pen.Width:=10;
  4:self.Canvas.Pen.Width:=20;
  5:self.Canvas.Pen.Width:=30;
  end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
cizim:=true ;
self.canvas.MoveTo(x,y);
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if cizim=true then
self.Canvas.LineTo(x,y);
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
cizim:=false;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked then Radiogroup2.Visible:=true else
Radiogroup2.Visible:=false;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
case RadioGroup2.ItemIndex of
0:self.canvas.pen.Color:=clblue;
1:self.canvas.pen.Color:=clred;
2:self.canvas.pen.Color:=clyellow;
3:self.canvas.pen.Color:=clblack;
4:self.canvas.pen.Color:=clgreen;
5:self.canvas.pen.Color:=clfuchsia;
end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
case RadioGroup1.ItemIndex of
0:self.canvas.pen.style:=psdot;
1:self.canvas.pen.style:=pssolid;
2:self.canvas.pen.style:=psdash;
3:self.canvas.pen.style:=psdashdot;
4:self.canvas.pen.style:=psdashdotdot;
5:self.canvas.pen.style:=psclear;
    end;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if checkbox3.Checked then Radiogroup3.Visible:=true else
Radiogroup3.Visible:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

Close();
end;

end.
