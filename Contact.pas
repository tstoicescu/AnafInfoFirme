unit Contact;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, System.ImageList, FMX.ImgList,
  FMX.Edit, FMX.WebBrowser;

type
  TForm6 = class(TForm)
    Image2: TImage;
    ImageList1: TImageList;
    Button2: TButton;
    WebBrowser1: TWebBrowser;
    Edit1: TEdit;
    Button1: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.fmx}
{$R *.iPhone4in.fmx IOS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}
{$R *.iPad.fmx IOS}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses PrimaFereastra, ContactInformatii;

procedure TForm6.Button1Click(Sender: TObject);
begin
     WebBrowser1.Navigate(Edit1.Text);
end;


procedure TForm6.Button2Click(Sender: TObject);
begin
      Form2.Show;
      Form6.Hide;
end;


procedure TForm6.Button3Click(Sender: TObject);
begin
      Form7.Show;
      Form6.Hide;
end;


end.
