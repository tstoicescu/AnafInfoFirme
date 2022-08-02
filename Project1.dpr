program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  SplashScreen in 'SplashScreen.pas' {FSplash},
  PrimaFereastra in 'PrimaFereastra.pas' {Form2},
  Bilant in 'Bilant.pas' {Form1},
  Contact in 'Contact.pas' {Form6},
  Report in 'Report.pas' {Form5},
  ContactInformatii in 'ContactInformatii.pas' {Form7},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  FSplash := TFSplash.Create(nil);
  FSplash.Show;
  while FSplash.Timer1.Enabled do Application.ProcessMessages;

  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TForm7, Form7);
  FSplash.Hide;
  FSplash.Free;


  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(Tdm, dm);
  //Application.CreateForm(TFInformatii, FInformatii);
  Application.Run;
end.
