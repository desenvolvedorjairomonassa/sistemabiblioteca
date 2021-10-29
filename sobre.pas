unit sobre;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, HTTPApp,ShellAPI;

type
  TAboutBox = class(TForm)
    OKButton: TButton;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Image1: TImage;
    Copyright: TLabel;
    Shape1: TShape;
    Label1: TLabel;
    Bevel1: TBevel;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}



end.
 
