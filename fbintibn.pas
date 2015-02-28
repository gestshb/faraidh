unit fbintibn;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { Tf3 }

  Tf3 = class(TForm)
    Button1: TButton;
    bintibn1: TCheckBox;
    bintibn2: TCheckBox;
    Label1: TLabel;
    nbintibn2: TSpinEdit;
    nbintibn1: TSpinEdit;
    procedure bintibn1Change(Sender: TObject);
    procedure bintibn2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  f3: Tf3;

implementation

{$R *.lfm}

{ Tf3 }



{ Tf3 }

procedure Tf3.Button1Click(Sender: TObject);
begin

  close;
end;

procedure Tf3.bintibn1Change(Sender: TObject);
begin
  nbintibn1.Visible:=true;
end;

procedure Tf3.bintibn2Change(Sender: TObject);
begin
  nbintibn2.Visible:=true;
end;

end.

