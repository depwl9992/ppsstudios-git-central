//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <VCLTee.Chart.hpp>
#include <VCLTee.Series.hpp>
#include <VCLTee.TeEngine.hpp>
#include <VCLTee.TeeProcs.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Buttons.hpp>
#undef DEBUG
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TChart *Chart1;
	TLineSeries *DV_Series;
	TLineSeries *DI_Series;
	TLineSeries *HV_Series;
	TLineSeries *HI_Series;
	TLineSeries *KV_Series;
	TLineSeries *KI_Series;
	TLineSeries *M1V_Series;
	TLineSeries *M1I_Series;
	TLineSeries *M2V_Series;
	TLineSeries *M2I_Series;
	TMemo *Memo1;
	TButton *Button1;
	TButton *Button2;
	TButton *Button3;
	TTimer *Timer1;
	TUpDown *UpDown1;
	TGroupBox *GroupBox1;
	TSpeedButton *DV_Toggle;
	TSpeedButton *DI_Toggle;
	TSpeedButton *HV_Toggle;
	TSpeedButton *HI_Toggle;
	TSpeedButton *KV_Toggle;
	TSpeedButton *KI_Toggle;
	TSpeedButton *M1V_Toggle;
	TSpeedButton *M1I_Toggle;
	TSpeedButton *M2V_Toggle;
	TSpeedButton *M2I_Toggle;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall ClearAll();
	void __fastcall ChartInit();
	void __fastcall ChartStep();
	void __fastcall ChartDraw();
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall UpDown1ChangingEx(TObject *Sender, bool &AllowChange, short NewValue,
          TUpDownDirection Direction);
	void __fastcall DV_ToggleClick(TObject *Sender);
	void __fastcall DI_ToggleClick(TObject *Sender);
	void __fastcall HV_ToggleClick(TObject *Sender);
	void __fastcall HI_ToggleClick(TObject *Sender);
	void __fastcall KV_ToggleClick(TObject *Sender);
	void __fastcall KI_ToggleClick(TObject *Sender);
	void __fastcall M1V_ToggleClick(TObject *Sender);
	void __fastcall M1I_ToggleClick(TObject *Sender);
	void __fastcall M2V_ToggleClick(TObject *Sender);
	void __fastcall M2I_ToggleClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
