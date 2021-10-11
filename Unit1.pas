unit Unit1;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, StdCtrls ;
type
  TFormTri = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    ListBox1: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure TriNum;
    procedure TriAlpha;
    procedure TriMixte;
    procedure Button1Click(Sender: TObject);
    procedure Majuscule;
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  FormTri: TFormTri;
  X,Y : array[1..100]of real;
  Nbre,NbreChiffres:integer;

implementation

{$R *.DFM}

procedure TFormTri.Majuscule; //Permet le tri des majuscules et des miniscules
var i,j,u,v:integer;  Achar:array[0..200] of char ; b:String;
begin
  for i:=0 to Listbox1.Items.Count-1 do begin
     u:= Length(Listbox1.Items[i]) ;
      for j:=1 to u do
       b:= Listbox1.Items[i];
       for j:=1 to u do   Achar[j]:= upcase(b[j]);
       for v:=0 to u do   b[v] :=Achar[v];
       Listbox1.Items[i]:= b;
 end;
end;

procedure TFormTri.FormCreate(Sender: TObject);
var i,j:integer;
begin
 DecimalSeparator:='.';
 Listbox1.Clear; Memo1.Clear;
With Listbox1   do begin
for i:=1 to 25 do begin
   Items.Add(intToStr(i));
    X[i]:=random(12000)/random(1200);Items.Add(floatToStr(X[i]));
    Y[i]:=random(12000);Items.Add(floatToStr(Y[i]));
  end; 
    Items.Add('tanguy');
    Items.Add('TANGUY');
    Items.Add('RUELLE');
    Items.Add('ruelle');
    Items.Add('BENNE');
    Items.Add('PELLE');
    Items.Add('CASCADE');
    Items.Add('ABBATS');
    Items.Add('TESSON');
    Items.Add('EXTREME');
    Items.Add('BOUQUET');
    Items.Add('FRASQUE');
    Items.Add('CADUC');
    Items.Add('LUTTEURS');
    Items.Add('ROBIN');
    Items.Add('MIEL');
    Items.Add('ADROIT');
    Items.Add('adroit');
    Items.Add('BADEN');
    Items.Add('baden');
    Items.Add('aaba');
    Items.Add('abaa');
    Items.Add('baaaa');
    Items.Add('aaaaba');
 end;
 for j:=0 to ListBox1.Items.Count-1 do memo1.Lines.Add(ListBox1.Items[j]);
end;

procedure TFormTri.TriAlpha;
var i,j:integer; val:string;
begin
 With  ListBox1 do begin
  Nbre := Items.Count-1;
   if Nbre > 2 then begin
     for i:=0 to  Nbre do
      for j:=i+1 to  Nbre do
       if Items.Strings[i] > Items.Strings[j] then begin
            val:=Items[i];  Items[i]:=Items[j]; Items[j]:=val ;
       end;
   end;
 end;
end;

procedure TFormTri.TriNum;
var i,j:integer; val:string;
begin
 With  ListBox1 do begin
 Nbre := NbreChiffres-1;
   if Nbre > 1 then begin
     for i:=0 to  Nbre do
      for j:=i+1 to  Nbre do
       if StrToFloat(Items[i]) > StrToFloat(Items[j]) then begin
            val:=Items[i];  Items[i]:=Items[j]; Items[j]:=val ;
       end;
   end;
 end;
end;

procedure TFormTri.TriMixte;
var i:integer;
begin
Majuscule;
 Label1.Caption:='Avant de trier';
 Label2.Caption:='Tous les mots sont en Majuscule';
TriAlpha; // Ce tri met les chiffres en tête

// On recherche maintenant le nombre de chiffres
NbreChiffres:=0;
  for i:=0 to  Nbre do
   try
    StrToFloat(ListBox1.Items.Strings[i]);
     inc(NbreChiffres);
   Except
    break; //On arrête à la première erreur car les chiffres sont épuisés
   end;
 
  TriNum; //Tri numérique des chiffres repérés
 Label2.Caption:='Les mots et les chiffres sont triés';
end ;

procedure TFormTri.Button1Click(Sender: TObject);
 begin
 TriMixte;
 end;

procedure TFormTri.Button2Click(Sender: TObject);
begin
 ListBox1.Sorted:=true;
end;

end .
