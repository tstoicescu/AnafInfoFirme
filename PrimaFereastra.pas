unit PrimaFereastra;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Label2: TLabel;
    Button5: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses Bilant, Contact, Report, SplashScreen;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Hide;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   Form6.Show;
   Form2.Hide;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form5.Show;
  Form2.Hide;
end;
end.




