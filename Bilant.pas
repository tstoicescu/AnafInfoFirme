unit Bilant;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Memo.Types, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, FMX.ScrollBox, FMX.Memo,
  System.ImageList, FMX.ImgList, System.Math.Vectors, FMX.Controls3D,
  FMX.Layers3D, FMX.Objects, FMX.Layouts, FMX.ExtCtrls, IdBaseComponent,
  IdMailBox, FMX.Menus, ShellApi, FMX.Ani, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Edit3: TEdit;
    Label3: TLabel;
    ColorAnimation1: TColorAnimation;
    ListView1: TListView;
    ToolBar1: TToolBar;
    Button4: TButton;
    Button3: TButton;
    NetHTTPClient: TNetHTTPClient;
    NetHTTPRequest: TNetHTTPRequest;
    ImageList: TImageList;
    MemoResponse: TMemo;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure NetHTTPRequestRequestCompleted(const Sender: TObject;
      const AResponse: IHTTPResponse);

  private
    { Private declarations }
   procedure AddCategoria(an:string; cui:string; deni:string; caen:string; den_caen : string; i : string);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}
{$R *.XLgXhdpiTb.fmx ANDROID}

uses PrimaFereastra, DataModule;


procedure TForm1.Button2Click(Sender: TObject);
begin
    Form2.Show;
    Form1.Hide;

end;


//Butonul de Stergere
procedure TForm1.Button3Click(Sender: TObject);
begin

     Memo1.Lines.Clear;
     ListView1.Items.Clear;

end;


procedure TForm1.AddCategoria(an:string; cui:string; deni:string; caen:string; den_caen : string; i : string);

var
  txt : TListItemText;

begin
       with ListView1.Items.Add do
        TListItemText(Objects.FindDrawable('Text1')).Text := 'An: '+ an +#13#10+ 'Cui: ' + cui +' ' +#13#10+ 'Denumire: ' + deni + ' ' +#13#10+ 'Caen: '+ caen + ' ' + ' ' +#13#10+ 'Denumire caen: ' + den_caen +#13#10+ ' Indicator: ' + i;

end;

//Butonul pentru EMAIL
procedure TForm1.Button1Click(Sender: TObject);
begin

 // ShellExecute(0, 'OPEN', PWideChar('mailto:' + Edit3.Text + '?subject=Bilant&body=' + 'An: ' + dm.MemTable.FieldByName('an').AsString + ';' + ' ' + 'Cui: ' +  dm.MemTable.FieldByName('cui').AsString  + ';' + ' ' + 'Denumire: ' + dm.MemTable.FieldByName('deni').AsString  + ';' + ' ' + 'Caen: ' +  dm.MemTable.FieldByName('caen').AsString  + ';' + ' ' + 'Denumire caen: ' + dm.MemTable.FieldByName('den_caen').AsString  + ';' + ' ' + dm.MemTable.FieldByName('i').AsString), nil, nil, 0);
      ShellExecute(0, 'OPEN', PWideChar('mailto:' + Edit3.Text + '?subject=Bilant&body=' + MemoResponse.Text), nil, nil, 0);

end;



//Butonul de cautare in LISTA
procedure TForm1.Button4Click(Sender: TObject);
begin

      Memo1.Lines.Add('https://webservicesp.anaf.ro/bilant?an=' + Edit2.Text + '&cui=' + Edit1.Text);
      NetHTTPRequest.MethodString := 'GET';
      NetHTTPRequest.URL := Memo1.Text;
      NetHTTPRequest.Execute();

      dm.RESTClient1.BaseURL := 'https://webservicesp.anaf.ro/bilant?an=' + Edit2.Text + '&cui=' + Edit1.Text;
      dm.RESTRequest1.Execute;

      ShowMessage(dm.RESTResponse1.Content);

      ListView1.BeginUpdate;

      while NOT dm.MemTable.Eof do
      begin

          AddCategoria(dm.MemTable.FieldByName('an').AsString,
              dm.MemTable.FieldByName('cui').AsString,
              dm.MemTable.FieldByName('deni').AsString,
              dm.MemTable.FieldByName('caen').AsString,
              dm.MemTable.FieldByName('den_caen').AsString,
              dm.MemTable.FieldByName('i').AsString);


          dm.MemTable.Next;

      end;

      ListView1.EndUpdate;

end;


procedure TForm1.NetHTTPRequestRequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
     MemoResponse.Text := AResponse.ContentAsString;
end;


end.
