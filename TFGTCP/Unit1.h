//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Web.Win.Sockets.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <IdBaseComponent.hpp>
#include <IdComponent.hpp>
#include <IdTCPClient.hpp>
#include <IdTCPConnection.hpp>
//---------------------------------------------------------------------------
class TButtonConnect : public TForm
{
__published:	// IDE-managed Components
	TEdit *EditAddr;
	TEdit *EditPort;
	TLabel *LabelAddr;
	TLabel *LabelPort;
	TMemo *Output;
	TMemo *Input;
	TButton *ButtonSend;
	TTimer *TimerRead;
	TCheckBox *CheckConnect;
	TTcpClient *TcpClient1;
	TIdTCPClient *IdTCPClient1;
	void __fastcall CheckConnectClick(TObject *Sender);
	void __fastcall TimerReadTimer(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TButtonConnect(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TButtonConnect *ButtonConnect;
//---------------------------------------------------------------------------
#endif
