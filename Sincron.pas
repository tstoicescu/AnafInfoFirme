unit Sincron;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Memo.Types, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, FMX.Edit, FMX.StdCtrls, System.ImageList,
  FMX.ImgList, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo;

type
  TForm3 = class(TForm)
    Image2: TImage;
    MemoResponse: TMemo;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    ImageList1: TImageList;
    procedure NetHTTPRequest1RequestCompleted(const Sender: TObject;
      const AResponse: IHTTPResponse);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Surface.fmx MSWINDOWS}
{$R *.iPhone4in.fmx IOS}
{$R *.Windows.fmx MSWINDOWS}
{$R *.iPhone47in.fmx IOS}

uses PrimaFereastra;

procedure TForm3.Button1Click(Sender: TObject);
begin
         NetHTTPRequest1.MethodString := 'GET';
         NetHTTPRequest1.URL := Edit1.Text;

        // NetHTTPRequest1.URL := Edit1.Text;
        // NetHTTPRequest1.URL := Edit2.Text;
         NetHTTPRequest1.Execute();
end;



procedure TForm3.Button2Click(Sender: TObject);
begin
    Form2.Show;
    Form3.Hide;
end;

procedure TForm3.NetHTTPRequest1RequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
    MemoResponse.Text := AResponse.ContentAsString;
end;

end.
