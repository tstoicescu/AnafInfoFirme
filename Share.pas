unit Share;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Actions,
  FMX.ActnList, FMX.Objects, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, FMX.StdCtrls, FMX.Edit,
  FMX.Controls.Presentation, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.WebBrowser, ShellApi;

type
  TForm7 = class(TForm)
    Image2: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.fmx}

procedure TForm7.Button1Click(Sender: TObject);
begin
       //Memo1.Lines.Add('mailto:' + Edit1.Text + '?subject:Message Subject&body=Message Content');
      // NetHTTPRequest1.MethodString := 'GET';
      // NetHTTPRequest1.URL := Memo1.Text;
     //  NetHTTPRequest1.Execute();

       ShellExecute(0, 'OPEN', PWideChar('mailto:' + Edit1.Text + '?subject:Message Subject&body=Message Content'), nil, nil, 0);
end;
end.
