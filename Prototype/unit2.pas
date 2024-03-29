unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { Tingame }

  Tingame = class(TForm)
    background: TPanel;
    hpplayer1: TEdit;
    exitImage: TImage;
    manaplayer1: TEdit;
    hpplayer2: TEdit;
    manaplayer2: TEdit;
    player1Show: TPanel;
    player2Show: TPanel;
    procedure FormShow(Sender: TObject);
    procedure exitImageClick(Sender: TObject);
  private

  public

  end;

var
  ingame: Tingame;
  startingWidth, widthDifference, currentHeight, currentWidth: integer;

implementation

{$R *.lfm}

{ Tingame }



procedure Tingame.FormShow(Sender: TObject);
begin
    WindowState := wsFullScreen;
    currentHeight := Screen.Height;
    currentWidth := Screen.Width;
    startingWidth :=  1536; {Ich habe hier die Werte meiner Laptop Auflösung genommen. Es skaliert sich jetzt nur noch hoch}

    background.top:=Round(currentHeight*0.125);
    background.left:=Round(currentWidth*0.1);
    background.Height:=Round(currentHeight*0.75);
    background.width:=Round(currentWidth*0.8);

    player1Show.top:=Round(currentHeight*0.05);
    player1Show.left:=background.left;
    player1Show.height:=Round(currentHeight*0.075);
    player1Show.width:=background.width;

    player2Show.top:=Round(currentHeight*0.875);
    player2Show.left:=background.left;
    player2Show.height:=Round(currentHeight*0.075);
    player2Show.width:=background.width;

    hpplayer1.top:=player1Show.top;
    hpplayer1.left:=Round(currentWidth*0.7);
    manaplayer1.top:=hpplayer1.top;
    manaplayer1.left:=Round(currentWidth*0.8);

    widthdifference:=Round(startingWidth/background.width);
    hpplayer1.font.size := Round(hpplayer1.font.size*Widthdifference);
    manaplayer1.font.size := Round(hpplayer1.font.size*Widthdifference);

    hpplayer2.top:=player2Show.top;
    hpplayer2.left:=Round(currentWidth*0.7);
    manaplayer2.top:=hpplayer2.top;
    manaplayer2.left:=Round(currentWidth*0.8);

    hpplayer2.font.size := Round(hpplayer1.font.size*Widthdifference);
    manaplayer2.font.size := Round(hpplayer1.font.size*Widthdifference);
end;

procedure Tingame.exitImageClick(Sender: TObject);
begin
   close;
end;
end.

