program TRI1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormTri};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormTri, FormTri);
  Application.Run;
end.
