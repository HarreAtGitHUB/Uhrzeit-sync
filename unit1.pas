unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, IdDayTimeUDP,
  IdDayTime, IdSNTP;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation
 uses sntpsend;
{$R *.lfm}

 { TForm1 }

 procedure TForm1.Button1Click(Sender: TObject);
 var
   NTP: TIdSNTP;
 begin
   NTP := TIdSNTP.Create(nil);
   try
     NTP.Host := 'de.pool.ntp.org';
     NTP.Active := True;
     Label1.Caption := DateTimeToStr(NTP.DateTime);
   finally
     NTP.Free;
end;


end.

