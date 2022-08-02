unit Report;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Edit, ShellApi,
  System.ImageList, FMX.ImgList, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

type
  TForm5 = class(TForm)
    Image2: TImage;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    ImageList1: TImageList;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

uses PrimaFereastra;

procedure TForm5.Button1Click(Sender: TObject);
begin
    ShellExecute(0, 'OPEN', PWideChar('mailto:' + Edit1.Text + '?subject=' + Edit2.Text + '&body=' + Memo1.Text), nil, nil, 0);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
      Form2.Show;
      Form5.Hide;

end;

end.
