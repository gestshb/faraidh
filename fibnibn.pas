unit fibnibn;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tf1 }

  Tf1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    ibnibn: TRadioButton;
    ibnibn2: TRadioButton;
    procedure Button1Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  f1: Tf1;


implementation

{$R *.lfm}

{ Tf1 }

procedure Tf1.Button1Click(Sender: TObject);
begin

  close;
end;



end.

