//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TButtonConnect *ButtonConnect;
//---------------------------------------------------------------------------
__fastcall TButtonConnect::TButtonConnect(TComponent* Owner)
	: TForm(Owner)
{
	AnsiString addr = (AnsiString)"fairygarden.no-ip.org";
	AnsiString port = (AnsiString)"3349";

	EditAddr->Text = (String)addr;
	EditPort->Text = (String)port;

	Output->Lines->Clear();
	Input->Lines->Clear();

	Output->Lines->Add((String)"Welcome to TFG TCP Client.");

}
//---------------------------------------------------------------------------
void __fastcall TButtonConnect::CheckConnectClick(TObject *Sender)
{
	if (CheckConnect->Checked) {
		IdTCPClient1->Host = (String)EditAddr->Text;
		IdTCPClient1->Port = 3349;
		Output->Lines->Add("Added connection info to Indy TCP object.");
		IdTCPClient1->Connect();
		Sleep(100);
		TimerRead->Enabled=true;
	} else {
		TimerRead->Enabled=false;
		IdTCPClient1->Disconnect(true);
		Output->Lines->Add("Closed Connection.");
	}
}
//---------------------------------------------------------------------------


void __fastcall TButtonConnect::TimerReadTimer(TObject *Sender)
{
	if (IdTCPClient1->IOHandler->Connected) {
		UnicodeString buffer;
		buffer = IdTCPClient1->IOHandler->ReadLn("\r\n");
		Output->Lines->Add(buffer);
		buffer = NULL;
	}

}
//---------------------------------------------------------------------------

