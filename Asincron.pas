unit Asincron;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Memo.Types, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Memo, System.ImageList,
  FMX.ImgList;

type
  TForm4 = class(TForm)
    Image2: TImage;
    MemoResponse: TMemo;
    NetHTTPRequest2: TNetHTTPRequest;
    NetHTTPClient2: TNetHTTPClient;
    Button2: TButton;
    ImageList1: TImageList;
    EditURL: TEdit;
    Button1: TButton;
    procedure NetHTTPRequest2RequestCompleted(const Sender: TObject;
      const AResponse: IHTTPResponse);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

uses PrimaFereastra;

procedure TForm4.Button1Click(Sender: TObject);
begin
     NetHTTPRequest2.MethodString := 'GET';
     NetHTTPRequest2.URL := EditURL.Text;
     NetHTTPRequest2.Execute();
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
      Form4.Hide;
      Form2.Show;
end;

procedure TForm4.NetHTTPRequest2RequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
        MemoResponse.Text := AResponse.ContentAsString;
end;

end.
