{*******************************************}
{                                           }
{            FastReport v2.2                }
{                                           }
{ Editeur d'expression , Editeur param�tres }
{ (C) Guilbaud Olivier                      }
{        golivier@bigfoot.com               }
{                                           }
{ FastReport :(c) 1998-99 by Tzyganenko A.  }
{                                           }
{ Merci de transmettre vos commantaires &   }
{ modifications                             }
{Ceci est un FREEWARE il peut �tre utilis�  }
{librement.                                 }
{*******************************************}
{Histo :                                    }
{ 04/06/99 : Cr�ation                       }

unit edExpPar;

interface

{$I FR_Vers.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, FR_Const;

type
  TedParamFct = class(TForm)
    Panel1: TPanel;
    hlp1: TLabel;
    Panel2: TPanel;
    hlp2: TMemo;
    pnP1: TPanel;
    Label1: TLabel;
    edX: TEdit;
    Button1: TButton;
    pnP2: TPanel;
    Label2: TLabel;
    edY: TEdit;
    Button2: TButton;
    pnP3: TPanel;
    Label3: TLabel;
    edZ: TEdit;
    Button3: TButton;
    pnBut: TPanel;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Panel5: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edXChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
    NbParam: Integer;
    St: string;
    function ResultPar: string;
  end;

var
  edParamFct: TedParamFct;

implementation

{$R *.DFM}
uses edExpr;

function TedParamFct.ResultPar: string;
begin
  if pnP1.Visible then Result := edX.Text;
  if pnP2.Visible then Result := Result + ',' + edY.Text;
  if pnP3.Visible then Result := Result + ',' + edZ.Text;
end;

procedure TedParamFct.Button1Click(Sender: TObject);
var
  edexp: TExprEditor;
  edp: TEdit;
begin
  edP := nil;
  edexp := nil;
  if Sender is TButton then
    begin
      case TButton(Sender).Tag of
        1: edP := edX;
        2: edP := edY;
        3: edP := edZ;
      end;
    end;

  if EdP = nil then Exit;
  try
    edExp := TExprEditor.Create(Self);
    edExp.moExpres.Text := edP.Text;
    if edExp.ShowModal = mrOk then
      begin
        edP.Text := edExp.moExpres.Text;
        if assigned(edP.OnChange) then edP.OnChange(nil);
      end;

  finally
    edExp.free;
  end;
end;

procedure TedParamFct.FormActivate(Sender: TObject);
var
  H, I: Integer;
begin
  // affichage
  Panel2.Visible := (Hlp2.Text <> '');
  Panel5.Visible := Panel2.Visible;

  NbParam := 0;
  if Hlp1.Caption <> '' then
    begin
      //Compte le nombre de param�tres
      ST := Hlp1.Caption;
      while Pos('<', ST) <> 0 do
        begin
          inc(NbParam);
          System.Delete(ST, Pos('<', ST), 1);
        end;
    end;

  pnP1.Visible := (NbParam >= 1);
  pnP2.Visible := (NbParam >= 2);
  pnP3.Visible := (NbParam >= 3);

  // R�gle la hauteur
  H := 0;
  for i := 0 to ControlCount - 1 do
    if Controls[i].Visible then H := H + Controls[i].Height;

  Height := H + 22;
end;

procedure TedParamFct.edXChange(Sender: TObject);
var
  K: Integer;
begin
  K := 0;
  if edX.Text <> '' then Inc(K);
  if edY.Text <> '' then Inc(K);
  if edZ.Text <> '' then Inc(K);

  OkBtn.Enabled := (K = NbParam);
end;

procedure TedParamFct.FormCreate(Sender: TObject);
begin
  Caption := FRConst_PrmEditCaption;
  OKBtn.Caption := FRConst_OK;
  CancelBtn.Caption := FRConst_Cancel;
end;

end.

