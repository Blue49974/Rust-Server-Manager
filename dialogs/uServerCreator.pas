unit uServerCreator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  uDataModule;

type
  Tfrmservercreator = class(TForm)
    btn1: TButton;
    btn2: TButton;
    pnl1: TPanel;
    lbl1: TLabel;
    edtserveridentity: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure edtserveridentityKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cancreate: Boolean;
  end;

var
  frmservercreator: Tfrmservercreator;

implementation

{$R *.dfm}

procedure Tfrmservercreator.btn1Click(Sender: TObject);
begin
  if edtserveridentity.Text = '' then
  begin
    cancreate := False;
    Close;
  end
  else
  begin
    cancreate := True;
    serveridentity := edtserveridentity.Text;
    Close;
  end;
end;

procedure Tfrmservercreator.btn2Click(Sender: TObject);
begin
  cancreate := False;
  Close;
end;

procedure Tfrmservercreator.edtserveridentityKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9', 'A'..'Z', 'a'..'z', #8] then

  else
    Key := #0;
end;

procedure Tfrmservercreator.FormShow(Sender: TObject);
begin
  edtserveridentity.SetFocus;
end;

end.

