unit SplashScreen;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFSplash = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    Timer1: TTimer;
    ProgressBar1: TProgressBar;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

{$R *.fmx}

procedure TFSplash.Timer1Timer(Sender: TObject);
var i:Integer;
begin
      ProgressBar1.Value :=   ProgressBar1.Value + 2;
      if ProgressBar1.Value = 100 then
      Timer1.Enabled := false;


end;

end.
