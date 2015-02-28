program ALFARIDH;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, printer4lazarus, home, fibnibn, fbintibn, raport, first, about
  { you can add units after this };

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFm, Fm);
  Application.CreateForm(Tf1, f1);
  Application.CreateForm(Tf3, f3);
  Application.CreateForm(TFraport, Fraport);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.

