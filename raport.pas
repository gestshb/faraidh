unit raport;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Grids,
  Buttons, Menus, PrintersDlgs, LR_E_CSV, Printers, StdCtrls;

type

  { TFraport }

  TFraport = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    gr: TStringGrid;
    SD: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);



  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Fraport: TFraport;

implementation

{$R *.lfm}

{ TFraport }

procedure TFraport.FormCreate(Sender: TObject);

begin
  gr.Cells[0, 0] := 'الوريث';
  gr.cells[1, 0] := 'عدد الورثة من جنس واحد';
  gr.Cells[2, 0] := 'عدد أسهم كل وريث';
  gr.Cells[3, 0] := 'نصيب كل وريث من التركة';

end;




procedure TFraport.BitBtn1Click(Sender: TObject);

begin
  Close;

end;

procedure TFraport.Button1Click(Sender: TObject);
var
  F: textfile;
  line: string;
  i, j: integer;

begin
  if sd.Execute then
    AssignFile(f, sd.FileName);
  rewrite(f);
  for j := 0 to gr.RowCount - 1 do
  begin
    line := '*';
    for i := 0 to gr.ColCount - 1 do
    begin
      line := line + '  |  ' + gr.Cells[i, j];
    end;
    writeln(f, line);
  end;
  CloseFile(f);
end;



end.






