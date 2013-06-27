//---------------------------------------------------------------------------
#include <math.h>
#include <vcl.h>
#pragma hdrstop
#include "Unit1.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
const double pi = 3.14159;
double chartArray[512][2];
TForm1 *Form1;
bool initialized = false;

//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{

	#ifdef DEBUG
		Memo1->Visible = true;
	#else
		Memo1->Visible = false;
	#endif

}


void __fastcall TForm1::ChartInit() {
   for (int i=0; i < 512; i++) {
      //This is the ONLY place where array/chart elements are actually defined.
	  chartArray[i][0] = (50.0)*(sin(((double)i * pi)/256.0)+1.0);
	  chartArray[i][1] = i;

	  #ifdef DEBUG
		  Memo1->Lines->Add((String)i + ", " + chartArray[i][0]);
	  #endif
   }


   initialized=true;
   ChartDraw();
}

/*
Values are NOT recalculated, but rather shifted. If a live signal was being
fed in from somewhere, we would shift everything left, then replace the
last array element with the new external signal value (or first array element if
we were shifting to the right).
*/
void __fastcall TForm1::ChartStep() {

	double temp = chartArray[0][0];
	#ifdef DEBUG
		Memo1->Clear();
	#endif
	for (int i=0; i < 512; i++) {
		if (i == 511) {
			chartArray[i][0] = temp;
		} else {
			chartArray[i][0] = chartArray[i+1][0];
		}
		chartArray[i][1]++;
		#ifdef DEBUG
			Memo1->Lines->Add((String)i + ", " + chartArray[i][0]);
		#endif
	}


	ClearAll();
	ChartDraw();
}

void __fastcall TForm1::ChartDraw() {
	int small = 65535;
	int large = 0;
	for (int i = 0; i < 512; i++) {
		if (chartArray[i][1] < small) {
			small = chartArray[i][1];
		}

		if (chartArray[i][1] > large) {
			large = chartArray[i][1];
		}
		DV_Series->AddXY(chartArray[i][1], chartArray[(i*2)&0x1FF][0]);
		DI_Series->AddXY(chartArray[i][1], chartArray[((int)(i*1.5))&0x1FF][0]);
		HV_Series->AddXY(chartArray[i][1], chartArray[i][0]-0.2);
		HI_Series->AddXY(chartArray[i][1], chartArray[i][0]+0.2);
		KV_Series->AddXY(chartArray[i][1], chartArray[i][0]-0.4);
		KI_Series->AddXY(chartArray[i][1], chartArray[i][0]+0.4);
		M1V_Series->AddXY(chartArray[i][1], chartArray[i][0]-0.6);
		M1I_Series->AddXY(chartArray[i][1], chartArray[i][0]+0.6);
		M2V_Series->AddXY(chartArray[i][1], chartArray[i][0]-0.8);
		M2I_Series->AddXY(chartArray[i][1], chartArray[i][0]+0.8);
		Chart1->BottomAxis->Minimum = (double)small;
		Chart1->BottomAxis->Maximum = (double)large;
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
	ClearAll();
	#ifdef DEBUG
		Memo1->Clear();
	#endif
	Timer1->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ClearAll() {

	for (int i=0; i < 10; i++) {
		Chart1->Series[i]->Clear();
	}
}

void __fastcall TForm1::Button1Click(TObject *Sender)
{
	ClearAll();
	ChartInit();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
	Timer1->Enabled=false;
	if (!initialized) {
		ChartInit();
	}
	ChartStep();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
	if (!initialized) {
		ChartInit();
	}
	Timer1->Enabled = true;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
	ChartStep();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::UpDown1ChangingEx(TObject *Sender, bool &AllowChange, short NewValue,
          TUpDownDirection Direction)
{
	if (NewValue >= 1) {
		Timer1->Interval = NewValue;
	} else {
		Timer1->Interval = 1;
    }

	#ifdef DEBUG
		Memo1->Lines->Add((String)NewValue + ", " + Direction);
	#endif
}
//---------------------------------------------------------------------------


void __fastcall TForm1::DV_ToggleClick(TObject *Sender)
{


	DV_Series->Visible = DV_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DI_ToggleClick(TObject *Sender)
{


	DI_Series->Visible = DI_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::HV_ToggleClick(TObject *Sender)
{


	HV_Series->Visible = HV_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::HI_ToggleClick(TObject *Sender)
{


	HI_Series->Visible = HI_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::KV_ToggleClick(TObject *Sender)
{

	KV_Series->Visible = KV_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::KI_ToggleClick(TObject *Sender)
{


	KI_Series->Visible = KI_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::M1V_ToggleClick(TObject *Sender)
{

	M1V_Series->Visible = M1V_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::M1I_ToggleClick(TObject *Sender)
{


	M1I_Series->Visible = M1I_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::M2V_ToggleClick(TObject *Sender)
{


	M2V_Series->Visible = M2V_Toggle->Down;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::M2I_ToggleClick(TObject *Sender)
{


	M2I_Series->Visible = M2I_Toggle->Down;
}
//---------------------------------------------------------------------------

