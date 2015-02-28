unit home;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Spin, Buttons, Menus, fibnibn, fbintibn, raport,
  process, first,about;

type

  { TFm }

  TFm = class(TForm)
    ab: TRadioButton;
    ab2: TCheckBox;
    akh1: TRadioButton;
    akh2: TRadioButton;
    akh3: TCheckBox;
    am1: TRadioButton;
    am2: TRadioButton;
    bint: TCheckBox;
    bintibn: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckGroup1: TCheckGroup;
    ibn: TRadioButton;
    ibnakh1: TRadioButton;
    ibnakh2: TRadioButton;
    ibnam1: TRadioButton;
    ibnam2: TRadioButton;
    ibnibn: TRadioButton;
    jad: TRadioButton;
    jad2: TCheckBox;
    jada: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    nakh1: TSpinEdit;
    nakh2: TSpinEdit;
    nam1: TSpinEdit;
    nam2: TSpinEdit;
    Nibn: TSpinEdit;
    nibnakh1: TSpinEdit;
    nibnakh2: TSpinEdit;
    nibnam1: TSpinEdit;
    nibnam2: TSpinEdit;
    nibnibn: TSpinEdit;
    null1: TRadioButton;
    null2: TCheckBox;
    okht1: TCheckBox;
    okht2: TCheckBox;
    om: TCheckBox;
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    restart: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    nzawja: TSpinEdit;
    njada: TSpinEdit;
    rd1: TRadioButton;
    rd2: TRadioButton;
    rd3: TRadioButton;
    rd4: TRadioButton;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    nbint: TSpinEdit;
    nokht1: TSpinEdit;
    nokht2: TSpinEdit;
    nakh3: TSpinEdit;
    zawj: TCheckBox;
    zawja: TCheckBox;

    procedure abChange(Sender: TObject);
    procedure akh1Change(Sender: TObject);
    procedure akh2Change(Sender: TObject);

    procedure akh3Change(Sender: TObject);
    procedure am1Change(Sender: TObject);
    procedure am2Change(Sender: TObject);
    procedure bintChange(Sender: TObject);
    procedure ab2Change(Sender: TObject);
    procedure bintibnChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure jadaChange(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure restartClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibnakh1Change(Sender: TObject);
    procedure ibnakh2Change(Sender: TObject);
    procedure ibnam1Change(Sender: TObject);
    procedure ibnam2Change(Sender: TObject);
    procedure ibnChange(Sender: TObject);
    procedure ibnibnChange(Sender: TObject);
    procedure jad2Change(Sender: TObject);
    procedure jadChange(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure null2Change(Sender: TObject);
    procedure okht1Change(Sender: TObject);
    procedure okht2Change(Sender: TObject);
    procedure omChange(Sender: TObject);
    procedure rd1Change(Sender: TObject);
    procedure rd2Change(Sender: TObject);
    procedure rd3Change(Sender: TObject);
    procedure rd4Change(Sender: TObject);
    procedure zawjaChange(Sender: TObject);
    procedure zawjChange(Sender: TObject);
    procedure calcule;


  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Fm: TFm;
  v1asl:integer;
    v2asl:integer;
  v1asab:integer;
  v1bint,v1bintibn,v1ab2,v1jad,v1om,v1jada,v1okht1,v1okht2,v1zawj,v1zawja,v1akh3,v1baki,v1bintibn2:integer;
  v2bint:integer=1;
  v2bintibn:integer=1;
  v2ab2:integer=1;
  v2om:integer=1;
  v2jada:integer=1;
  v2okht1:integer=1;
  v2okht2:integer=1;
  v2zawj:integer=1;
  v2zawja:integer=1;
  v2akh3:integer=1;
  v2jad:integer=1;
  v2bintibn2:integer=1;
  vibn,vibnibn,vab,vjad,vakh1,vakh2,vibnakh1,vibnakh2,vam1,vibnam1,vam2,vibnam2:integer;
  //تركة
  tr:real;



implementation

{$R *.lfm}

{ TFm }


{ TFm }



{ TFm }
procedure ikhtezal(q:byte);  //الاختزال
var t:Boolean=true;
  begin
   while t do
   begin
if (v2asl mod q =0) and (v1bint mod q =0) and (v1bintibn mod q =0) and (v1ab2 mod q =0) and (v1jad mod q =0) and (v1om mod q =0) and (v1jada mod q =0) and (v1okht1 mod q =0) and (v1okht2 mod q =0) and (v1zawj mod q =0) and (v1zawja mod q =0) and (v1akh3 mod q =0) and (v1bintibn2 mod q = 0) and (vibn mod q =0) and (vibnibn mod q =0) and (vakh1 mod q =0) and (vakh2 mod q =0)  and (vam1 mod q =0)  and (vibnam1 mod q =0)  and (vam2 mod q =0)  and (vibnam2 mod q =0) and (vab mod q =0) and (vjad mod q =0) and (vibnakh1 mod q =0)and (vibnakh2 mod q =0) then
    begin
    v2asl:=v2asl div q ; v1bint :=v1bint div q  ; v1bintibn:= v1bintibn div q  ; v1ab2:= v1ab2 div q  ; v1jad:=  v1jad div q  ; v1om := v1om div q  ; v1jada :=v1jada div q  ; v1okht1 :=v1okht1 div q  ; v1okht2:= v1okht2 div q  ; v1zawj :=v1zawj div q  ; v1zawja:= v1zawja div q  ; v1akh3 :=v1akh3 div q ;v1bintibn2:=v1bintibn2 div q; vibn:=vibn div q ;vibnibn:=vibnibn div q;vakh1:=vakh1 div q;vakh2:=vakh2 div q; vam1:=vam1 div q;vibnam1:=vibnam1 div q;vam2:=vam2 div q;vibnam2:=vibnam2 div q ;vab:=vab div q;vjad:=vjad div q;vibnakh1:=vibnakh1 div q;vibnakh2:=vibnakh2 div q;
    end
else t:=false;
  end;
   end;


procedure asabah(var nx:integer;var y:integer);     //إجراء ابن الاخ ومن بعده
  begin
      if v1asab mod nx = 0 then  y:=  v1asab div nx
                      else
                      begin
                        v2asl:=v2asl*nx;
                        v1asab:=v1asab*nx;
                        v1bint:=v1bint*nx;
                        v1bintibn:=v1bintibn*nx;
                        v1bintibn2:=v1bintibn2*nx;
                        v1om:=v1om*nx;
                        v1jada:=v1jada*nx;
                        v1okht1:=v1okht1*nx;
                        v1okht2:=v1okht2*nx;
                        v1akh3:=v1akh3*nx;
                        v1zawj:=v1zawj*nx;
                        v1zawja:=v1zawja*nx;
                        y:=  v1asab div nx;
                      end
  end;
procedure tawhid(nv:integer;var v:integer);   //إجراء توحيد المقامات الأكبر والأخير
begin
  if v mod nv = 0 then v:=v div nv
  else
     begin
      v2asl:=v2asl*nv;
      v1bint:=v1bint*nv;
      v1bintibn:=v1bintibn*nv;
      v1ab2:=v1ab2*nv;
      v1jad:=v1jad*nv;
      v1om:=v1om*nv;
      v1jada:=v1jada*nv;
      v1okht1:=v1okht1*nv;
      v1okht2:=v1okht2*nv;
      v1zawj:=v1zawj*nv;
      v1zawja:=v1zawja*nv;
      v1akh3:=v1akh3*nv;
      v1bintibn2:=v1bintibn2*nv;
      vibn:=vibn *nv ;vibnibn:=vibnibn *nv;vakh1:=vakh1 *nv;vakh2:=vakh2 *nv; vam1:=vam1 *nv;vibnam1:=vibnam1*nv;vam2:=vam2*nv;vibnam2:=vibnam2*nv;vab:=vab*nv;vjad:=vjad*nv;
      v:=v div nv;
     end;
end;


procedure TFm.bintChange(Sender: TObject); //البنت
begin
  nbint.Visible:=true;
end;

procedure TFm.akh3Change(Sender: TObject);       //الإخوة لأم
begin
  nakh3.Visible:=true;
end;

procedure TFm.am1Change(Sender: TObject);
begin
  nam1.Visible:=true;
end;

procedure TFm.am2Change(Sender: TObject);
begin
  nam2.Visible:=true;
end;

procedure TFm.abChange(Sender: TObject);   //الأب
begin
 jad2.Enabled:=false;
 jad2.Checked:=false;
 okht1.Checked:=false;
  okht1.Enabled:=false;
  okht2.Checked:=false;
  okht2.Enabled:=false;
  akh3.Checked:=false;
  akh3.Enabled:=false;
  ab2.Checked:=true;
end;

procedure TFm.akh1Change(Sender: TObject);
begin
  nakh1.Visible:=true;
 okht2.Checked:=false;
  okht2.Enabled:=false;
end;

procedure TFm.akh2Change(Sender: TObject);
begin
  nakh2.Visible:=true;
end;



procedure TFm.ab2Change(Sender: TObject);  //فرض الأب
begin
  jad.Checked:=false;
  jad.Enabled:=false;
  jad2.Checked:=false;
  jad2.Enabled:=false;
  okht1.Checked:=false;
  okht1.Enabled:=false;
  okht2.Checked:=false;
  okht2.Enabled:=false;
  akh3.Checked:=false;
  akh3.Enabled:=false;
  if not ibn.Checked and not ibnibn.Checked and ab2.Checked then ab.Checked:=true;
end;

procedure TFm.bintibnChange(Sender: TObject);
begin
  if bintibn.Checked then
     begin
     f3.Show;
     end;
end;

procedure TFm.BitBtn1Click(Sender: TObject); //التقريــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــــر
          var i:byte=1;
            ToTab:integer;
          procedure RPT(v,nv:integer;w:string);
            begin
            if v > 0 then begin i:=i+1;fraport.gr.RowCount:=i ; fraport.gr.Cells[0,i-1]:=w ;Fraport.gr.Cells[1,i-1]:=inttostr(nv);fraport.gr.Cells[2,i-1]:=inttostr(v2asl)+'\'+inttostr(v);fraport.gr.Cells[3,i-1]:=floattostr(round(tr*v/v2asl));end;
            end;

begin
  calcule;
  try tr:=strtoint(edit1.text)-strtoint(edit2.text);  except on e:exception do showmessage('لا ينبغي أن يكون المدخل حرفا أو رقما ذا فاصلة عشرية'); end;
   rpt(vibn,nibn.value,'الابن');
   rpt(v1bint,nbint.Value,'البنت');
        TOTab:=v1ab2+vab;
   rpt(TOTab,1,'الأب');
        TOTab:=v1jad+vjad;
   rpt(TOTab,1,'الجد');
   rpt(v1om,1,'الأم');
   rpt(v1jada,njada.Value,'الجدة');
   if f1.ibnibn.Checked then rpt(vibnibn,nibnibn.Value,'ابن الابن');
   if f1.ibnibn2.Checked then rpt(vibnibn,nibnibn.Value,'ابن ابن الابن');
   rpt(v1bintibn,f3.nbintibn1.Value,'بنت الابن');
   rpt(v1bintibn2,f3.nbintibn2.Value,'بنت ابن الابن');
   rpt(vakh1,nakh1.Value,'الأخ الشقيق');
   rpt(v1okht1,nokht1.Value,'الأخت الشقيقة');
   rpt(vakh2,nakh2.Value,'الأخ لأب');
   rpt(v1okht2,nokht2.Value,'الأخت لأب');
   rpt(v1zawj,1,'الزوج');
   rpt(v1zawja,nzawja.Value,'الزوجة');
   rpt(v1akh3,nakh3.Value,'الأخ لأم أو الأخت');
   rpt(vibnakh1,nibnakh1.Value,'ابن الأخ الشقيق');
   rpt(vibnakh2,nibnakh2.Value,'ابن الأخ لأب');
   rpt(vam1,nam1.Value,'العم الشقيق وإلا فالعم لأب');
   rpt(vibnam1,nibnam1.Value,'ابن العم الشقيق وإلا فابن العم لأب');
   rpt(vam2,nam2.Value,'عم الأب الشقيق وإلا فعم الأب لأب');
   rpt(vibnam2,nibnam2.Value,'ابن عم الأب الشقيق وإلا فابن عم الأب لأب');
fraport.ShowModal;
end;

procedure TFm.jadaChange(Sender: TObject);
begin
  njada.Visible:=true;
end;

procedure TFm.MenuItem2Click(Sender: TObject);
begin
  form4.ShowModal;
end;

procedure TFm.restartClick(Sender: TObject);
Var Processus : TProcess;
Begin
Processus := TProcess.Create(Nil);

Processus.CommandLine := 'faraidh';


Processus.Execute;

Application.Terminate;


end;

procedure TFm.Button1Click(Sender: TObject);
begin
  form1.ShowModal;
end;

procedure TFm.FormCreate(Sender: TObject);
begin

end;

procedure TFm.ibnakh1Change(Sender: TObject);
begin
  nibnakh1.Visible:=true;
end;

procedure TFm.ibnakh2Change(Sender: TObject);
begin
  nibnakh2.Visible:=true;
end;

procedure TFm.ibnam1Change(Sender: TObject);
begin
  nibnam1.Visible:=true;
end;

procedure TFm.ibnam2Change(Sender: TObject);
begin
  nibnam2.Visible:=true;
end;

procedure TFm.ibnChange(Sender: TObject);   //الابن
begin
  if ibn.Checked then
  begin
  nibn.Visible:=true;
  okht1.Checked:=false;
  okht1.Enabled:=false;
  okht2.Checked:=false;
  okht2.Enabled:=false;
  akh3.Checked:=false;
  akh3.Enabled:=false;
  end;
end;

procedure TFm.ibnibnChange(Sender: TObject);  //ابن الابن
begin
  if ibnibn.Checked then
  begin
  f1.ShowModal;
  nibnibn.Visible:=true;
  okht1.Checked:=false;
  okht1.Enabled:=false;
  okht2.Checked:=false;
  okht2.Enabled:=false;
  akh3.Checked:=false;
  akh3.Enabled:=false;
  end;
end;

procedure TFm.jad2Change(Sender: TObject);     //الجد
begin
  if (not ab.Checked) and not ab2.Checked then
     if (ibn.Checked) or (ibnibn.Checked) or (bint.Checked) or (bintibn.Checked) then begin v1jad:=1;v2jad:=6; end;
 okht1.Checked:=false;
  okht1.Enabled:=false;
  okht2.Checked:=false;
  okht2.Enabled:=false;
  akh3.Checked:=false;
  akh3.Enabled:=false;
  if not ibn.Checked and not ibnibn.Checked and not ab2.Checked and not ab.Checked and jad2.Checked then jad.Checked:=true;
end;

procedure TFm.jadChange(Sender: TObject);
begin
okht1.Checked:=false;
  okht1.Enabled:=false;
  okht2.Checked:=false;
  okht2.Enabled:=false;
  akh3.Checked:=false;
  akh3.Enabled:=false;
  jad2.Checked:=true;
end;

procedure TFm.MenuItem4Click(Sender: TObject);
begin

end;

procedure TFm.MenuItem5Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFm.null2Change(Sender: TObject);    //ما من أحد حي
begin
  bint.Checked:=false;
  bintibn.Checked:=false;
  ab2.Checked:=false;
  jad2.Checked:=false;
  om.Checked :=false;
  jada.Checked:=false;
  okht1.Checked:=false;
  okht2.Checked:=false;
  zawj.Checked:=false;
  zawja.Checked:=false;
  akh3.Checked:=false;
  if null2.Checked and null1.Checked then showmessage('في حال لم يكن للميت وارث من المذكورين  تقسم تركته على أولى الأرحام على ما هو مفصل في الكتابين')
end;

procedure TFm.okht1Change(Sender: TObject);    //الأخت الشقيقة
begin
  nokht1.Visible:=true;
end;

procedure TFm.okht2Change(Sender: TObject);  //الأخت لأب
begin
 nokht2.Visible:=true;
end;

procedure TFm.omChange(Sender: TObject);  //الأم
begin
  jada.Checked:=false;
  jada.Enabled:=false;

end;

procedure TFm.rd1Change(Sender: TObject);
begin
  if rd1.Checked then begin label2.Enabled:=true;edit1.Enabled:=true; end;
end;

procedure TFm.rd2Change(Sender: TObject);
begin
  if rd2.Checked then begin label2.Enabled:=false;edit1.Enabled:=false; end;
end;

procedure TFm.rd3Change(Sender: TObject);
begin
  if rd3.Checked then begin label4.Enabled:=true;edit2.Enabled:=true; end;
end;

procedure TFm.rd4Change(Sender: TObject);
begin
  if rd4.Checked then begin label4.Enabled:=false;edit2.Enabled:=false; end;
end;

procedure TFm.zawjaChange(Sender: TObject);  //الزوجة أو الزوجات
begin
zawj.Enabled:=false;
zawj.Checked:=false;
nzawja.Visible:=true;
end;

procedure TFm.zawjChange(Sender: TObject);  //الزوج
begin
zawja.Enabled:=false;
zawja.Checked:=false;
end;
procedure TFm.calcule; //حساب التركة
var a,b,c,d,e:byte;
  i,sum:integer;
  test:Boolean=false;
  tset:Boolean=false;
  procedure rad(var rd:integer);     //إجراء الرد
                   begin
                   rd:=rd*sum+rd*v1asab;
                   end;
begin
//اختيار البنت
if bint.Checked then
   if not ibn.Checked then
     if nbint.Value > 1 then begin v1bint:=2; v2bint:=3; end
     else  begin v1bint:=1; v2bint:=2; end;
//اختيار بنت الابن
if f3.bintibn1.Checked then
    if not ibn.Checked and not ibnibn.Checked then
       if not bint.Checked then
         begin
           if f3.nbintibn1.Value = 1 then begin v1bintibn:=1;v2bintibn:=2; end
           else  begin v1bintibn:=2;v2bintibn:=3;  end;
         end
       else
         if (nbint.Value=1) then begin v1bintibn:=1;v2bintibn:=6;end;
//اختيار بنت ابن الابن
if f3.bintibn2.Checked then
   if not ibn.Checked and not ibnibn.Checked then
       if not bint.Checked and not f3.bintibn1.Checked then
         begin
           if f3.nbintibn2.Value=1 then begin v1bintibn2:=1; v2bintibn2:=2;end
           else begin v1bintibn2:=2; v2bintibn2:=3;end;
         end
       else
         if (v1bint=1) xor (v1bintibn=1) then begin v1bintibn2:=1; v2bintibn2:=6;end;

//اختيار الأب فرضا
if ab2.Checked then
    if (ibn.Checked) or (ibnibn.Checked) or (bint.Checked) or (bintibn.Checked) then begin v1ab2:=1;v2ab2:=6; end;
//اختيار الجد فرضا
if jad2.Checked then
    if (not ab.Checked) and not ab2.Checked then
     if (ibn.Checked) or (ibnibn.Checked) or (bint.Checked) or (bintibn.Checked) then begin v1jad:=1;v2jad:=6; end;
//اختيار الأم
if om.Checked then
     begin
     if akh1.Checked then a:=1 else a:=0;
     if akh2.Checked then b:=1 else b:=0;
     if okht1.Checked then c:=1 else c:=0;
     if okht2.Checked then d:=1 else d:=0;
     if akh3.Checked then e:=1 else e:=0;
     if (a+b+c+d+e) > 1 then begin v1om:=1;v2om:=6;end
      else
       if (nakh3.Value >1) or (nokht1.Value >1) or (nokht2.Value >1) or (nakh1.Value > 1) or (nakh2.Value > 1) or (ibn.Checked) or (ibnibn.Checked) or (bint.Checked) or (bintibn.Checked) then begin v1om:=1;v2om:=6; end
         else
         begin
          v1om:=1;v2om:=3;
          if ab.Checked and ab2.Checked  then
             if zawj.Checked or  (ibn.Checked) or (ibnibn.Checked) or (bint.Checked) or (bintibn.Checked) then begin v1om:=1;v2om:=6 ;  end //المسألة العمرية
               else
                 if zawja.Checked then begin v1om:=1;v2om:=4;   end
                 else
                    if not zawj.Checked then
                       begin v1om:=1;v2om:=3;  end
         end;
         end;
//اختيار الجدة
if jada.Checked then
   if not om.Checked then v1jada:=1;v2jada:=6;
//اختيار الأخت الشقيقة
if okht1.Checked then
   if not akh1.Checked and not ibn.Checked and not ibnibn.Checked and not ab.Checked and not ab2.Checked and not jad.Checked and not jad2.Checked then
    if not bint.Checked and not bintibn.Checked then
       begin
         if nokht1.Value > 1 then begin v1okht1:=2;v2okht1:=3; end
         else  begin v1okht1:=1;v2okht1:=2; end
       end
    else   begin v1okht1:=v1asab end;   //عصبة مع الغير
//اختيار الأخت لأب
if okht2.Checked then
   if not akh1.Checked and not akh2.Checked and not ibn.Checked and not ibnibn.Checked and not ab.Checked and not ab2.Checked and not jad.Checked and not jad2.Checked then
    if not okht1.Checked then
     begin
      if not bint.Checked and not bintibn.Checked then
         begin
           if nokht2.Value > 1 then begin v1okht2:=2;v2okht2:=3; end
           else  begin v1okht2:=1;v2okht2:=2; end
         end
      else   begin v1okht2:=v1asab; end   //عصبة مع الغير
     end
       else
         if v1okht1=1 then begin v1okht2:=1;v2okht2:=6 end; //السدس تكملة الثلثين
//اختيار الزوج
if zawj.Checked then
   if ibn.Checked or ibnibn.Checked or bint.Checked or bintibn.Checked then begin v1zawj:=1;v2zawj:=4 end
   else begin v1zawj:=1;v2zawj:=2 end;
//اختيار الزوجة
if zawja.Checked then
    if ibn.Checked or ibnibn.Checked or bint.Checked or bintibn.Checked then begin v1zawja:=1;v2zawja:=8 end
     else begin v1zawja:=1;v2zawja:=4 end;
//اختيار الإخوة لأم
if akh3.Checked then
    if not ibn.Checked and not ibnibn.Checked and not ab.Checked and not ab2.Checked and not jad.Checked and not bint.Checked and not bintibn.Checked then
        if nakh3.Value > 1 then begin v1akh3:=1;v2akh3:=3; end
        else begin v1akh3:=1;v2akh3:=6; end;
//التأصيل والتصحيح
    v2asl:=v2bint*v2bintibn*v2ab2*v2jad*v2om*v2jada*v2okht1*v2okht2*v2zawj*v2zawja*v2akh3*v2bintibn2;
    v1bint:=v1bint*v2asl div v2bint;
    v1bintibn:=v1bintibn*v2asl div v2bintibn;
    v1ab2:=v1ab2*v2asl div v2ab2;
    v1jad:=v1jad*v2asl div v2jad;
    v1om:=v1om*v2asl div v2om;
    v1jada:=v1jada*v2asl div v2jada;
    v1okht1:=v1okht1*v2asl div v2okht1;
    v1okht2:=v1okht2*v2asl div v2okht2;
    v1zawj:=v1zawj*v2asl div v2zawj;
    v1zawja:=v1zawja*v2asl div v2zawja;
    v1akh3:=v1akh3*v2asl div v2akh3;
    v1bintibn2:=v1bintibn2*v2asl div v2bintibn2;

    //مجموع الاسهم
v1asl:=v1bint+v1bintibn+v1ab2+v1jad+v1om+v1jada+v1okht1+v1okht2+v1zawj+v1zawja+v1akh3+v1bintibn2;


    //نصيب العصبات
v1asab:=v2asl-v1asl;
if v1asab > 0 then
   begin
          if ibn.Checked then   //عصبة الابن
              if bint.Checked then
                  begin
                      if v1asab mod (2*nibn.Value + nbint.Value) = 0 then begin vibn:= (v1asab div (2*nibn.Value + nbint.Value))*2;v1bint:= v1asab div (2*nibn.Value + nbint.Value); end
                      else   //تصحيح المسألة
                      begin
                       v2asl:=v2asl* (2*nibn.Value + nbint.Value);
                       v1asab:=v1asab*(2*nibn.Value + nbint.Value);
                       v1ab2:=v1ab2*(2*nibn.Value + nbint.Value);
                       v1jad:=v1jad*(2*nibn.Value + nbint.Value);
                       v1om:=v1om*(2*nibn.Value + nbint.Value);
                       v1jada:=v1jada*(2*nibn.Value + nbint.Value);
                       v1zawj:=v1zawj*(2*nibn.Value + nbint.Value);
                       v1zawja:=v1zawja*(2*nibn.Value + nbint.Value);
                       vibn:=(v1asab div (2*nibn.Value + nbint.Value))*2;
                       v1bint:=v1asab div (2*nibn.Value + nbint.Value);
                     end
                  end
              else
                if v1asab mod nibn.Value= 0 then vibn:= v1asab div nibn.Value
                else
                   begin
                       v2asl:=v2asl* nibn.Value;
                       v1asab:=v1asab*nibn.Value;
                       v1ab2:=v1ab2*nibn.Value;
                       v1jad:=v1jad*nibn.Value;
                       v1om:=v1om* nibn.Value;
                       v1jada:=v1jada*nibn.Value;
                       v1zawj:=v1zawj*nibn.Value;
                       v1zawja:=v1zawja*nibn.Value;
                       vibn:=v1asab div nibn.Value;
                   end;


          if ibnibn.Checked then //عصبة ابن الابن
                  if f1.ibnibn.Checked then
                      if f3.bintibn1.Checked then
                          begin
                            if v1asab mod (2*nibnibn.Value+f3.nbintibn1.Value)=0 then begin vibnibn:=(v1asab div (2*nibnibn.Value+f3.nbintibn1.Value))*2;v1bintibn2:=v1asab div (2*nibnibn.Value+f3.nbintibn1.Value);end
                            else
                               begin
                                 test:=true;
                                 v2asl:=v2asl* (2*nibnibn.Value+f3.nbintibn1.Value);
                                 v1asab:=v1asab* (2*nibnibn.Value+f3.nbintibn1.Value);
                                 v1ab2:=v1ab2* (2*nibnibn.Value+f3.nbintibn1.Value) ;
                                 v1jad:=v1jad* (2*nibnibn.Value+f3.nbintibn1.Value) ;
                                 v1om:=v1om*(2*nibnibn.Value+f3.nbintibn1.Value) ;
                                 v1jada:=v1jada* (2*nibnibn.Value+f3.nbintibn1.Value) ;
                                 v1zawj:=v1zawj* (2*nibnibn.Value+f3.nbintibn1.Value);
                                 v1zawja:=v1zawja*(2*nibnibn.Value+f3.nbintibn1.Value) ;
                                 vibnibn:=2*v1asab div (2*nibnibn.Value+f3.nbintibn1.Value);
                                 v1bintibn:=v1asab div (2*nibnibn.Value+f3.nbintibn1.Value);
                               end
                           end
                      else
                          if v1asab mod nibnibn.Value=0 then begin vibnibn:=v1asab div nibnibn.Value  ;end
                          else
                            begin
                                v2asl:=v2asl* nibnibn.Value;
                                v1asab:=v1asab*nibnibn.Value;
                                v1ab2:=v1ab2*nibnibn.Value;
                                v1jad:=v1jad*nibnibn.Value;
                                v1om:=v1om* nibnibn.Value;
                                v1jada:=v1jada*nibnibn.Value;
                                v1zawj:=v1zawj*nibnibn.Value;
                                v1zawja:=v1zawja*nibnibn.Value;
                                vibnibn:=v1asab div nibnibn.Value;
                           end ;


          if ibnibn.Checked then
              if f1.ibnibn2.Checked then
                  if f3.bintibn1.Checked and (v1bintibn=0) then
                    begin
                      if  f3.bintibn2.Checked then
                          begin
                            if v1asab mod (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value)=0 then begin vibnibn:=v1asab*2 div (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);v1bintibn:=v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);v1bintibn2:= v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value); end
                            else
                               begin
                                test:=true;
                                 v2asl:=v2asl*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1asab:=v1asab*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1ab2:=v1ab2*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1jad:=v1jad*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1om:=v1om*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1jada:=v1jada*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1zawj:=v1zawj*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1zawja:=v1zawja*(nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 vibnibn:=2*v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1bintibn:=v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                                 v1bintibn2:=v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value +f3.nbintibn2.Value);
                               end
                           end
                      else
                          begin
                            if v1asab mod (nibnibn.Value*2 + f3.nbintibn1.Value )=0 then begin vibnibn:=v1asab*2 div (nibnibn.Value*2 + f3.nbintibn1.Value);v1bintibn:=v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value);end
                            else
                               begin
                                 test:=true;
                                 v2asl:=v2asl*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1asab:=v1asab*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1ab2:=v1ab2*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1jad:=v1jad*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1om:=v1om*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1jada:=v1jada*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1zawj:=v1zawj*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1zawja:=v1zawja*(nibnibn.Value*2 + f3.nbintibn1.Value);
                                 vibnibn:=2*v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value);
                                 v1bintibn:=v1asab div (nibnibn.Value*2 + f3.nbintibn1.Value);

                               end
                           end
                    end
                  else
                      if f3.bintibn2.Checked then
                          begin
                            if v1asab mod (nibnibn.Value*2 +f3.nbintibn2.Value)=0 then begin vibnibn:=v1asab*2 div (nibnibn.Value*2 + f3.nbintibn2.Value);v1bintibn2:= v1asab div (nibnibn.Value*2 +f3.nbintibn2.Value); end
                            else
                               begin
                                 v2asl:=v2asl*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1asab:=v1asab*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1ab2:=v1ab2*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1jad:=v1jad*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1om:=v1om*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1jada:=v1jada*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1zawj:=v1zawj*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1zawja:=v1zawja*(nibnibn.Value*2 +f3.nbintibn2.Value);
                                 vibnibn:=2*v1asab div (nibnibn.Value*2 +f3.nbintibn2.Value);
                                 v1bintibn2:=v1asab div (nibnibn.Value*2 +f3.nbintibn2.Value);
                               end
                          end
                       else
                          if v1asab mod nibnibn.Value = 0 then vibnibn:= v1asab div vibnibn
                          else
                            begin
                                 v2asl:=v2asl*nibnibn.Value;
                                 v1asab:=v1asab*nibnibn.Value;
                                 v1ab2:=v1ab2*nibnibn.Value;
                                 v1jad:=v1jad*nibnibn.Value;
                                 v1om:=v1om*nibnibn.Value;
                                 v1jada:=v1jada*nibnibn.Value;
                                 v1zawj:=v1zawj*nibnibn.Value;
                                 v1zawja:=v1zawja*nibnibn.Value;
                                 vibnibn:=v1asab div nibnibn.Value;
                            end;
          if ab.Checked then   //تعصيب الأب
              vab:=v1asab;

          if jad.Checked then //تعصيب الجد
              vjad:=v1asab;
          if akh1.Checked then  //تعصيب الأخ الشقيق
              if okht1.Checked then
                  begin
                    if v1asab mod (2*nakh1.Value+nokht1.Value) = 0 then begin vakh1:=  2*v1asab div (2*nakh1.Value+nokht1.Value) ;v1okht1:=v1asab div (2*nakh1.Value+nokht1.Value);end
                    else
                    begin
                      v2asl:=v2asl*(2*nakh1.Value+nokht1.Value);
                      v1asab:=v1asab*(2*nakh1.Value+nokht1.Value);
                      v1bint:=v1bint*(2*nakh1.Value+nokht1.Value);
                      v1bintibn:=v1bintibn*(2*nakh1.Value+nokht1.Value);
                      v1bintibn2:=v1bintibn2*(2*nakh1.Value+nokht1.Value);
                      v1om:=v1om*(2*nakh1.Value+nokht1.Value);
                      v1jada:=v1jada*(2*nakh1.Value+nokht1.Value);
                      v1akh3:=v1akh3*(2*nakh1.Value+nokht1.Value);
                      v1zawj:=v1zawj*(2*nakh1.Value+nokht1.Value);
                      v1zawja:=v1zawja*(2*nakh1.Value+nokht1.Value);
                      vakh1:=2*v1asab div (2*nakh1.Value+nokht1.Value);
                      v1okht1:=v1asab div (2*nakh1.Value+nokht1.Value);
                    end
                  end
              else
                  begin
                    if v1asab mod (nakh1.Value) = 0 then  vakh1:=  v1asab div nakh1.Value
                    else
                    begin
                      v2asl:=v2asl*nakh1.Value;
                      v1asab:=v1asab*nakh1.Value;
                      v1bint:=v1bint*nakh1.Value;
                      v1bintibn:=v1bintibn*nakh1.Value;
                      v1bintibn2:=v1bintibn2*nakh1.Value;
                      v1om:=v1om*nakh1.Value;
                      v1jada:=v1jada*nakh1.Value;
                      v1akh3:=v1akh3*nakh1.Value;
                      v1zawj:=v1zawj*nakh1.Value;
                      v1zawja:=v1zawja*nakh1.Value;
                      vakh1:=  v1asab div nakh1.Value;
                    end
                  end;

          if akh2.Checked then  //تعصيب الأخ لأب
              if okht2.Checked then
                  begin
                    if v1asab mod (2*nakh2.Value+nokht2.Value) = 0 then begin vakh2:=  2*v1asab div (2*nakh2.Value+nokht2.Value) ;v1okht2:=v1asab div (2*nakh2.Value+nokht2.Value);end
                    else
                    begin
                      v2asl:=v2asl*(2*nakh2.Value+nokht2.Value);
                      v1asab:=v1asab*(2*nakh2.Value+nokht2.Value);
                      v1bint:=v1bint*(2*nakh2.Value+nokht2.Value);
                      v1bintibn:=v1bintibn*(2*nakh2.Value+nokht2.Value);
                      v1bintibn2:=v1bintibn2*(2*nakh2.Value+nokht2.Value);
                      v1om:=v1om*(2*nakh2.Value+nokht2.Value);
                      v1jada:=v1jada*(2*nakh2.Value+nokht2.Value);
                      v1akh3:=v1akh3*(2*nakh2.Value+nokht2.Value);
                      v1zawj:=v1zawj*(2*nakh2.Value+nokht2.Value);
                      v1zawja:=v1zawja*(2*nakh2.Value+nokht2.Value);
                      vakh2:=2*v1asab div (2*nakh2.Value+nokht2.Value);
                      v1okht2:=v1asab div (2*nakh2.Value+nokht2.Value);
                    end
                  end
              else
                  begin
                    if v1asab mod (nakh2.Value) = 0 then  vakh2:=  v1asab div nakh2.Value
                    else
                    begin
                      v2asl:=v2asl*nakh2.Value;
                      v1asab:=v1asab*nakh2.Value;
                      v1bint:=v1bint*nakh2.Value;
                      v1bintibn:=v1bintibn*nakh2.Value;
                      v1bintibn2:=v1bintibn2*nakh2.Value;
                      v1om:=v1om*nakh2.Value;
                      v1jada:=v1jada*nakh2.Value;
                      v1akh3:=v1akh3*nakh2.Value;
                      v1zawj:=v1zawj*nakh2.Value;
                      v1zawja:=v1zawja*nakh2.Value;
                      vakh1:=  v1asab div nakh2.Value;
                    end
                  end;

          i:=nibnakh1.Value;
          if ibnakh1.Checked then  asabah(i,vibnakh1);  //ابن الأخ الشقيق ومن بعدع تعصيبا
          i:=nibnakh2.Value;
          if ibnakh2.Checked then  asabah(i,vibnakh2);
          i:=nam1.Value;
          if am1.Checked then asabah(i,vam1);
          i:=nibnam1.Value;
          if ibnam1.Checked then asabah(i,vibnam1);
          i:=nam2.Value;
          if am2.Checked then asabah(i,vam2);
          i:=nibnam2.Value;
          if ibnam2.Checked then asabah(i,vibnam2);
 end;   //نهاية تقسيم العصبات
          //مسألة الرد
          if null1.Checked then
          begin
             if okht1.Checked or okht2.Checked then
              begin
               if okht1.Checked and not ab2.Checked and not jad2.Checked then
                  begin
                  if bint.Checked or bintibn.Checked then
                     begin v1okht1:=v1asab;tset:=true; end;   //عصبة مع الغير
                  end
               else
                if okht2.Checked and not ab2.Checked and not jad2.Checked then
                  if bint.Checked or bintibn.Checked then
                      begin v1okht2:=v1asab;tset:=true; end   //عصبة مع الغير
              end;
             if tset=false then
                if not zawj.Checked and not zawja.Checked then
                  begin if v1asl > 0 then v2asl:=v1asl end
                else
                  begin
                   sum:=v1asl-v1zawj-v1zawja;
                   if sum > 0 then
                     begin
                       v2asl:=v2asl*sum;
                       rad(v1bint);
                       rad(v1bintibn);
                       rad(v1ab2);
                       rad(v1jad);
                       rad(v1om);
                       rad(v1jada);
                       rad(v1okht1);
                       rad(v1okht2);
                       rad(v1akh3);
                       rad(v1bintibn2);
                       v1zawj:=v1zawj*sum;
                       v1zawja:=v1zawja*sum;
                     end;
                  end;
           end;  //end of el radd
       if v1asl > v2asl then v2asl:=v1asl; //العول

//توحيد المقامات

     if not ibn.Checked then begin i:=nbint.Value;tawhid(i,v1bint);end;
    if test = false then begin i:=f3.nbintibn1.Value;tawhid(i,v1bintibn);end;
    if not f1.ibnibn2.Checked then begin i:=f3.nbintibn2.Value;tawhid(i,v1bintibn2);end;
     i:=njada.Value;tawhid(i,v1jada);
     if not akh1.Checked then begin i:=nokht1.Value;tawhid(i,v1okht1);end;
     if not akh2.Checked then begin i:=nokht2.Value;tawhid(i,v1okht2);end;
     i:=nzawja.Value;tawhid(i,v1zawja);
     i:=nakh3.Value;tawhid(i,v1akh3);

//الاختزال
ikhtezal(2);
ikhtezal(3);
ikhtezal(5);
ikhtezal(7);
ikhtezal(11);
ikhtezal(13);
ikhtezal(17);


end;     //end of prucedure


end.

