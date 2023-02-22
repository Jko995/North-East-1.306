
#property version    "1.306"
#property strict
#property description  "Advisor trade the average price return on non-trending pairs correlated with each other.\nUse ECN accounts with a minimum spread and commissions.\nWhen EA trades, many small transactions are simultaneously opened on the account.\nThis allows you to diversify trading entrances and exits from the market."

enum TypeOfSets      {Multi_Sets_123_sbig_15adv = 7,Multi_Sets_123_small_3adv = 6,Multi_Sets_123_big_9adv = 5,Multi_Set_3_3advisors = 4,Multi_Set_2_3advisors = 3,Multi_Set_1_3advisors = 2,Custom = 1  };
enum NY_Weekends      {days_0 = 2,days_7 = 1,days_14 = 0  };
enum FirstPositiontype      {NotOpen = 4,Short = 3,Long = 2,Long_and_Short = 1  };
enum TypeBFLC      {balance = 1,equity = 0  };
enum typeord      {all = -1,sell_stop = 5,buy_stop = 4,sell_limit = 3,buy_limit = 2,sell = 1,buy = 0  };


//---------------------
struct _sets
  {
   string            st_1;
   int               in_2;
   double            do_3;
   double            do_4;
   double            do_5;
   double            do_6;
   double            do_7;
   double            do_8;
   void              _sets_8();
   void              _sets_9();
   void              _sets_10();
   void              _sets_11();
  };

extern string _base_="=========Basic settings========="  ;
extern string MultiCurrency=""  ;   //OneChartSetup multi currency mode.
extern string comment="new"  ;   //Prefix for comment
extern  FirstPositiontype  FirstPositionp=1  ;    //First Position
extern bool fastClose=false ;    //Emergency closing at breakeven
extern int   nmbrThisServer=1  ;    //For magic: 0 to 99
extern  NY_Weekends  holidays=0  ;    //Duration of the weekend after the New Year
extern bool useVirtualTP=false ;    //Using a virtual take-profit?
extern string _mm_="=========Money Management Settings========="  ;
extern int   MaxOtherMagics=0  ;    //Number of magics no more:
extern int   MaxOtherSymbols=0  ;    //Number of symbols no more:
extern  TypeBFLC  BaseForLotCalc=0  ;    //For autolot use
extern double virtBalance = 0; // Additional funds in account currency
extern double fix_balance=0  ;    //Or use fix balance in account currency
extern double USD_for_001=0  ;    //AutoMM. Aggressive=1000, Conservative=5000.
extern double Lots=0.01  ;    //Fix lot if AutoMM=0
extern string _aver_="=========Averaging Settings========="  ;
extern bool UseUnloss=true  ;    //Recovery Mode
extern double LotsMartinp=2.5  ;    //Martin ratio
extern string _grid_="=========Grid Level Settings========="  ;
extern int   FirstNumberp=3  ;    //First real deal from this level n>=0
string    global_1_st = "1.306";
_sets     global_2_a_160_ko[];
int       global_3_in = 7;
string    global_4_st = "";
int       global_5_in = 15;
bool      global_6_bo = true;
int       global_7_in = 0;
int       global_8_in = 1;
int       global_9_in = -858993459;
int       global_10_in = 1072745676;
int       global_11_in = 1717986918;
short     global_12_sh = 1072719462;
string    global_13_st = "=========Execution Settings=========";
int       global_14_in = 0;
int       global_15_in = 0;
bool      global_16_bo = true;
double    global_17_do = 0.0;
int       global_18_in = 0;
int       global_19_in = 400;
int       global_20_in = 800;
double    global_21_do = 1.4;
int       global_22_in = 14;
double    global_23_do = 0.0143;
bool      global_24_bo = true;
int       global_25_in = 0;
int       global_26_in = 0;
int       global_27_in = 0;
double    global_28_do = 0.7;
double    global_29_do = 0.9;
int       global_30_in = 70;
double    global_31_do = 1.5;
double    global_32_do = 0.9;
double    global_33_do = 0.0;
double    global_34_do = 0.0;
double    global_35_do = 1.0;
double    global_36_do = 1.0;
double    global_37_do = 100.0;
string    global_38_st = "Настройки ограничения лота";
bool      global_39_bo = true;
double    global_40_do = 100.0;
bool      global_41_bo = true;
double    global_42_do = 0.0;
int       global_43_in = 70;
int       global_44_in = 50;
int       global_45_in = 6;
string    global_46_st = "=========Tester Settings=========";
bool      global_47_bo = false;
bool      global_48_bo = false;
bool      global_49_bo = false;
string    global_50_st = "";
int       global_51_in = 0;
int       global_52_in = 0;
double    global_53_do = 0.0;
int       global_54_in = 0;
double    global_55_do = 0.0;
double    global_56_do = 0.0;
double    global_57_do = 0.0;
double    global_58_do = 0.0;
int       global_59_in = 0;
int       global_60_in = 0;
int       global_61_in = 0;
int       global_62_in = 0;
int       global_63_in = 0;
int       global_64_in = 0;
int       global_65_in = 0;
int       global_66_in = 0;
int       global_67_in = 0;
int       global_68_in = 0;
double    global_69_do = 0.0;
int       global_70_in = 0;
int       global_71_in = 0;
double    global_72_in = 0;
int       global_73_in = 0;
int       global_74_in = 0;
int       global_75_in = 0;
int       global_76_in = 0;
bool      global_77_bo = false;
int       global_78_in_si100si15[100][15];
int       global_79_in = 0;
int       global_80_in = 0;
int       global_81_in = 0;
int       global_82_in = 0;
int       global_83_in = 0;
int       global_84_in = 0;
double    global_85_do_si7si10000[7][10000];
string    global_86_st_si40000[40000]= {};
int       global_87_in_si40000[40000];
int       global_88_in = 0;
int       global_89_in = 0;
int       global_90_in = 0;
double    global_91_do = 0.0;
double    global_92_do = 0.0;
string    global_93_st;
int       global_94_in = 0;
int r1;
int       global_95_in = 0;
int       global_96_in = 0;
int       global_97_in = 0;
int       global_98_in = 1;
string    global_99_st_si1[1]= {};
double    global_100_do_si1[1];
bool      global_101_bo = true;
int       global_102_in = 0;
int       global_103_in = 0;
bool      global_104_bo = false;
bool      global_105_bo = false;
int       global_106_in = 0;
int       global_107_in = 0;
int       global_108_in = 0;
int       global_109_in = 0;
string    global_110_st;
string    global_111_st;
string    global_112_st = "";
string    global_113_st = "";
int       global_114_in = 2263842;
int       global_115_in = 0;
int       global_116_in = 0;
string    global_117_st = "no_drawdown";
int       global_118_in = 0;
int       global_119_in = 0;
string    global_120_st = "";
bool      global_121_bo = false;
double    global_122_do_si6si5si2[6][5][2];
bool      global_123_bo = true;
string    global_124_st_ko[];
double    global_125_do = 0.0;
double    global_126_do = 0.0;
double    global_127_do = 0.0;
double    global_128_do = 0.0;
double    global_129_do = 0.0;
double    global_130_do = 0.0;
double    global_131_do_ko[];


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnInit()
  {

   global_102_in=TerminalInfoInteger(27) * 100 / 96;
   EventSetTimer(1);
   rrr();
   if(Period() != 15)
     {
      Print("The adviser works only on the M15 period. Change the timeframe to M15");
      Alert("The adviser works only on the M15 period. Change the timeframe to M15 and restart advosor.");
      global_101_bo = false ;
     }
   else
     {
      global_101_bo = true ;
     }
   ArrayResize(global_100_do_si1,1,0);
   ArrayResize(global_99_st_si1,1,0);

   if(abc(MultiCurrency) != "" && !(IsTesting()))
     {
      xx(",",MultiCurrency,global_99_st_si1);
      xx1(global_99_st_si1,global_100_do_si1);
     }
   else
     {
      global_99_st_si1[0] = Symbol();
      global_100_do_si1[0] = global_36_do;
     }
   global_98_in = ArraySize(global_99_st_si1) ;
   if(IsTesting())
     {
      global_50_st = Symbol() ;
     }

   _sets     local_2_a_160= {"Set1-159",159,1.4,0.4,1,50,1.5,0};
   _sets     local_3_a_160= {"Set1-318",318,1.4,0.4,1,50,1.5,0};
   _sets     local_4_a_160= {"Set1-635",635,1.4,0.4,1,50,1.5,0};
   _sets     local_5_a_160= {"Set1-225",225,1.4,0.4,1,50,1.5,0};
   _sets     local_6_a_160= {"Set1-450",450,1.4,0.4,1,50,1.5,0};
   _sets     local_7_a_160= {"Set2-200",200,1.35,0.7,0.9,70,1.5,0};
   _sets     local_8_a_160= {"Set2-400",400,1.4,0.7,0.9,70,1.5,0};
   _sets     local_9_a_160= {"Set2-800",800,1.4,0.65,0.85,30,1.5,0};
   _sets     local_10_a_160= {"Set2-283",283,1.4,0.7,0.9,70,1.5,0};
   _sets     local_11_a_160= {"Set2-566",566,1.4,0.7,0.9,70,1.5,0};
   _sets     local_12_a_160= {"Set3-252",252,1.4,0.9,0.8,60,1.5,0};
   _sets     local_13_a_160= {"Set3-504",504,1.4,0.9,0.8,60,1.5,0};
   _sets     local_14_a_160= {"Set3-1008",1008,1.4,0.85,0.75,20,1.5,0};
   _sets     local_15_a_160= {"Set3-356",356,1.4,0.9,0.8,60,1.5,0};
   _sets     local_16_a_160= {"Set3-713",713,1.4,0.85,0.75,20,1.5,0};
   _sets     local_17_a_160_ko[];

   if(global_3_in == 1 && abc(global_4_st) == "")
     {
      global_8_in = 1 ;
     }
   else
     {
      if(global_3_in == 1 && abc(global_4_st) != "")
        {
         fun_23(global_4_st,local_17_a_160_ko);
         global_8_in = ArraySize(local_17_a_160_ko) ;
         xx3(global_2_a_160_ko,local_17_a_160_ko);

        }
      else
        {
         if(global_3_in == 2)
           {
            ArrayResize(global_2_a_160_ko,3,0);
            global_8_in = 3 ;
            yy(global_2_a_160_ko[0],local_2_a_160);
            yy(global_2_a_160_ko[1],local_3_a_160);
            yy(global_2_a_160_ko[2],local_4_a_160);


           }
         else
           {
            if(global_3_in == 3)
              {
               ArrayResize(global_2_a_160_ko,3,0);
               global_8_in = 3 ;
               yy(global_2_a_160_ko[0],local_7_a_160);
               yy(global_2_a_160_ko[1],local_8_a_160);
               yy(global_2_a_160_ko[2],local_9_a_160);
              }
            else
              {
               if(global_3_in == 4)
                 {
                  ArrayResize(global_2_a_160_ko,3,0);
                  global_8_in = 3 ;
                  yy(global_2_a_160_ko[0],local_12_a_160);
                  yy(global_2_a_160_ko[1],local_13_a_160);
                  yy(global_2_a_160_ko[2],local_14_a_160);


                 }
               else
                 {
                  if(global_3_in == 5)
                    {
                     ArrayResize(global_2_a_160_ko,9,0);
                     global_8_in = 9 ;
                     yy(global_2_a_160_ko[0],local_2_a_160);
                     yy(global_2_a_160_ko[1],local_3_a_160);
                     yy(global_2_a_160_ko[2],local_4_a_160);
                     yy(global_2_a_160_ko[3],local_7_a_160);
                     yy(global_2_a_160_ko[4],local_8_a_160);
                     yy(global_2_a_160_ko[5],local_9_a_160);
                     yy(global_2_a_160_ko[6],local_12_a_160);
                     yy(global_2_a_160_ko[7],local_13_a_160);
                     yy(global_2_a_160_ko[8],local_14_a_160);

                    }
                  else
                    {
                     if(global_3_in == 6)
                       {
                        ArrayResize(global_2_a_160_ko,3,0);
                        global_8_in = 3 ;
                        yy(global_2_a_160_ko[0],local_3_a_160);
                        yy(global_2_a_160_ko[1],local_8_a_160);
                        yy(global_2_a_160_ko[2],local_13_a_160);

                       }
                     else
                       {
                        if(global_3_in == 7)
                          {
                           ArrayResize(global_2_a_160_ko,15,0);
                           global_8_in = 15 ;
                           yy(global_2_a_160_ko[0],local_2_a_160);
                           yy(global_2_a_160_ko[1],local_3_a_160);
                           yy(global_2_a_160_ko[2],local_4_a_160);
                           yy(global_2_a_160_ko[3],local_5_a_160);
                           yy(global_2_a_160_ko[4],local_6_a_160);
                           yy(global_2_a_160_ko[5],local_7_a_160);
                           yy(global_2_a_160_ko[6],local_8_a_160);
                           yy(global_2_a_160_ko[7],local_9_a_160);
                           yy(global_2_a_160_ko[8],local_10_a_160);
                           yy(global_2_a_160_ko[9],local_11_a_160);
                           yy(global_2_a_160_ko[10],local_12_a_160);
                           yy(global_2_a_160_ko[11],local_13_a_160);
                           yy(global_2_a_160_ko[12],local_14_a_160);
                           yy(global_2_a_160_ko[13],local_15_a_160);
                           yy(global_2_a_160_ko[14],local_16_a_160);

                          }
                       }
                    }
                 }
              }
           }
        }
     }
   global_34_do= (USD_for_001==0.0)?0.0:1000.0 / USD_for_001 / global_8_in;
   if(!(UseUnloss))
     {
      global_43_in = 7 ;
      global_44_in = 5 ;
     }
   if(global_6_bo && (!(IsTesting()) || IsVisualMode()))
     {
      fun_26();
     }
   fun_24();
   HideTestIndicators(true);
   for(int local_18_in = 0 ; local_18_in < global_98_in ; local_18_in ++)
     {
      global_50_st = global_99_st_si1[local_18_in] ;
      for(int local_19_in = 1 ; local_19_in <= global_8_in ; local_19_in ++)
        {
         global_93_st = IntegerToString(local_19_in,2,48) ;

         global_26_in = StringToInteger(zs1(global_50_st) + global_93_st) ;
         global_25_in =StringToInteger(zs2(global_93_st)) ;
         GlobalVariableSet(string(IsTesting()) + "Magic" + global_50_st + string(global_26_in),global_25_in);
         global_85_do_si7si10000[3][0] = AccountEquity();
        }
     }
   return(0);
  }
//OnInit <<==--------   --------
void OnTick()
  {

   if(!(global_101_bo) && !(IsTesting()))
     {
      Print("The adviser adapted only on the M15 period. Change the timeframe to M15");
     }
   for(int local_1_in = 0 ; local_1_in < global_98_in ; local_1_in ++)
     {

      global_50_st = funs1(global_99_st_si1[local_1_in]) ;

      if(global_50_st == "")
         continue;
      global_36_do = global_100_do_si1[local_1_in] ;
      if(MarketInfo(global_50_st,9)==0.0)
         continue;
      int local_2_in = 1;
      if(global_8_in < 1)
         continue;
      for(; local_2_in <= global_8_in ; local_2_in ++)
        {
         if(useVirtualTP)
           {
            if(funs2(global_50_st,-1,-1,0,""))
              {
               fun_29(local_2_in);
               fun_30();
              }
           }
         if(fastClose)
           {
            if(funs2(global_50_st,-1,-1,0,""))
              {
               fun_29(local_2_in);
               if(funs3(global_50_st,-1,global_25_in)>0.0)
                 {
                  fun_17(global_50_st,-1,global_25_in);
                 }
              }
           }
         if(global_78_in_si100si15[local_2_in][local_1_in] == iTime(global_50_st,0,0))
            continue;
         fun_29(local_2_in);
         if(local_2_in == 1 && (global_47_bo || global_49_bo))
           {
            if(TimeDay(iTime(global_50_st,0,0)) != TimeDay(iTime(global_50_st,0,1)) && IsTesting())
              {
               global_85_do_si7si10000[0][global_89_in] = iTime(global_50_st,0,0);
               global_85_do_si7si10000[1][global_89_in] = AccountBalance();
               global_85_do_si7si10000[2][global_89_in] = AccountEquity();
               global_85_do_si7si10000[3][global_89_in + 1] = AccountEquity();
               global_85_do_si7si10000[5][global_89_in] = AccountMargin() * (AccountLeverage() / 100);
               global_85_do_si7si10000[6][global_89_in + 1] = AccountMargin() * (AccountLeverage() / 100);
               global_89_in ++;
              }
            if(AccountEquity()<global_85_do_si7si10000[3][global_89_in])
              {
               global_85_do_si7si10000[3][global_89_in] = AccountEquity();
              }
            if(AccountMargin() * (AccountLeverage() / 100)>global_85_do_si7si10000[6][global_89_in])
              {
               global_85_do_si7si10000[6][global_89_in] = AccountMargin() * (AccountLeverage() / 100);
              }
           }
         if(funs9(0) && MathMax(iHigh(global_50_st,0,1),global_127_do)>=GlobalVariableGet(string(IsTesting()) + global_50_st + string(global_26_in) + "tp"))
           {
            GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),0.0);
            GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
            ObjectDelete(0,global_25_in);
           }
         if(funs9(1) && MathMin(iLow(global_50_st,0,1) + global_126_do - global_127_do,global_126_do)<=GlobalVariableGet(string(IsTesting()) + global_50_st + string(global_26_in) + "tp"))
           {
            GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),0.0);
            GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
            ObjectDelete(0,global_25_in);
           }
         if(global_55_do==0.0)
            continue;

         if(global_41_bo && global_123_bo)
           {
            fun_19();
           }
         global_71_in = fun_12() ;
         int   local_3_in = 0 ;
         double   local_5_in = 0 ;
         double   local_7_in = 0 ;
         if(funs2(global_50_st,-1,global_25_in,0,""))
            continue;
         if(funs10() || !(global_123_bo))
            continue;
         if(funs5() != "")
            continue;
         global_77_bo = false ;
         int    local_8_in = 0 ;
         if(global_71_in == 1)
           {
            int   local_9_in = 0 ;
            if(FirstNumberp >  global_14_in)
              {
               GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),1.0);
               local_9_in = 1 ;
               local_8_in = -1 ;
               Print(global_50_st + " " + string(global_25_in) + " The opened grid level is less than the minimum level. The deal is virtualized");
              }
            else
              {
               if(fun_16(1.0,true)<0.01)
                 {
                  GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),1.0);
                  local_9_in = 1 ;
                  local_8_in = -1 ;
                  Print(global_50_st + " " + string(global_25_in) + " Current lot <0.01. The deal is virtualized");
                 }
               else
                 {
                  if(MaxOtherMagics >  0)
                    {
                     if(funs6int(global_25_in,"") >= MaxOtherMagics)
                       {
                        GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),1.0);
                        local_9_in = 1 ;
                        local_8_in = -1 ;
                        Print(global_50_st + " " + string(global_25_in) + " GetOtherMagicsCount >= MaxOtherMagics. The deal is virtualized");
                       }
                    }
                  else
                    {
                     if(MaxOtherSymbols >  0)
                       {
                        if(funs6str(global_50_st) >= MaxOtherSymbols)
                          {
                           GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),1.0);
                           local_9_in = 1 ;
                           local_8_in = -1 ;
                           Print(global_50_st + " " + string(global_25_in) + " GetOtherSymbolsCountt >= MaxOtherSymbols. The deal is virtualized");
                          }
                       }
                     else
                       {
                        local_8_in = fun_15(global_50_st,0,fun_16(1.0,true),0,0,global_25_in,"C0",0.0) ;
                        if(local_8_in >  0)
                          {
                           local_9_in = 1 ;
                          }
                       }
                    }
                 }
              }
            if(local_9_in == 1)
              {
               fun80(local_8_in);
               global_70_in = (global_55_do - global_56_do) / global_128_do ;
               global_69_do = MathMin(iClose(global_50_st,0,1),global_127_do) + global_126_do - global_127_do - global_70_in * global_128_do ;
               GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
               GlobalVariableSet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in),global_69_do);
               funs7();
              }
           }
         if(global_71_in != 2)
            continue;

         if(FirstNumberp >  global_14_in)
           {
            GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),1.0);
            local_3_in = 1 ;
            local_8_in = -1 ;
            Print(global_50_st + " " + string(global_25_in) + " The opened grid level is less than the minimum level. The deal is virtualized");
           }
         else
           {
            if(fun_16(1.0,true)<0.01)
              {
               GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),1.0);
               local_3_in = 1 ;
               local_8_in = -1 ;
               Print(global_50_st + " " + string(global_25_in) + " Current lot <0.01. The deal is virtualized");
              }
            else
              {
               if(MaxOtherMagics >  0)
                 {
                  if(funs6int(global_25_in,"") >= MaxOtherMagics)
                    {
                     GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),1.0);
                     local_3_in = 1 ;
                     local_8_in = -1 ;
                     Print(global_50_st + " " + string(global_25_in) + " GetOtherMagicsCount >= MaxOtherMagics. The deal is virtualized");
                    }
                 }
               else
                 {
                  if(MaxOtherSymbols >  0)
                    {
                     if(funs6str(global_50_st) >= MaxOtherSymbols)
                       {
                        GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),1.0);
                        local_3_in = 1 ;
                        local_8_in = -1 ;
                        Print(global_50_st + " " + string(global_25_in) + " GetOtherSymbolsCountt >= MaxOtherSymbols. The deal is virtualized");
                       }
                    }
                  else
                    {
                     local_8_in = fun_15(global_50_st,1,fun_16(1.0,true),0,0,global_25_in,"C0",0.0) ;
                     if(local_8_in >  0)
                       {
                        local_3_in = 1 ;
                       }
                    }
                 }
              }
           }
         if(local_3_in != 1)
            continue;
         fun80(local_8_in);

         global_70_in = (global_55_do - global_56_do) / global_128_do ;
         global_69_do = MathMax(iClose(global_50_st,0,1),global_127_do)+global_70_in * global_128_do  ;
         GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
         GlobalVariableSet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in),global_69_do);
         funs7();
        }
     }


   for(int local_10_in = 0 ; local_10_in < global_98_in ; local_10_in ++)
     {
      global_50_st = global_99_st_si1[local_10_in] ;
      global_36_do = global_100_do_si1[local_10_in] ;
      if(MarketInfo(global_50_st,9)==0.0)
         continue;
      int local_11_in = 1 ;
      if(global_8_in < 1)
         continue;
      for(; local_11_in <= global_8_in ; local_11_in ++)
        {


         if(local_11_in == global_8_in && local_10_in == global_98_in - 1 && !(IsTesting()) && global_6_bo && (!(IsTesting()) || IsVisualMode()))
           {
            fun_27();
           }
         if(global_78_in_si100si15[local_11_in][local_10_in] == iTime(global_50_st,0,0))
            continue;
         global_78_in_si100si15[local_11_in][local_10_in] = iTime(global_50_st,0,0);
         if(local_11_in == global_8_in && local_10_in == global_98_in - 1 && IsTesting() && global_6_bo && (!(IsTesting()) || IsVisualMode()))
           {
            fun_27();
           }
         fun_29(local_11_in);
         if(funs2(global_50_st,0,global_25_in,0,"") || funs9(0))
           {

            global_91_do = MathPow(global_31_do,MathLog(global_18_in / 100.0) / 0.6931471805599) * global_30_in / MathPow(global_31_do,2.0) * global_127_do * 0.00001 + funs8(0,global_25_in) ;
            global_92_do = MathPow(global_31_do,MathLog(global_18_in / 100.0) / 0.6931471805599) * global_30_in / MathPow(global_31_do,2.0) * global_127_do * 0.00001 + global_28_do * MathPow(global_29_do,global_14_in) * (global_56_do - global_127_do) + global_126_do ;
            if(UseUnloss)
              {
               global_53_do = !funs2(global_50_st,0,global_25_in,0,"")?global_92_do:MathMax(global_91_do,global_92_do) ;

               global_53_do = (global_14_in >= global_45_in) ?global_91_do:global_53_do  ;
              }
            else
              {
               global_53_do = global_92_do ;
              }
            if(!(useVirtualTP))
              {
               funs4(0,global_25_in,global_53_do);
              }
            else
              {
               funs4(0,global_25_in,0.0);
              }
            GlobalVariableSet(string(IsTesting()) + global_50_st + string(global_26_in) + "tp",global_53_do);
            double   local_12_do = GlobalVariableGet(string(IsTesting()) + global_50_st + string(global_26_in) + "peak") ;
            if((iLow(global_50_st,0,1)<local_12_do || local_12_do==0.0))
              {
               local_12_do = iLow(global_50_st,0,1) ;
               GlobalVariableSet(string(IsTesting()) + global_50_st + string(global_26_in) + "peak",local_12_do);
              }
            if(global_56_do - local_12_do!=0.0 && (global_127_do - local_12_do) / (global_56_do - local_12_do)>global_32_do)
              {
               if((!(UseUnloss) || (funs3(global_50_st,0,global_25_in)>0.0 && UseUnloss)))
                 {
                  fun_17(global_50_st,-1,global_25_in);
                  if(!funs2(global_50_st,-1,global_25_in,0,""))
                    {
                     GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),0.0);
                     GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
                    }
                 }
              }
           }
         if(!funs2(global_50_st,1,global_25_in,0,""))
           {
            if(!(funs9(1)))
               continue;
           }
         global_91_do = funs8(1,global_25_in) - MathPow(global_31_do,MathLog(global_18_in / 100.0) / 0.6931471805599) * global_30_in / MathPow(global_31_do,2.0) * global_127_do * 0.00001 ;
         global_92_do = global_127_do - global_28_do * MathPow(global_29_do,global_14_in) * (global_127_do - global_56_do) - MathPow(global_31_do,MathLog(global_18_in / 100.0) / 0.6931471805599) * global_30_in / MathPow(global_31_do,2.0) * global_127_do * 0.00001 ;
         if(UseUnloss)
           {
            global_53_do = !funs2(global_50_st,1,global_25_in,0,"")?global_92_do:MathMin(global_91_do,global_92_do);
            global_53_do = (global_14_in >= global_45_in) ?global_91_do:global_53_do  ;
           }
         else
           {
            global_53_do = global_92_do ;
           }
         if(!(useVirtualTP))
           {
            funs4(1,global_25_in,global_53_do);
           }
         else
           {
            funs4(1,global_25_in,0.0);
           }
         GlobalVariableSet(string(IsTesting()) + global_50_st + string(global_26_in) + "tp",global_53_do);
         double   local_12_do = GlobalVariableGet(string(IsTesting()) + global_50_st + string(global_26_in) + "peak") ;
         if((iHigh(global_50_st,0,1)>local_12_do || local_12_do==0.0))
           {
            local_12_do = iHigh(global_50_st,0,1) ;
            GlobalVariableSet(string(IsTesting()) + global_50_st + string(global_26_in) + "peak",local_12_do);
           }
         double    local_13_do = SymbolInfoDouble(global_50_st,1) ;
         if(!(local_13_do>0.0))
            continue;
         double    local_14_do = ((SymbolInfoDouble(global_50_st,4) - local_13_do) / local_13_do) * 100000.0 ;
         if(!((local_12_do - global_56_do)!=0.0) || !(local_14_do<50.0) || !((local_12_do - global_127_do) / (local_12_do - global_56_do)>global_32_do))
            continue;

         if(UseUnloss)
           {
            if((!(funs3(global_50_st,1,global_25_in)>0.0) || !(UseUnloss)))
               continue;
           }
         fun_17(global_50_st,-1,global_25_in);
         if(funs2(global_50_st,-1,global_25_in,0,""))
            continue;
         GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),0.0);
         GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);

        }

     }
   if(!(global_6_bo))
      return;

   if((IsTesting() && !(IsVisualMode())))
      return;
   fun_27();
  }
//OnTick <<==--------   --------
void OnTimer()
  {
   if(IsTesting())
      return;
   fun_27();
  }
//OnTimer <<==--------   --------
double OnTester()
  {
   ArrayResize(global_131_do_ko,global_89_in - 1,0);
   for(int local_2_in = 1 ; local_2_in < global_89_in ; local_2_in ++)
     {
      global_131_do_ko[local_2_in - 1] = global_85_do_si7si10000[3][local_2_in] / global_85_do_si7si10000[3][local_2_in - 1] - 1.0;
     }
   ArraySetAsSeries(global_131_do_ko,true);
   double local_3_do = iMAOnArray(global_131_do_ko,0,global_89_in - 1,0,0,0) ;
   double local_4_do = iStdDevOnArray(global_131_do_ko,0,global_89_in - 1,0,0,0) ;
   if(local_4_do!=0.0)
     {
      return(local_3_do / local_4_do);
     }
   return(0.0);
  }
//OnTester <<==--------   --------
int deinit()
  {
   if(IsTesting() && global_47_bo)
     {
      fun_22();
     }
   if(IsTesting() && global_48_bo)
     {
      fun_21();
     }
   for(int local_2_in = 0 ; local_2_in < global_98_in ; local_2_in ++)
     {
      global_50_st = global_99_st_si1[local_2_in] ;
      for(int local_3_in = 1 ; local_3_in <= global_8_in ; local_3_in ++)
        {
         global_93_st = IntegerToString(local_3_in,2,48) ;
         global_26_in = StringToInteger((StringLen(global_50_st)  != 6)?"99":fun_20(StringSubstr(global_50_st,0,3)) + fun_20(StringSubstr(global_50_st,3,3)) + global_93_st) ;
         if(IsTesting())
           {
            GlobalVariableDel(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in));
            GlobalVariableDel(string(IsTesting()) + "iBands_period" + global_50_st + string(global_26_in));
            GlobalVariableDel(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in));
            GlobalVariableDel(string(IsTesting()) + global_50_st + string(global_26_in) + "peak");
            GlobalVariableDel(string(IsTesting()) + "Magic" + global_50_st + string(global_26_in));
            GlobalVariableDel(string(IsTesting()) + global_50_st + string(global_26_in) + "tp");
            GlobalVariableDel(string(IsTesting()) + global_50_st + "0" + string(global_26_in));
            GlobalVariableDel(string(IsTesting()) + global_50_st + "1" + string(global_26_in));
           }
        }
     }
   return(0);
  }
//deinit <<==--------   --------
int fun_12()
  {
//  int       local_1_in;
   int       local_2_in = 0;
//----- -----

   global_129_do = MarketInfo(global_50_st,13) ;
   global_125_do = MarketInfo(global_50_st,13) * MarketInfo(global_50_st,11) ;
   global_126_do = MarketInfo(global_50_st,10) ;
   global_127_do = MarketInfo(global_50_st,9) ;
   global_128_do = MarketInfo(global_50_st,11) ;
   global_130_do = 0.0 ;
   if(iClose(global_50_st,0,1)>0.0)
     {
      global_130_do = (MathAbs(global_127_do / iClose(global_50_st,0,1) - 1.0)) * 10000.0 ;
     }
   if(global_127_do>global_55_do)
     {
      ObjectDelete(0,"DD");
      if((FirstPositionp == 1 || FirstPositionp == 3))
        {
         local_2_in = 2 ;
         global_53_do = 0.00001 / global_128_do * MathPow(global_31_do,MathLog(global_18_in / 100.0) / 0.6931471805599) * global_30_in / MathPow(global_31_do,2.0) * global_127_do + global_28_do * MathPow(global_29_do,global_14_in) * (global_127_do - global_56_do) / global_128_do ;
        }
     }
   if(global_126_do<global_57_do)
     {
      ObjectDelete(0,"DD");
      if((FirstPositionp == 1 || FirstPositionp == 2))
        {
         local_2_in = 1 ;
         global_53_do = 0.00001 / global_128_do * MathPow(global_31_do,MathLog(global_18_in / 100.0) / 0.6931471805599) * global_30_in / MathPow(global_31_do,2.0) * global_127_do + global_28_do * MathPow(global_29_do,global_14_in) * (global_56_do - global_127_do) / global_128_do ;
        }
     }
   return(local_2_in);
  }
//fun_12 <<==--------   --------
void fun_13()
  {

   global_58_do = iStdDev(global_50_st,0,global_18_in,1,3,0,-1) * global_21_do ;
   if(global_24_bo == true)
     {
      double local_1_do = funs11(global_14_in, global_18_in) ;

      if(local_1_do>0.0)
        {
         global_58_do = MathMax(global_58_do,local_1_do) ;
        }
     }
   global_56_do = iMA(global_50_st,0,global_18_in,1,3,0,-1) ;

   global_55_do = global_56_do + global_58_do ;
   global_57_do = global_56_do - global_58_do ;
   global_52_in = global_27_in ;
  }
//fun_13 <<==--------   --------
void fun_14(double para_0_do,double para_1_do,double para_2_do,datetime para_3_拆da)
  {
   bool      local_1_bo = false;
   double    local_2_do = 0.0;
   double    local_3_do = 0.0;
   double    local_4_do = 0.0;
   double    local_5_do = 0.0;
   double    local_6_do = 0.0;
//----- -----

   int local_7_in = MarketInfo(OrderSymbol(),12) ;
   int local_8_in = 0 ;
   int local_9_in = 0 ;
   string local_10_st = " Автор функции для:" ;
   if(para_0_do<=0.0)
     {
      para_0_do = OrderOpenPrice() ;
     }
   if(para_1_do<0.0)
     {
      para_1_do = OrderStopLoss() ;
     }
   if(para_2_do<0.0)
     {
      para_2_do = OrderTakeProfit() ;
     }
   para_0_do = NormalizeDouble(para_0_do,local_7_in) ;
   para_1_do = NormalizeDouble(para_1_do,local_7_in) ;
   para_2_do = NormalizeDouble(para_2_do,local_7_in) ;
   local_2_do = NormalizeDouble(OrderOpenPrice(),local_7_in) ;
   local_5_do = NormalizeDouble(OrderStopLoss(),local_7_in) ;
   local_6_do = NormalizeDouble(OrderTakeProfit(),local_7_in) ;
   if((!(para_0_do!=local_2_do) && !(para_1_do!=local_5_do) && !(para_2_do!=local_6_do)))
      return;
   for(local_9_in = 1 ; local_9_in <= 5 ; local_9_in ++)
     {
      if((!(IsTesting()) && (!(IsExpertEnabled()) || IsStopped() != 0)))
         return;
      RefreshRates();
      local_1_bo = OrderModify(OrderTicket(),para_0_do,para_1_do,para_2_do,para_3_拆da,-1) ;
      if(local_1_bo)
         return;
      local_8_in = GetLastError() ;
      local_3_do = MarketInfo(OrderSymbol(),10) ;
      local_4_do = MarketInfo(OrderSymbol(),9) ;
      PrintFormat("Error(" + string(local_8_in) + ") modifying order: " + fun_18(local_8_in) + ", try " + string(local_9_in));
      PrintFormat("Ask=" + string(local_3_do) + "  Bid=" + string(local_4_do) + "  sy=" + OrderSymbol() + "  op=" + string(OrderType()) + "  pp=" + string(para_0_do) + "  sl=" + string(para_1_do) + "  tp=" + string(para_2_do));
      do
        {
         if((local_8_in != 146 || !(IsTradeContextBusy())))
            continue;
         Sleep(500);
        }
      while(IsTradeContextBusy());


     }
  }
//fun_14 <<==--------   --------
int fun_15(string para_0_st,int para_1_in,double para_2_do,double para_3_do,double para_4_do,int para_5_in,string para_6_st,double para_7_do)
  {
   int       local_1_in;
   color     local_2_co = 0;
   long      local_3_lo = 0;
   double    local_4_do = 0.0;
   double    local_5_do = 0.0;
   double    local_6_do = 0.0;
   double    local_7_do = 0.0;
   int       local_8_in = 0;
   int       local_9_in = 0;
   int       local_10_in = 0;
   int       local_11_in = 0;
   string    local_12_st;
   string    local_13_st;
   double    local_14_do;
   double    local_15_do;
   string    local_16_st;
   MqlDateTime local_17_a_129;
   MqlDateTime local_18_a_129;
//----- -----
   string     tmp_st_1;
   bool       tmp_bo_2;
   string     tmp_st_3;
   bool       tmp_bo_4;
   bool       tmp_bo_5;
   string     tmp_st_6;
   bool       tmp_bo_7;
   bool       tmp_bo_8;
   string     tmp_st_9;
   bool       tmp_bo_10;
   bool       tmp_bo_11;
   bool       tmp_bo_12;
   bool       tmp_bo_13;
   double     tmp_do_14;
   bool       tmp_bo_15;
   bool       tmp_bo_16;
   int        tmp_in_17;
   int        tmp_in_18;
   string     tmp_st_19;
   int        tmp_in_20;
   int        tmp_in_21;
   string     tmp_st_22;
   int        tmp_in_23;
   bool       tmp_bo_24;

   local_12_st = "" ;
   if((para_0_st == "" || para_0_st == "0"))
     {
      para_0_st = global_50_st ;
     }
   if(para_1_in == 0)
     {
      local_2_co = 32768 ;
     }
   else
     {
      local_2_co = 255 ;
     }
   local_13_st = " Автор функции: " ;
   local_14_do = para_2_do ;
   local_15_do = 0.0 ;
   if(AccountFreeMarginCheck(para_0_st,para_1_in,para_2_do)<0.0)
     {
      tmp_st_1 = (para_1_in == 0) ?"Buy":"Sell" ;
      Print("Not enough money for ",tmp_st_1," ",para_2_do," ",para_0_st," Error code=",GetLastError());
      tmp_bo_2 = false;
     }
   else
     {
      tmp_bo_2 = true;
     }
   if(!(tmp_bo_2))
     {
      Sleep(1000);
      if(AccountFreeMarginCheck(para_0_st,para_1_in,para_2_do)<0.0)
        {
         tmp_st_3 = (para_1_in == 0) ?"Buy":"Sell" ;
         Print("Not enough money for ",tmp_st_3," ",para_2_do," ",para_0_st," Error code=",GetLastError());
         tmp_bo_4 = false;
        }
      else
        {
         tmp_bo_4 = true;
        }
      if(!(tmp_bo_4))
        {
         return(-1);
        }
     }
   if(AccountInfoInteger(ACCOUNT_LIMIT_ORDERS) == 0)
     {
      tmp_bo_5 = true;
     }
   else
     {
      tmp_bo_5 = OrdersTotal()<AccountInfoInteger(ACCOUNT_LIMIT_ORDERS);
     }
   if(!(tmp_bo_5))
     {
      PrintFormat("Amount of open and pending orders has reached the limit.");
      return(-1);
     }
   if((MQLInfoString(MQL_PROGRAM_NAME) == "North East Way EA" || MQLInfoString(MQL_PROGRAM_NAME) == "NorthEastWay_v" + global_1_st || MQLInfoString(MQL_PROGRAM_NAME) == "NorthEastWay" || MQLInfoString(MQL_PROGRAM_NAME) == "NorthEastWay EA crypto"))
     {
      tmp_bo_7 = true;
     }
   else
     {
      tmp_bo_7 = false;
     }

   TimeToStruct(iTime(NULL,0,0),local_17_a_129);
   if(((local_17_a_129.year >  2021 && local_17_a_129.mon > 6) || local_17_a_129.year >  2022))
     {
      if((TerminalInfoInteger(23) != 0 || TerminalInfoInteger(38) != 0))
        {
         tmp_bo_8 = true;
        }
      else
        {
         tmp_bo_8 = false;
        }
      if(!(tmp_bo_8))
        {
         if(MQLInfoString(MQL_PROGRAM_NAME) == "NorthEastWay")
           {
            tmp_bo_10 = true;
           }
         else
           {
            tmp_bo_10 = false;
           }
         if(!(tmp_bo_10))
           {
            tmp_bo_11 = false;
           }
        }
     }
   else
     {
      tmp_bo_11 = true;
     }
   if((!(tmp_bo_7) || !(tmp_bo_11)) && !(IsTesting()) && AccountInfoInteger(ACCOUNT_TRADE_MODE) == 2 && para_2_do>0.1 && FirstNumberp + 1 <= global_14_in + 1)
     {
      return(1);
     }
   TimeToStruct(iTime(NULL,0,0),local_18_a_129);
   if(((local_18_a_129.year >  2021 && local_18_a_129.mon > 12) || local_18_a_129.year >  2022))
     {
      tmp_bo_12 = false;
     }
   else
     {
      tmp_bo_12 = true;
     }
   if(!(tmp_bo_12) && !(IsTesting()) && para_2_do>0.1 && FirstNumberp <= global_14_in + 1)
     {
      return(1);
     }
   global_40_do = SymbolInfoDouble(para_0_st,35) ;
   while(local_15_do!=para_2_do)
     {
      if(para_2_do>global_40_do && global_39_bo)
        {
         local_14_do = MathMin(para_2_do - local_15_do,global_40_do) ;
         if(local_14_do>global_40_do)
           {
            local_14_do = global_40_do ;
           }
        }
      if(local_14_do<SymbolInfoDouble(global_50_st,34))
        {
         local_16_st = StringFormat("Volume is less than the minimum SYMBOL_VOLUME_MIN=%.2f",SymbolInfoDouble(global_50_st,34));
         tmp_bo_13 = false;
        }
      else
        {
         if(local_14_do>SymbolInfoDouble(global_50_st,35))
           {
            local_16_st = StringFormat("Volume is greater than the maximum allowed SYMBOL_VOLUME_MAX=%.2f",SymbolInfoDouble(global_50_st,35));
            tmp_bo_13 = false;
           }
         else
           {
            if(MathAbs(int(MathRound(local_14_do / SymbolInfoDouble(global_50_st,36))) * SymbolInfoDouble(global_50_st,36) - local_14_do)>0.0000001)
              {
               local_16_st = StringFormat("Volume is not a multiple of the minimum gradation SYMBOL_VOLUME_STEP=%.2f, nearest correct volume %.2f",SymbolInfoDouble(global_50_st,36),int(MathRound(local_14_do / SymbolInfoDouble(global_50_st,36))) * SymbolInfoDouble(global_50_st,36));
               tmp_bo_13 = false;
              }
            else
              {
               local_16_st = "Correct volume";
               tmp_bo_13 = true;
              }
           }
        }
      if(!(tmp_bo_13))
        {
         PrintFormat(local_16_st);
         return(-1);
        }
      for(local_10_in = 1 ; local_10_in <= 5 ; local_10_in ++)
        {
         if((!(IsTesting()) && (!(IsExpertEnabled()) || IsStopped() != 0)))
            break;

         while(!(IsTradeAllowed()))
           {
            if(IsTesting() || IsOptimization())
               continue;
            Sleep(5000);

           }
         RefreshRates();
         local_8_in = MarketInfo(para_0_st,12) ;
         local_5_do = MarketInfo(para_0_st,10) ;
         local_6_do = MarketInfo(para_0_st,9) ;
         local_7_do = MarketInfo(para_0_st,13) * MarketInfo(para_0_st,11) / local_6_do * 10000.0 ;
         if(para_1_in == 0)
           {
            local_4_do = local_5_do ;
           }
         else
           {
            local_4_do = local_6_do ;
           }
         local_4_do = NormalizeDouble(local_4_do,local_8_in) ;
         local_3_lo = TimeCurrent() ;

         if((para_1_in==0 && local_5_do<=para_7_do) && (para_1_in==1 && local_6_do>=para_7_do) && (para_7_do==0.0))

           {
            Print("Price does not match the distance, try ",local_10_in);
            Print("Ask=",local_5_do," Bid=",local_6_do," sy=",para_0_st," lot=",local_14_do," op=",para_1_in," pp=",local_4_do," sl=",para_3_do," tp=",para_4_do," mn=",para_5_in," price_dist=",para_7_do);
            Sleep(7700);
            continue;
           }
         if(global_17_do>0.0 && local_7_do>global_17_do)
           {
            Print("The current spread is greater than the maximum, try ",local_10_in);
            Print("Ask=",local_5_do," Bid=",local_6_do," sy=",para_0_st," lot=",local_14_do," op=",para_1_in," pp=",local_4_do," sl=",para_3_do," tp=",para_4_do," mn=",para_5_in," price_dist=",para_7_do," max_spread=",global_17_do," curr_spread=",local_7_do);
            Sleep(7700);
            continue;
           }
         if(!(global_16_bo))
           {
            local_11_in = OrderSend(para_0_st,para_1_in,local_14_do,local_4_do,global_15_in,para_3_do,para_4_do,comment + "_" + para_6_st,para_5_in,0,local_2_co) ;
           }
         if(global_16_bo)
           {
            local_11_in = OrderSend(para_0_st,para_1_in,local_14_do,local_4_do,global_15_in,0.0,0.0,comment + "_" + para_6_st,para_5_in,0,local_2_co) ;
            tmp_in_17 = -1;
            tmp_in_18 = -1;
            tmp_st_19 = "";
            tmp_in_20 = local_11_in;
            tmp_in_21 = OrdersTotal();
            tmp_bo_24 = false;
            for(tmp_in_23 = 0 ; tmp_in_23 < tmp_in_21 ; tmp_in_23=tmp_in_23 + 1)
              {
               if(!(OrderSelect(tmp_in_23,0,0)))
                  continue;

               if((OrderSymbol() != tmp_st_19 && tmp_st_19 != ""))
                  continue;

               if((tmp_in_18 >= 0 && OrderType() != tmp_in_18))
                  continue;

               if((tmp_in_17 >= 0 && OrderMagicNumber() != tmp_in_17) || OrderTicket() != tmp_in_20)
                  continue;
               tmp_bo_24 = true;
               break;
              }
            if(tmp_bo_24)
              {
               fun_14(-1.0,para_3_do,para_4_do,0);
              }
           }
         if(local_11_in >  0)
           {
            if(IsTesting())
               break;
            WindowScreenShot(WindowExpertName() + "\\" + string(para_1_in) + WindowExpertName() + global_50_st + string(Period()) + TimeCurrent() + "_.gif",1024,768,-1,-1,-1);
            break;
           }
         local_9_in = GetLastError() ;
         Print("Error(",local_9_in,") opening position: ",fun_18(local_9_in),", try ",local_10_in);
         Print("Ask=",local_5_do," Bid=",local_6_do," sy=",para_0_st," lot=",local_14_do," op=",para_1_in," pp=",local_4_do," sl=",para_3_do," tp=",para_4_do," mn=",para_5_in);
         if(local_5_do==0.0 && local_6_do==0.0)
           {
            Print("Проверьте в Обзоре рынка наличие символа " + para_0_st);
           }
         Print("Ошибка " + string(local_9_in) + " Описание " + fun_18(local_9_in));
         if(local_9_in == 2 || local_9_in == 64 || local_9_in == 65 || local_9_in == 133)
            break;
         if((local_9_in == 128 || local_9_in == 142 || local_9_in == 143))
           {
            Sleep(66666);
           }
         if(local_5_do==0.0 && local_6_do==0.0)
           {
            Alert("Проверьте в Обзоре рынка наличие символа " + para_0_st);
           }
         if(local_9_in == 2 || local_9_in == 64 || local_9_in == 65 || local_9_in == 133)
            break;
         if((local_9_in == 4 || local_9_in == 131 || local_9_in == 132))
           {
            Sleep(30000);
            break;
           }
         if(local_9_in == 140 || local_9_in == 148 || local_9_in == 4110 || local_9_in == 4111)
            break;
         if(local_9_in == 141)
           {
            Sleep(100000);
           }
         if(local_9_in == 145)
           {
            Sleep(17000);
           }
         if(local_9_in == 146 && IsTradeContextBusy())
           {
            do
              {
               Sleep(500);
              }
            while(IsTradeContextBusy());
           }
         if(local_9_in == 135)
            continue;
         Sleep(7700);

        }
      local_15_do = local_15_do + local_14_do ;
      if(!(global_39_bo))
         break;

     }
   return(local_11_in);
  }
//fun_15 <<==--------   --------
double fun_16(double para_0_do,bool para_2_bo)
  {
   double    local_1_do;
   string    local_2_st;
   string    local_3_st;
   double    local_4_do;
   double    local_5_do;
   double    local_6_do;
   double    local_7_do;
   int       local_8_in;
   int       local_9_in;
   int       local_10_in;
//----- -----
   bool       tmp_bo_1;
   double     tmp_do_2;
   int        tmp_in_3;
   int        tmp_in_4;
   double     tmp_do_5;
   double     tmp_do_6;

   local_2_st = " Автор функции: " ;
   local_4_do = 0.0 ;
   local_5_do = 0.0 ;
   local_6_do = 0.0 ;
   local_7_do = 0.0 ;
   local_8_in = 0 ;
   local_10_in = 0 ;
   local_9_in = 0 ;
   if(MarketInfo(global_50_st,24)==0.01)
     {
      local_8_in = 2 ;
     }
   else
     {
      local_8_in = 1 ;
     }
   local_5_do = MarketInfo(global_50_st,23) ;
   if(Lots<local_5_do)
     {
      Lots = local_5_do ;
     }
   local_6_do = global_37_do ;
   if(global_34_do!=0.0)
     {
      if(fix_balance>0.0)
        {
         local_7_do = fix_balance ;
        }
      else
        {
         if(BaseForLotCalc == 0)
           {
            tmp_bo_1 = AccountEquity();
           }
         else
           {
            tmp_bo_1 = AccountBalance();
           }
         local_7_do = tmp_bo_1 ;
        }
      local_7_do = local_7_do + virtBalance ;
      tmp_do_2 = local_7_do;
      tmp_in_3 = global_34_do;
      tmp_in_4 = MarketInfo(global_50_st,16);
      tmp_do_5 = 0.0;
      if(MarketInfo(global_50_st,11)!=0.0)
        {
         tmp_do_5 = MarketInfo(global_50_st,9) / MarketInfo(global_50_st,11);
        }
      if(tmp_do_5 * tmp_in_4==0.0)
        {
         PrintFormat(global_50_st + " bidcorr*ValuePerPip==0");
         tmp_do_6 = 0.0;
        }
      else
        {
         tmp_do_6 = tmp_in_3 * tmp_do_2 / (tmp_do_5 * tmp_in_4);
        }
      local_4_do = tmp_do_6 * global_36_do ;
     }
   else
     {
      if(FirstNumberp >  0 && LotsMartinp>0.0)
        {
         local_4_do = Lots / MathPow(LotsMartinp,FirstNumberp) ;
        }
      else
        {
         local_4_do = Lots ;
        }
     }
   if(para_2_bo)
     {
      local_4_do = NormalizeDouble(local_4_do,local_8_in) ;
     }
   return(local_4_do);
  }
//fun_16 <<==--------   --------
void fun_17(string para_0_st,int para_1_in,int para_2_in)
  {
   int       local_1_in = 0;
   int       local_2_in;
   string    local_3_st;
//----- -----
   int        tmp_in_1;
   double     tmp_do_2;
   double     tmp_do_3;
   double     tmp_do_4;
   int        tmp_in_5;
   string     tmp_st_6;

   local_2_in = OrdersTotal() ;
   local_3_st = " Автор функции:" ;
   if(para_0_st == "0")
     {
      para_0_st = global_50_st ;
     }
   for(local_1_in=local_2_in - 1 ; local_1_in >= 0 ; local_1_in --)
     {
      if(!(OrderSelect(local_1_in,0,0)))
         continue;

      if((OrderSymbol() != para_0_st && para_0_st != ""))
         continue;

      if((para_1_in >= 0 && OrderType() != para_1_in))
         continue;

      if((OrderType() != 0 && OrderType() != 1))
         continue;

      if((para_2_in >= 0 && OrderMagicNumber() != para_2_in))
         continue;
      tmp_in_1 = 0;
      tmp_do_2 = 0.0;
      tmp_do_3 = 0.0;
      tmp_do_4 = 0.0;
      tmp_in_5 = 0;
      if((OrderType() != 0 && OrderType() != 1))
         continue;
      for(tmp_in_5 = 1 ; tmp_in_5 <= 20 ; tmp_in_5=tmp_in_5 + 1)
        {
         RefreshRates();
         tmp_do_2 = MarketInfo(OrderSymbol(),10);
         tmp_do_3 = MarketInfo(OrderSymbol(),9);
         if(OrderType() == 0)
           {
            tmp_do_4 = tmp_do_3;
           }
         else
           {
            tmp_do_4 = tmp_do_2;
           }
         if(OrderClose(OrderTicket(),OrderLots(),tmp_do_4,1,tmp_in_1))
            break;
         Print("Error(",GetLastError(),") opening position: ",fun_18(GetLastError()),", try ",tmp_in_5);
         do
           {
            if((GetLastError() != 146 || !(IsTradeContextBusy())))
               continue;
            Sleep(500);
           }
         while(IsTradeContextBusy());
        }
     }
  }
//fun_17 <<==--------   --------
string fun_18(int para_0_in)
  {
   string    local_1_st;
//----- -----

   switch(para_0_in)
     {
      case 0 :
      case 1 :
         local_1_st = "no error" ;
         break;
      case 2 :
         local_1_st = "common error" ;
         break;
      case 3 :
         local_1_st = "invalid trade parameters" ;
         break;
      case 4 :
         local_1_st = "trade server is busy" ;
         break;
      case 5 :
         local_1_st = "old version of the client terminal" ;
         break;
      case 6 :
         local_1_st = "no connection with trade server" ;
         break;
      case 7 :
         local_1_st = "not enough rights" ;
         break;
      case 8 :
         local_1_st = "too frequent requests" ;
         break;
      case 9 :
         local_1_st = "malfunctional trade operation (never returned error)" ;
         break;
      case 64 :
         local_1_st = "account disabled" ;
         break;
      case 65 :
         local_1_st = "invalid account" ;
         break;
      case 128 :
         local_1_st = "trade timeout" ;
         break;
      case 129 :
         local_1_st = "invalid price" ;
         break;
      case 130 :
         local_1_st = "invalid stops" ;
         break;
      case 131 :
         local_1_st = "invalid trade volume" ;
         break;
      case 132 :
         local_1_st = "market is closed" ;
         break;
      case 133 :
         local_1_st = "trade is disabled" ;
         break;
      case 134 :
         local_1_st = "not enough money" ;
         break;
      case 135 :
         local_1_st = "price changed" ;
         break;
      case 136 :
         local_1_st = "off quotes" ;
         break;
      case 137 :
         local_1_st = "broker is busy (never returned error)" ;
         break;
      case 138 :
         local_1_st = "requote" ;
         break;
      case 139 :
         local_1_st = "order is locked" ;
         break;
      case 140 :
         local_1_st = "long positions only allowed" ;
         break;
      case 141 :
         local_1_st = "too many requests" ;
         break;
      case 145 :
         local_1_st = "modification denied because order too close to market" ;
         break;
      case 146 :
         local_1_st = "trade context is busy" ;
         break;
      case 147 :
         local_1_st = "expirations are denied by broker" ;
         break;
      case 148 :
         local_1_st = "amount of open and pending orders has reached the limit" ;
         break;
      case 149 :
         local_1_st = "hedging is prohibited" ;
         break;
      case 150 :
         local_1_st = "prohibited by FIFO rules" ;
         break;
      case 4000 :
         local_1_st = "no error (never generated code)" ;
         break;
      case 4001 :
         local_1_st = "wrong function pointer" ;
         break;
      case 4002 :
         local_1_st = "array index is out of range" ;
         break;
      case 4003 :
         local_1_st = "no memory for function call stack" ;
         break;
      case 4004 :
         local_1_st = "recursive stack overflow" ;
         break;
      case 4005 :
         local_1_st = "not enough stack for parameter" ;
         break;
      case 4006 :
         local_1_st = "no memory for parameter string" ;
         break;
      case 4007 :
         local_1_st = "no memory for temp string" ;
         break;
      case 4008 :
         local_1_st = "not initialized string" ;
         break;
      case 4009 :
         local_1_st = "not initialized string in array" ;
         break;
      case 4010 :
         local_1_st = "no memory for array\' string" ;
         break;
      case 4011 :
         local_1_st = "too long string" ;
         break;
      case 4012 :
         local_1_st = "remainder from zero divide" ;
         break;
      case 4013 :
         local_1_st = "zero divide" ;
         break;
      case 4014 :
         local_1_st = "unknown command" ;
         break;
      case 4015 :
         local_1_st = "wrong jump (never generated error)" ;
         break;
      case 4016 :
         local_1_st = "not initialized array" ;
         break;
      case 4017 :
         local_1_st = "dll calls are not allowed" ;
         break;
      case 4018 :
         local_1_st = "cannot load library" ;
         break;
      case 4019 :
         local_1_st = "cannot call function" ;
         break;
      case 4020 :
         local_1_st = "expert function calls are not allowed" ;
         break;
      case 4021 :
         local_1_st = "not enough memory for temp string returned from function" ;
         break;
      case 4022 :
         local_1_st = "system is busy (never generated error)" ;
         break;
      case 4050 :
         local_1_st = "invalid function parameters count" ;
         break;
      case 4051 :
         local_1_st = "invalid function parameter value" ;
         break;
      case 4052 :
         local_1_st = "string function internal error" ;
         break;
      case 4053 :
         local_1_st = "some array error" ;
         break;
      case 4054 :
         local_1_st = "incorrect series array using" ;
         break;
      case 4055 :
         local_1_st = "custom indicator error" ;
         break;
      case 4056 :
         local_1_st = "arrays are incompatible" ;
         break;
      case 4057 :
         local_1_st = "global variables processing error" ;
         break;
      case 4058 :
         local_1_st = "global variable not found" ;
         break;
      case 4059 :
         local_1_st = "function is not allowed in testing mode" ;
         break;
      case 4060 :
         local_1_st = "function is not confirmed" ;
         break;
      case 4061 :
         local_1_st = "send mail error" ;
         break;
      case 4062 :
         local_1_st = "string parameter expected" ;
         break;
      case 4063 :
         local_1_st = "integer parameter expected" ;
         break;
      case 4064 :
         local_1_st = "double parameter expected" ;
         break;
      case 4065 :
         local_1_st = "array as parameter expected" ;
         break;
      case 4066 :
         local_1_st = "requested history data in update state" ;
         break;
      case 4099 :
         local_1_st = "end of file" ;
         break;
      case 4100 :
         local_1_st = "some file error" ;
         break;
      case 4101 :
         local_1_st = "wrong file name" ;
         break;
      case 4102 :
         local_1_st = "too many opened files" ;
         break;
      case 4103 :
         local_1_st = "cannot open file" ;
         break;
      case 4104 :
         local_1_st = "incompatible access to a file" ;
         break;
      case 4105 :
         local_1_st = "no order selected" ;
         break;
      case 4106 :
         local_1_st = "unknown symbol" ;
         break;
      case 4107 :
         local_1_st = "invalid price parameter for trade function" ;
         break;
      case 4108 :
         local_1_st = "invalid ticket" ;
         break;
      case 4109 :
         local_1_st = "trade is not allowed in the expert properties" ;
         break;
      case 4110 :
         local_1_st = "longs are not allowed in the expert properties" ;
         break;
      case 4111 :
         local_1_st = "shorts are not allowed in the expert properties" ;
         break;
      case 4200 :
         local_1_st = "object is already exist" ;
         break;
      case 4201 :
         local_1_st = "unknown object property" ;
         break;
      case 4202 :
         local_1_st = "object is not exist" ;
         break;
      case 4203 :
         local_1_st = "unknown object type" ;
         break;
      case 4204 :
         local_1_st = "no object name" ;
         break;
      case 4205 :
         local_1_st = "object coordinates error" ;
         break;
      case 4206 :
         local_1_st = "no specified subwindow" ;
         break;
      default :
         local_1_st = "unknown error" ;
     }
   return(local_1_st);
  }
//fun_18 <<==--------   --------
int fun_19()
  {
   int       local_1_in;
   double    local_2_do;
   bool      local_3_bo;
   int       local_4_in;
   int       local_5_in;
   int       local_6_in;



   if(!(funs2(global_50_st,-1,global_25_in,0,"")))
     {
      if(!(funs10()))
        {
         global_14_in = 0 ;
         GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
         GlobalVariableSet(string(IsTesting()) + global_50_st + string(global_26_in) + "peak",0.0);
         ObjectDelete(0,global_25_in);
        }
     }
   if(!(funs2(global_50_st,-1,global_25_in,0,"")))
     {
      if(funs10())
        {
         if((funs5() != "" || FirstPositionp == 4))
           {
            GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),0.0);
            GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),0.0);
            global_14_in = 0 ;
            GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),0.0);
            GlobalVariableSet(string(IsTesting()) + global_50_st + string(global_26_in) + "peak",0.0);
            ObjectDelete(0,global_25_in);
           }
        }
     }
   if(global_69_do==0.0)
     {
      if(funs2(global_50_st,0,global_25_in,0,""))
        {
         global_70_in = (global_55_do - global_56_do) / global_128_do ;
         global_69_do = (global_129_do - global_70_in) * global_128_do + MathMin(iClose(global_50_st,0,1),global_127_do) ;
         GlobalVariableSet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in),global_69_do);
         funs7();
        }
      if(funs2(global_50_st,1,global_25_in,0,""))
        {
         global_70_in = (global_55_do - global_56_do) / global_128_do ;
         global_69_do = global_70_in * global_128_do + MathMax(iClose(global_50_st,0,1),global_127_do) ;
         GlobalVariableSet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in),global_69_do);
         funs7();
        }
     }
   if(!(GlobalVariableCheck(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in))))
     {
      SetNUMBER(global_50_st,-1, global_25_in);
     }
   local_2_do = 0.0 ;
   local_3_bo = false ;
   local_5_in = 0 ;
   local_4_in = 0 ;
   global_129_do = MarketInfo(global_50_st,13) ;
   global_125_do = MarketInfo(global_50_st,13) * MarketInfo(global_50_st,11) ;
   global_126_do = MarketInfo(global_50_st,10) ;
   global_127_do = MarketInfo(global_50_st,9) ;
   global_128_do = MarketInfo(global_50_st,11) ;
   global_130_do = 0.0 ;
   if(iClose(global_50_st,0,1)>0.0)
     {
      global_130_do = (MathAbs(global_127_do / iClose(global_50_st,0,1) - 1.0)) * 10000.0 ;
     }
   local_6_in = 0 ;
   if(global_69_do!=0.0)
     {
      if(DELAYtime(global_50_st,-1,global_25_in,"HS",iTime(global_50_st,0,0))>global_18_in * global_33_do * PeriodSeconds(0) && global_130_do<20.0)
        {
         if((funs2(global_50_st,0,global_25_in,0,"") || funs9(0)))
           {
            if(global_126_do<=global_69_do)
              {
               local_3_bo = false ;
               local_2_do = NormalizeDouble(fun_16(1.0,false) * MathPow(global_42_do,MathMin(global_44_in,global_14_in + 1)),2) ;
               if((FirstNumberp > global_14_in + 1 || (global_43_in <  global_14_in + 1 && global_43_in >  0)))
                 {
                  local_3_bo = true ;
                  local_6_in = -1 ;
                  Print(global_50_st + " " + string(global_25_in) + " The opened grid level is less than the minimum level. The deal is virtualized");
                 }
               else
                 {
                  if(local_2_do<0.01)
                    {
                     local_3_bo = true ;
                     local_6_in = -1 ;
                     Print(global_50_st + " " + string(global_25_in) + " Current lot <0.01. The average deal is virtualized");
                    }
                  else
                    {
                     if(!(funs2(global_50_st,0,global_25_in,0,"")) && MaxOtherMagics >  0)
                       {
                        if(funs6int(global_25_in,"") >= MaxOtherMagics)
                          {
                           local_3_bo = true ;
                           local_6_in = -1 ;
                           Print(global_50_st + " " + string(global_25_in) + " GetOtherMagicsCount >= MaxOtherMagics. The deal is virtualized");
                           if(FirstNumberp <= global_14_in + 1)
                             {
                              global_14_in --;
                             }
                          }
                       }
                     else
                       {
                        if(!(funs2(global_50_st,0,global_25_in,0,"")) && MaxOtherSymbols >  0)
                          {
                           if(funs6str(global_50_st) >= MaxOtherSymbols)
                             {
                              local_3_bo = true ;
                              local_6_in = -1 ;
                              Print(global_50_st + " " + string(global_25_in) + " GetOtherSymbolsCount >= MaxOtherSymbols. The deal is virtualized");
                              if(FirstNumberp <= global_14_in + 1)
                                {
                                 global_14_in --;
                                }
                             }
                          }
                        else
                          {
                           local_6_in = fun_15(global_50_st,0,local_2_do,0.0,0.0,global_25_in,"C" + IntegerToString(global_14_in + 1,0,32),global_69_do) ;
                           if(local_6_in >  0)
                             {
                              GlobalVariableSet(string(IsTesting()) + global_50_st + "0" + string(global_26_in),0.0);
                              local_3_bo = true ;
                             }
                          }
                       }
                    }
                 }
               if(local_3_bo)
                 {
                  global_14_in ++;
                  fun80(local_6_in);
                  GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),global_14_in);
                  global_70_in = (global_55_do - global_56_do) / global_128_do ;
                  global_69_do =  MathMin(iClose(global_50_st,0,1),global_127_do)+(global_129_do - global_70_in) * global_128_do  ;
                  GlobalVariableSet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in),global_69_do);
                  funs7();
                 }
              }
           }
         else
           {
            if((funs2(global_50_st,1,global_25_in,0,"") || funs9(1)) && global_127_do>=global_69_do)
              {
               local_3_bo = false ;
               local_2_do = NormalizeDouble(fun_16(1.0,false) * MathPow(global_42_do,MathMin(global_44_in,global_14_in + 1)),2) ;
               if((FirstNumberp > global_14_in + 1 || (global_43_in <  global_14_in + 1 && global_43_in >  0)))
                 {
                  local_3_bo = true ;
                  local_6_in = -1 ;
                  Print(global_50_st + " " + string(global_25_in) + " The opened grid level is less than the minimum level. The deal is virtualized");
                 }
               else
                 {
                  if(local_2_do<0.01)
                    {
                     local_3_bo = true ;
                     local_6_in = -1 ;
                     Print(global_50_st + " " + string(global_25_in) + " Current lot <0.01. The average deal is virtualized");
                    }
                  else
                    {
                     if(!(funs2(global_50_st,1,global_25_in,0,"")) && MaxOtherMagics >  0)
                       {
                        if(funs6int(global_25_in,"") >= MaxOtherMagics)
                          {
                           local_3_bo = true ;
                           local_6_in = -1 ;
                           Print(global_50_st + " " + string(global_25_in) + " GetOtherMagicsCount >= MaxOtherMagics. The deal is virtualized");
                           if(FirstNumberp <= global_14_in + 1)
                             {
                              global_14_in --;
                             }
                          }
                       }
                     else
                       {
                        if(!(funs2(global_50_st,1,global_25_in,0,"")) && MaxOtherSymbols >  0)
                          {
                           if(funs6str(global_50_st) >= MaxOtherSymbols)
                             {
                              local_3_bo = true ;
                              local_6_in = -1 ;
                              Print(global_50_st + " " + string(global_25_in) + " GetOtherSymbolsCount >= MaxOtherSymbols. The deal is virtualized");
                              if(FirstNumberp <= global_14_in + 1)
                                {
                                 global_14_in --;
                                }
                             }
                          }
                        else
                          {
                           local_6_in = fun_15(global_50_st,1,local_2_do,0.0,0.0,global_25_in,"C" + IntegerToString(global_14_in + 1,0,32),global_69_do) ;
                           if(local_6_in >  0)
                             {
                              GlobalVariableSet(string(IsTesting()) + global_50_st + "1" + string(global_26_in),0.0);
                              local_3_bo = true ;
                             }
                          }
                       }
                    }
                 }
               if(local_3_bo)
                 {
                  global_14_in ++;
                  fun80(local_6_in);
                  GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),global_14_in);
                  global_70_in = (global_55_do - global_56_do) / global_128_do ;
                  global_69_do = global_70_in * global_128_do + MathMax(iClose(global_50_st,0,1),global_127_do) ;
                  GlobalVariableSet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in),global_69_do);
                  funs7();
                 }
              }
           }
        }
     }
   return(0);
  }
//fun_19 <<==--------   --------
string fun_20(string para_0_st)
  {
   string     tmp_st_1;

   if(StringLen(para_0_st)  != 3)
     {
      tmp_st_1 = "9";
      return(tmp_st_1);
     }
   if(para_0_st == "AUD")
     {
      tmp_st_1 = "1";
      return(tmp_st_1);
     }
   if(para_0_st == "CAD")
     {
      tmp_st_1 = "2";
      return(tmp_st_1);
     }
   if(para_0_st == "EUR")
     {
      tmp_st_1 = "3";
      return(tmp_st_1);
     }
   if(para_0_st == "GBP")
     {
      tmp_st_1 = "4";
      return(tmp_st_1);
     }
   if(para_0_st == "JPY")
     {
      tmp_st_1 = "5";
      return(tmp_st_1);
     }
   if(para_0_st == "NZD")
     {
      tmp_st_1 = "6";
      return(tmp_st_1);
     }
   if(para_0_st == "USD")
     {
      tmp_st_1 = "7";
      return(tmp_st_1);
     }
   tmp_st_1 = "9";
   return(tmp_st_1);
  }
//fun_20 <<==--------   --------
int fun_21()
  {
   int       local_1_in;
   string    local_2_st;
   string    local_3_st;
   string    local_4_st;
   string    local_5_st;
   string    local_6_st;
   string    local_7_st;
   string    local_8_st;
   string    local_9_st;
   int       local_10_in;
   string    local_11_st;
   int       local_12_in;
   int       local_13_in;
   int       local_14_in;
//----- -----
   int        tmp_in_1;
   int        tmp_in_2;
   string     tmp_st_3;
   string     tmp_st_4;
   int        tmp_in_5;
   string     tmp_st_6;
   string     tmp_st_7;
   string     tmp_st_8;
   string     tmp_st_9;

   local_2_st = "" ;
   local_3_st = "" ;
   local_4_st = "" ;
   local_5_st = "" ;
   local_6_st = "" ;
   local_7_st = "" ;
   local_8_st = "" ;
   local_9_st = "" ;
   local_10_in = 0 ;
   local_11_st = MQLInfoString(MQL_PROGRAM_NAME) + " orders " + global_50_st + " " + string(global_8_in) + "-" + string(global_33_do) + "-" + string(global_19_in) + "-" + string(global_20_in) + "-" + string(global_28_do) + "-" + string(global_29_do) + "-" + string(global_30_in) + "-" + string(global_31_do) + ".csv" ;
   FileDelete(StringConcatenate("Report ",AccountNumber()) + "//" + local_11_st,0);
   local_12_in = FileOpen(StringConcatenate("Report ",AccountNumber()) + "//" + local_11_st,11) ;
   if(local_12_in == -1)
     {
      PrintFormat("ошибка открытия файла");
     }
   if(local_12_in != -1)
     {
      FileWrite(local_12_in,"Прогон","Ордер Тиккет","Тип ордера","Лоты","Пара","Цена открытия","Цена закрытия","Stop loss","Take profot","Время открытия","Время закрытия","Меджик номер","Профит","Своп","Комиссии","Коммент","Аналитика");
      FileSeek(local_12_in,0,2);
      local_13_in = 0 ;
      for(local_14_in = 0 ; local_14_in < HistoryTotal() ; local_14_in ++)
        {
         if(OrderSelect(local_14_in,0,1))
           {
            local_10_in = MarketInfo(OrderSymbol(),12) ;
            local_2_st = DoubleToString(OrderProfit(),2) ;
            local_3_st = DoubleToString(OrderSwap(),2) ;
            local_4_st = DoubleToString(OrderCommission(),2) ;
            local_5_st = DoubleToString(OrderLots(),2) ;
            local_6_st = DoubleToString(OrderOpenPrice(),local_10_in) ;
            local_7_st = DoubleToString(OrderClosePrice(),local_10_in) ;
            local_8_st = DoubleToString(OrderStopLoss(),local_10_in) ;
            local_9_st = DoubleToString(OrderTakeProfit(),local_10_in) ;
            tmp_in_1 = OrderTicket();
            for(tmp_in_2 = 0 ; tmp_in_2 < 40000 ; tmp_in_2=tmp_in_2 + 1)
              {
               if(global_87_in_si40000[tmp_in_2] != tmp_in_1)
                  continue;
               tmp_st_3 = global_86_st_si40000[tmp_in_2];
               break;

              }
            tmp_st_3 = "0";
            tmp_st_4 = OrderComment();
            tmp_in_5 = OrderMagicNumber();
            tmp_st_6 = TimeToString(OrderCloseTime(),3);
            tmp_st_7 = TimeToString(OrderOpenTime(),3);
            tmp_st_8 = OrderSymbol();
            tmp_st_9 = "";
            switch(OrderType())
              {
               case 0 :
                  tmp_st_9 = "BUY";
                  break;
               case 1 :
                  tmp_st_9 = "SELL";
                  break;
               case 2 :
                  tmp_st_9 = "BUY LIMIT";
                  break;
               case 3 :
                  tmp_st_9 = "SELL LIMIT";
                  break;
               case 4 :
                  tmp_st_9 = "BUY STOP";
                  break;
               case 5 :
                  tmp_st_9 = "SELL STOP";
                  break;
               case 6 :
                  tmp_st_9 = "DEPOSIT";
              }
            FileWrite(local_12_in,MQLInfoString(MQL_PROGRAM_NAME) + " orders " + string(global_8_in) + "-" + string(global_33_do) + "-" + string(global_19_in) + "-" + string(global_20_in) + "-" + string(global_28_do) + "-" + string(global_29_do) + "-" + string(global_30_in) + "-" + string(global_31_do) + ".csv",DoubleToString(OrderTicket(),0),tmp_st_9,local_5_st,tmp_st_8,local_6_st,local_7_st,local_8_st,local_9_st,tmp_st_7,tmp_st_6,tmp_in_5,local_2_st,local_3_st,local_4_st,tmp_st_4,tmp_st_3);
           }
        }
      FileClose(local_12_in);
     }
   return(0);
  }
//fun_21 <<==--------   --------
int fun_22()
  {
   int       local_1_in;
   int       local_2_in;
   int       local_3_in;
   string    local_4_st;
   string    local_5_st;
   string    local_6_st;
   string    local_7_st;
   int       local_8_in;
   string    local_9_st;
   int       local_10_in;
   int       local_11_in;
//----- -----

   local_2_in = -1 ;
   local_3_in = -1 ;
   local_4_st = "" ;
   local_5_st = "" ;
   local_6_st = "" ;
   local_7_st = "" ;
   local_8_in = 0 ;
   local_9_st = MQLInfoString(MQL_PROGRAM_NAME) + " equity " + global_50_st + " " + string(global_8_in) + "-" + string(global_33_do) + "-" + string(global_19_in) + "-" + string(global_20_in) + "-" + string(global_28_do) + "-" + string(global_29_do) + "-" + string(global_30_in) + "-" + string(global_31_do) + ".csv" ;
   FileDelete(StringConcatenate("Report ",AccountNumber()) + "//" + local_9_st,0);
   local_10_in = FileOpen(StringConcatenate("Report ",AccountNumber()) + "//" + local_9_st,11) ;
   if(local_10_in == -1)
     {
      PrintFormat("ошибка открытия файла");
     }
   if(local_10_in != -1)
     {
      FileWrite(local_10_in,"прогон","пара","дата","balance","equity","min_equity","symbol_koef","margin","max_margin");
      FileSeek(local_10_in,0,2);
      for(local_11_in = 0 ; local_11_in < global_89_in ; local_11_in ++)
        {
         FileWrite(local_10_in,MQLInfoString(MQL_PROGRAM_NAME) + " equity " + string(global_8_in) + "-" + string(global_33_do) + "-" + string(global_19_in) + "-" + string(global_20_in) + "-" + string(global_28_do) + "-" + string(global_29_do) + "-" + string(global_30_in) + "-" + string(global_31_do) + ".csv",global_50_st,TimeToString(int(global_85_do_si7si10000[0][local_11_in]),3),int(global_85_do_si7si10000[1][local_11_in]),int(global_85_do_si7si10000[2][local_11_in]),int(global_85_do_si7si10000[3][local_11_in]),int(global_85_do_si7si10000[5][local_11_in]),int(global_85_do_si7si10000[6][local_11_in]));
        }
      FileClose(local_10_in);
     }
   return(0);
  }
//fun_22 <<==--------   --------
void fun_23(string para_0_st,_sets & para_1_a_160__sets_ko[])
  {
   string    local_1_st_ko[];
   string    local_2_st_ko[];
   string    local_3_st_ko[];
   double    local_4_do;
   double    local_5_do;
   double    local_6_do;
   double    local_7_do;
   double    local_8_do;
   double    local_9_do;
   int       local_10_in;
   string    local_11_st;
//----- -----
   int        tmp_in_1;
   int        tmp_in_2;
   int        tmp_in_3;
   int        tmp_in_4;
   int        tmp_in_5;
   int        tmp_in_6;
   int        tmp_in_7;
   int        tmp_in_8;
   int        tmp_in_9;
   int        tmp_in_10=7318875;

   local_11_st = "base" ;
   local_10_in = global_19_in ;
   local_9_do = global_21_do ;
   local_8_do = global_28_do ;
   local_7_do = global_29_do ;
   local_6_do = global_30_in ;
   local_5_do = global_31_do ;
   local_4_do = global_33_do ;
   StringSplit(para_0_st,StringGetCharacter(";",0),local_1_st_ko);
   tmp_in_1 = ArraySize(local_1_st_ko);
   for(tmp_in_2 = 0 ; tmp_in_2 < tmp_in_1 ; tmp_in_2=tmp_in_2 + 1)
     {
      local_1_st_ko[tmp_in_2] = StringTrimLeft(StringTrimRight(local_1_st_ko[tmp_in_2]));
     }
   tmp_in_3 = 0;
   tmp_in_4 = ArrayRange(local_1_st_ko,0);
   while(tmp_in_3 < MathMin(tmp_in_10,9))
     {
      if(StringTrimLeft(StringTrimRight(local_1_st_ko[tmp_in_3])) != "")
        {
         ArrayResize(para_1_a_160__sets_ko,tmp_in_3 + 1,0);
         para_1_a_160__sets_ko[tmp_in_3].st_1 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].in_2 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].do_3 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].do_4 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].do_5 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].do_6 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].do_7 = local_11_st;
         para_1_a_160__sets_ko[tmp_in_3].do_8 = local_11_st;
         tmp_in_5 = tmp_in_3 + 1;
         PrintFormat("using set #" + IntegerToString(tmp_in_5,0,32) + ": " + local_1_st_ko[tmp_in_3]);
         StringSplit(local_1_st_ko[tmp_in_3],StringGetCharacter(",",0),local_2_st_ko);
         tmp_in_6 = ArraySize(local_2_st_ko);
         for(tmp_in_7 = 0 ; tmp_in_7 < tmp_in_6 ; tmp_in_7=tmp_in_7 + 1)
           {
            local_2_st_ko[tmp_in_7] = StringTrimLeft(StringTrimRight(local_2_st_ko[tmp_in_7]));
           }
         for(tmp_in_3 = 0 ; tmp_in_3 < ArrayRange(local_2_st_ko,0) ; tmp_in_3=tmp_in_3 + 1)
           {
            StringSplit(local_2_st_ko[tmp_in_3],StringGetCharacter("=",0),local_3_st_ko);
            tmp_in_8 = ArraySize(local_3_st_ko);
            for(tmp_in_9 = 0 ; tmp_in_9 < tmp_in_8 ; tmp_in_9=tmp_in_9 + 1)
              {
               local_3_st_ko[tmp_in_9] = StringTrimLeft(StringTrimRight(local_3_st_ko[tmp_in_9]));
              }
            if(local_3_st_ko[0] == "s1")
              {
               para_1_a_160__sets_ko[tmp_in_3].st_1 = local_3_st_ko[1];
              }
            else
              {
               if(local_3_st_ko[0] == "s2")
                 {
                  para_1_a_160__sets_ko[tmp_in_3].in_2 = StringToInteger(local_3_st_ko[1]);
                 }
               else
                 {
                  if(local_3_st_ko[0] == "s3")
                    {
                     para_1_a_160__sets_ko[tmp_in_3].do_3 = StringToDouble(local_3_st_ko[1]);
                    }
                  else
                    {
                     if(local_3_st_ko[0] == "s4")
                       {
                        para_1_a_160__sets_ko[tmp_in_3].do_4 = StringToDouble(local_3_st_ko[1]);
                       }
                     else
                       {
                        if(local_3_st_ko[0] == "s5")
                          {
                           para_1_a_160__sets_ko[tmp_in_3].do_5 = StringToDouble(local_3_st_ko[1]);
                          }
                        else
                          {
                           if(local_3_st_ko[0] == "s6")
                             {
                              para_1_a_160__sets_ko[tmp_in_3].do_6 = StringToDouble(local_3_st_ko[1]);
                             }
                           else
                             {
                              if(local_3_st_ko[0] == "s7")
                                {
                                 para_1_a_160__sets_ko[tmp_in_3].do_7 = StringToDouble(local_3_st_ko[1]);
                                }
                              else
                                {
                                 if(local_3_st_ko[0] == "s8")
                                   {
                                    para_1_a_160__sets_ko[tmp_in_3].do_8 = StringToDouble(local_3_st_ko[1]);
                                   }
                                }
                             }
                          }
                       }
                    }
                 }
              }
           }
        }
      tmp_in_3=tmp_in_3 + 1;
      tmp_in_10 = ArrayRange(local_1_st_ko,0);
     }
  }
//fun_23 <<==--------   --------
void fun_24()
  {
   global_122_do_si6si5si2[0][0][0] = 0.0000897;
   global_122_do_si6si5si2[0][1][0] = 0.0001034;
   global_122_do_si6si5si2[0][2][0] = 0.0001795;
   global_122_do_si6si5si2[0][3][0] = 0.0002647;
   global_122_do_si6si5si2[0][4][0] = 0.0002584;
   global_122_do_si6si5si2[1][0][0] = 0.0000588;
   global_122_do_si6si5si2[1][1][0] = 0.0000813;
   global_122_do_si6si5si2[1][2][0] = 0.0001579;
   global_122_do_si6si5si2[1][3][0] = 0.0003007;
   global_122_do_si6si5si2[1][4][0] = 0.0004076;
   global_122_do_si6si5si2[2][0][0] = 0.0000738;
   global_122_do_si6si5si2[2][1][0] = 0.0000939;
   global_122_do_si6si5si2[2][2][0] = 0.0001887;
   global_122_do_si6si5si2[2][3][0] = 0.0003237;
   global_122_do_si6si5si2[2][4][0] = 0.0003535;
   global_122_do_si6si5si2[3][0][0] = 0.0000645;
   global_122_do_si6si5si2[3][1][0] = 0.0000914;
   global_122_do_si6si5si2[3][2][0] = 0.000148;
   global_122_do_si6si5si2[3][3][0] = 0.0002208;
   global_122_do_si6si5si2[3][4][0] = 0.00025;
   global_122_do_si6si5si2[4][0][0] = 0.000054;
   global_122_do_si6si5si2[4][1][0] = 0.0000639;
   global_122_do_si6si5si2[4][2][0] = 0.0000964;
   global_122_do_si6si5si2[4][3][0] = 0.0001486;
   global_122_do_si6si5si2[4][4][0] = 0.0001765;
   global_122_do_si6si5si2[5][0][0] = 0.000258;
   global_122_do_si6si5si2[5][1][0] = 0.000221;
   global_122_do_si6si5si2[5][2][0] = 0.000159;
   global_122_do_si6si5si2[5][3][0] = 0.000221;
   global_122_do_si6si5si2[5][4][0] = 0.000258;
   global_122_do_si6si5si2[0][0][1] = 0.5292458;
   global_122_do_si6si5si2[0][1][1] = 0.5154581;
   global_122_do_si6si5si2[0][2][1] = 0.4603964;
   global_122_do_si6si5si2[0][3][1] = 0.4371622;
   global_122_do_si6si5si2[0][4][1] = 0.4761835;
   global_122_do_si6si5si2[1][0][1] = 0.5749035;
   global_122_do_si6si5si2[1][1][1] = 0.5317178;
   global_122_do_si6si5si2[1][2][1] = 0.4514056;
   global_122_do_si6si5si2[1][3][1] = 0.3911576;
   global_122_do_si6si5si2[1][4][1] = 0.3704194;
   global_122_do_si6si5si2[2][0][1] = 0.5909246;
   global_122_do_si6si5si2[2][1][1] = 0.5569647;
   global_122_do_si6si5si2[2][2][1] = 0.475178;
   global_122_do_si6si5si2[2][3][1] = 0.4380521;
   global_122_do_si6si5si2[2][4][1] = 0.4670035;
   global_122_do_si6si5si2[3][0][1] = 0.5916496;
   global_122_do_si6si5si2[3][1][1] = 0.5410278;
   global_122_do_si6si5si2[3][2][1] = 0.4918849;
   global_122_do_si6si5si2[3][3][1] = 0.461836;
   global_122_do_si6si5si2[3][4][1] = 0.49;
   global_122_do_si6si5si2[4][0][1] = 0.5956147;
   global_122_do_si6si5si2[4][1][1] = 0.5731626;
   global_122_do_si6si5si2[4][2][1] = 0.538971;
   global_122_do_si6si5si2[4][3][1] = 0.513383;
   global_122_do_si6si5si2[4][4][1] = 0.5309254;
   global_122_do_si6si5si2[5][0][1] = 0.476184;
   global_122_do_si6si5si2[5][1][1] = 0.461836;
   global_122_do_si6si5si2[5][2][1] = 0.479234;
   global_122_do_si6si5si2[5][3][1] = 0.461836;
   global_122_do_si6si5si2[5][4][1] = 0.476184;
  }
//fun_24 <<==--------   --------
bool fun_25(long para_0_lo,string para_1_st,int para_2_in,int para_3_in,int para_4_in,int para_5_in,int para_6_in,int para_7_in,int para_8_in,int para_9_in,int para_10_in,int para_11_in,int para_12_in,char para_13_ch,char para_14_ch,char para_15_ch,long para_16_lo)
  {
   bool      local_1_bo;
//----- -----

   ResetLastError();
   if(ObjectFind(para_0_lo,para_1_st) >= 0)
     {
      ObjectDelete(para_0_lo,para_1_st);
     }
   if(!(ObjectCreate(para_0_lo,para_1_st,28,para_2_in,0,0.0)))
     {
      Print("RectLabelCreate",": не удалось создать прямоугольную метку! Код ошибки = ",GetLastError());
      return(false);
     }
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_XDISTANCE,para_3_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_YDISTANCE,para_4_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_XSIZE,para_5_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_YSIZE,para_6_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_BGCOLOR,para_7_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_BORDER_TYPE,para_8_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_CORNER,para_9_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_COLOR,para_10_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_STYLE,para_11_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_WIDTH,para_12_in);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_BACK,para_13_ch);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_SELECTABLE,para_14_ch);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_SELECTED,para_14_ch);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_HIDDEN,para_15_ch);
   ObjectSetInteger(para_0_lo,para_1_st,OBJPROP_ZORDER,para_16_lo);
   return(true);
  }
//fun_25 <<==--------   --------
void fun_26()
  {
   int       local_1_in;
   int       local_2_in;
   int       local_3_in;
   int       local_4_in;
   int       local_5_in;
   int       local_6_in;
   string    local_7_st;
   string    local_8_st;
//----- -----
   string     tmp_st_1;
   string     tmp_st_2;
   int        tmp_in_3;
   int        tmp_in_4;
   int        tmp_in_5;
   int        tmp_in_6;
   string     tmp_st_7;
   int        tmp_in_8;
   int        tmp_in_9;
   int        tmp_in_10;
   int        tmp_in_11;
   int        tmp_in_12;
   string     tmp_st_13;
   int        tmp_in_14;
   int        tmp_in_15;
   int        tmp_in_16;
   int        tmp_in_17;
   int        tmp_in_18;
   string     tmp_st_19;
   int        tmp_in_20;
   int        tmp_in_21;
   int        tmp_in_22;
   int        tmp_in_23;
   int        tmp_in_24;
   string     tmp_st_25;
   int        tmp_in_26;
   int        tmp_in_27;
   int        tmp_in_28;
   int        tmp_in_29;
   int        tmp_in_30;
   string     tmp_st_31;
   int        tmp_in_32;
   int        tmp_in_33;
   int        tmp_in_34;
   int        tmp_in_35;
   int        tmp_in_36;
   string     tmp_st_37;
   int        tmp_in_38;
   int        tmp_in_39;
   int        tmp_in_40;
   int        tmp_in_41;
   int        tmp_in_42;
   string     tmp_st_43;
   int        tmp_in_44;
   int        tmp_in_45;
   int        tmp_in_46;
   int        tmp_in_47;
   int        tmp_in_48;
   string     tmp_st_49;
   int        tmp_in_50;
   int        tmp_in_51;
   int        tmp_in_52;
   int        tmp_in_53;
   int        tmp_in_54;
   string     tmp_st_55;
   int        tmp_in_56;
   int        tmp_in_57;
   int        tmp_in_58;
   int        tmp_in_59;
   int        tmp_in_60;
   string     tmp_st_61;
   int        tmp_in_62;
   int        tmp_in_63;
   int        tmp_in_64;
   int        tmp_in_65;
   int        tmp_in_66;
   string     tmp_st_67;
   int        tmp_in_68;
   int        tmp_in_69;
   int        tmp_in_70;
   int        tmp_in_71;
   int        tmp_in_72;
   string     tmp_st_73;
   int        tmp_in_74;
   int        tmp_in_75;
   int        tmp_in_76;
   int        tmp_in_77;
   int        tmp_in_78;
   string     tmp_st_79;
   int        tmp_in_80;
   int        tmp_in_81;
   int        tmp_in_82;
   int        tmp_in_83;
   int        tmp_in_84;
   string     tmp_st_85;
   int        tmp_in_86;
   int        tmp_in_87;
   int        tmp_in_88;
   int        tmp_in_89;
   int        tmp_in_90;
   string     tmp_st_91;
   int        tmp_in_92;
   int        tmp_in_93;
   int        tmp_in_94;
   int        tmp_in_95;
   int        tmp_in_96;
   string     tmp_st_97;
   int        tmp_in_98;
   int        tmp_in_99;
   int        tmp_in_100;
   int        tmp_in_101;
   int        tmp_in_102;
   string     tmp_st_103;
   int        tmp_in_104;
   int        tmp_in_105;
   int        tmp_in_106;
   int        tmp_in_107;
   int        tmp_in_108;
   string     tmp_st_109;
   int        tmp_in_110;
   int        tmp_in_111;
   int        tmp_in_112;
   int        tmp_in_113;
   int        tmp_in_114;
   string     tmp_st_115;
   int        tmp_in_116;
   int        tmp_in_117;
   int        tmp_in_118;
   int        tmp_in_119;
   int        tmp_in_120;
   string     tmp_st_121;
   int        tmp_in_122;
   int        tmp_in_123;
   int        tmp_in_124;
   int        tmp_in_125;
   int        tmp_in_126;
   string     tmp_st_127;
   int        tmp_in_128;
   int        tmp_in_129;
   int        tmp_in_130;
   int        tmp_in_131;
   int        tmp_in_132;
   string     tmp_st_133;
   int        tmp_in_134;
   int        tmp_in_135;
   int        tmp_in_136;
   int        tmp_in_137;
   int        tmp_in_138;
   string     tmp_st_139;
   int        tmp_in_140;
   int        tmp_in_141;
   int        tmp_in_142;
   int        tmp_in_143;
   int        tmp_in_144;
   string     tmp_st_145;
   int        tmp_in_146;
   int        tmp_in_147;
   int        tmp_in_148;
   int        tmp_in_149;
   int        tmp_in_150;
   string     tmp_st_151;
   int        tmp_in_152;
   int        tmp_in_153;
   int        tmp_in_154;
   int        tmp_in_155;
   int        tmp_in_156;
   string     tmp_st_157;
   int        tmp_in_158;
   int        tmp_in_159;
   int        tmp_in_160;
   int        tmp_in_161;
   int        tmp_in_162;
   string     tmp_st_163;
   int        tmp_in_164;
   int        tmp_in_165;
   int        tmp_in_166;
   int        tmp_in_167;
   int        tmp_in_168;
   string     tmp_st_169;
   int        tmp_in_170;
   int        tmp_in_171;
   int        tmp_in_172;
   int        tmp_in_173;
   int        tmp_in_174;
   string     tmp_st_175;
   int        tmp_in_176;
   int        tmp_in_177;
   int        tmp_in_178;
   int        tmp_in_179;
   int        tmp_in_180;
   string     tmp_st_181;
   int        tmp_in_182;
   int        tmp_in_183;
   int        tmp_in_184;
   int        tmp_in_185;
   int        tmp_in_186;
   string     tmp_st_187;
   int        tmp_in_188;
   int        tmp_in_189;
   int        tmp_in_190;
   int        tmp_in_191;
   int        tmp_in_192;
   string     tmp_st_193;
   int        tmp_in_194;
   int        tmp_in_195;
   int        tmp_in_196;
   int        tmp_in_197;
   int        tmp_in_198;
   string     tmp_st_199;
   int        tmp_in_200;
   int        tmp_in_201;
   int        tmp_in_202;
   int        tmp_in_203;
   int        tmp_in_204;
   string     tmp_st_205;
   int        tmp_in_206;
   int        tmp_in_207;
   int        tmp_in_208;
   int        tmp_in_209;
   int        tmp_in_210;
   string     tmp_st_211;
   int        tmp_in_212;
   int        tmp_in_213;
   int        tmp_in_214;
   int        tmp_in_215;
   int        tmp_in_216;
   string     tmp_st_217;
   int        tmp_in_218;
   int        tmp_in_219;
   int        tmp_in_220;
   int        tmp_in_221;
   int        tmp_in_222;
   string     tmp_st_223;
   int        tmp_in_224;
   int        tmp_in_225;
   int        tmp_in_226;
   int        tmp_in_227;
   int        tmp_in_228;
   string     tmp_st_229;
   int        tmp_in_230;
   int        tmp_in_231;
   int        tmp_in_232;
   int        tmp_in_233;
   int        tmp_in_234;
   string     tmp_st_235;
   int        tmp_in_236;

   local_1_in = 10 ;
   local_2_in = 20 ;
   local_3_in=global_102_in * 210 / 100;
   local_4_in = 310 ;
   if(!(fun_25(0,"RectLabel",0,10,20,local_3_in,310,8421504,1,0,9109504,0,2,false,false,false,1)))
      return;
   local_2_in=20 + 5;
   local_1_in=global_102_in * 5 / 100 + 10;
   local_5_in=global_102_in * 120 / 100;
   local_6_in = 15 ;
   local_7_st = StringFormat("1:%I64d",AccountLeverage()) ;
   local_8_st = "" ;
   if(global_34_do>0.0)
     {
      if(ArraySize(global_99_st_si1) == 1)
        {
         tmp_st_1 = DoubleToString(USD_for_001,0);
         if(global_100_do_si1[0]==1.0)
           {
            tmp_st_2 = "";
           }
         else
           {
            tmp_st_2 = "(*" + string(global_100_do_si1[0]) + ")";
           }
         tmp_st_1=tmp_st_1 + tmp_st_2;
         local_8_st = tmp_st_1 ;
        }
      else
        {
         local_8_st = DoubleToString(USD_for_001,0) ;
        }
     }
   else
     {
      local_8_st="fix lot=" + string(Lots);
     }
   tmp_in_3 = 16777215;
   tmp_in_4 = 11;
   tmp_in_5 = local_2_in;
   tmp_in_6 = local_1_in;
   tmp_st_7 = "NorthEastWay MT4 v" + global_1_st;
   if(ObjectFind(0,"s1") >= 0)
     {
      ObjectDelete(0,"s1");
     }
   if(ObjectCreate(0,"s1",23,0,0,0.0))
     {
      ObjectSetInteger(0,"s1",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"s1",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"s1",OBJPROP_XDISTANCE,tmp_in_6);
      ObjectSetInteger(0,"s1",OBJPROP_YDISTANCE,tmp_in_5);
      ObjectSetInteger(0,"s1",OBJPROP_FONTSIZE,tmp_in_4);
      ObjectSetInteger(0,"s1",OBJPROP_COLOR,tmp_in_3);
      ObjectSetInteger(0,"s1",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"s1",OBJPROP_TEXT,tmp_st_7);
      ObjectSetString(0,"s1",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"s1",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"s1",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"s1",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"s1",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_8 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_8] = "s1";
     }
   local_2_in +=local_6_in;
   tmp_in_9 = 16777215;
   tmp_in_10 = 9;
   tmp_in_11 = local_2_in;
   tmp_in_12 = local_1_in;
   tmp_st_13 = "-------------------------------";
   if(ObjectFind(0,"s2") >= 0)
     {
      ObjectDelete(0,"s2");
     }
   if(ObjectCreate(0,"s2",23,0,0,0.0))
     {
      ObjectSetInteger(0,"s2",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"s2",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"s2",OBJPROP_XDISTANCE,tmp_in_12);
      ObjectSetInteger(0,"s2",OBJPROP_YDISTANCE,tmp_in_11);
      ObjectSetInteger(0,"s2",OBJPROP_FONTSIZE,tmp_in_10);
      ObjectSetInteger(0,"s2",OBJPROP_COLOR,tmp_in_9);
      ObjectSetInteger(0,"s2",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"s2",OBJPROP_TEXT,tmp_st_13);
      ObjectSetString(0,"s2",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"s2",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"s2",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"s2",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"s2",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_14 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_14] = "s2";
     }
   local_2_in +=local_6_in;
   tmp_in_15 = 16777215;
   tmp_in_16 = 9;
   tmp_in_17 = local_2_in;
   tmp_in_18 = local_1_in;
   tmp_st_19 = "Acc leverage:";
   if(ObjectFind(0,"se1") >= 0)
     {
      ObjectDelete(0,"se1");
     }
   if(ObjectCreate(0,"se1",23,0,0,0.0))
     {
      ObjectSetInteger(0,"se1",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"se1",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"se1",OBJPROP_XDISTANCE,tmp_in_18);
      ObjectSetInteger(0,"se1",OBJPROP_YDISTANCE,tmp_in_17);
      ObjectSetInteger(0,"se1",OBJPROP_FONTSIZE,tmp_in_16);
      ObjectSetInteger(0,"se1",OBJPROP_COLOR,tmp_in_15);
      ObjectSetInteger(0,"se1",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"se1",OBJPROP_TEXT,tmp_st_19);
      ObjectSetString(0,"se1",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"se1",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"se1",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"se1",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"se1",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_20 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_20] = "se1";
     }
   tmp_in_21 = 16777215;
   tmp_in_22 = 9;
   tmp_in_23 = local_2_in;
   tmp_in_24 = local_1_in + local_5_in;
   tmp_st_25 = local_7_st;
   if(ObjectFind(0,"AccLever") >= 0)
     {
      ObjectDelete(0,"AccLever");
     }
   if(ObjectCreate(0,"AccLever",23,0,0,0.0))
     {
      ObjectSetInteger(0,"AccLever",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"AccLever",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"AccLever",OBJPROP_XDISTANCE,tmp_in_24);
      ObjectSetInteger(0,"AccLever",OBJPROP_YDISTANCE,tmp_in_23);
      ObjectSetInteger(0,"AccLever",OBJPROP_FONTSIZE,tmp_in_22);
      ObjectSetInteger(0,"AccLever",OBJPROP_COLOR,tmp_in_21);
      ObjectSetInteger(0,"AccLever",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"AccLever",OBJPROP_TEXT,tmp_st_25);
      ObjectSetString(0,"AccLever",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"AccLever",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"AccLever",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"AccLever",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"AccLever",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_26 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_26] = "AccLever";
     }
   local_2_in +=local_6_in;
   tmp_in_27 = 16777215;
   tmp_in_28 = 9;
   tmp_in_29 = local_2_in;
   tmp_in_30 = local_1_in;
   tmp_st_31 = "Currency:";
   if(ObjectFind(0,"curr_lab") >= 0)
     {
      ObjectDelete(0,"curr_lab");
     }
   if(ObjectCreate(0,"curr_lab",23,0,0,0.0))
     {
      ObjectSetInteger(0,"curr_lab",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"curr_lab",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"curr_lab",OBJPROP_XDISTANCE,tmp_in_30);
      ObjectSetInteger(0,"curr_lab",OBJPROP_YDISTANCE,tmp_in_29);
      ObjectSetInteger(0,"curr_lab",OBJPROP_FONTSIZE,tmp_in_28);
      ObjectSetInteger(0,"curr_lab",OBJPROP_COLOR,tmp_in_27);
      ObjectSetInteger(0,"curr_lab",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"curr_lab",OBJPROP_TEXT,tmp_st_31);
      ObjectSetString(0,"curr_lab",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"curr_lab",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"curr_lab",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"curr_lab",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"curr_lab",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_32 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_32] = "curr_lab";
     }
   tmp_in_33 = 16777215;
   tmp_in_34 = 9;
   tmp_in_35 = local_2_in;
   tmp_in_36 = local_1_in + local_5_in;
   if(ArraySize(global_99_st_si1) >  1)
     {
      tmp_st_37 = "Multi Mode";
     }
   else
     {
      tmp_st_37 = global_99_st_si1[0];
     }
   tmp_st_37 = tmp_st_37;
   if(ObjectFind(0,"curr") >= 0)
     {
      ObjectDelete(0,"curr");
     }
   if(ObjectCreate(0,"curr",23,0,0,0.0))
     {
      ObjectSetInteger(0,"curr",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"curr",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"curr",OBJPROP_XDISTANCE,tmp_in_36);
      ObjectSetInteger(0,"curr",OBJPROP_YDISTANCE,tmp_in_35);
      ObjectSetInteger(0,"curr",OBJPROP_FONTSIZE,tmp_in_34);
      ObjectSetInteger(0,"curr",OBJPROP_COLOR,tmp_in_33);
      ObjectSetInteger(0,"curr",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"curr",OBJPROP_TEXT,tmp_st_37);
      ObjectSetString(0,"curr",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"curr",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"curr",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"curr",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"curr",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_38 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_38] = "curr";
     }
   local_2_in +=local_6_in;
   tmp_in_39 = 16777215;
   tmp_in_40 = 9;
   tmp_in_41 = local_2_in;
   tmp_in_42 = local_1_in;
   tmp_st_43 = "Base for lot calc:";
   if(ObjectFind(0,"base_calc_l") >= 0)
     {
      ObjectDelete(0,"base_calc_l");
     }
   if(ObjectCreate(0,"base_calc_l",23,0,0,0.0))
     {
      ObjectSetInteger(0,"base_calc_l",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_XDISTANCE,tmp_in_42);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_YDISTANCE,tmp_in_41);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_FONTSIZE,tmp_in_40);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_COLOR,tmp_in_39);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"base_calc_l",OBJPROP_TEXT,tmp_st_43);
      ObjectSetString(0,"base_calc_l",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"base_calc_l",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"base_calc_l",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_44 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_44] = "base_calc_l";
     }
   tmp_in_45 = 16777215;
   tmp_in_46 = 9;
   tmp_in_47 = local_2_in;
   tmp_in_48 = local_1_in + local_5_in;
   if(fix_balance>0.0)
     {
      tmp_st_49 = fix_balance;
     }
   else
     {
      tmp_st_49 = EnumToString(TypeBFLC(BaseForLotCalc));
     }
   tmp_st_49 = tmp_st_49;
   if(ObjectFind(0,"bace_calc") >= 0)
     {
      ObjectDelete(0,"bace_calc");
     }
   if(ObjectCreate(0,"bace_calc",23,0,0,0.0))
     {
      ObjectSetInteger(0,"bace_calc",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"bace_calc",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"bace_calc",OBJPROP_XDISTANCE,tmp_in_48);
      ObjectSetInteger(0,"bace_calc",OBJPROP_YDISTANCE,tmp_in_47);
      ObjectSetInteger(0,"bace_calc",OBJPROP_FONTSIZE,tmp_in_46);
      ObjectSetInteger(0,"bace_calc",OBJPROP_COLOR,tmp_in_45);
      ObjectSetInteger(0,"bace_calc",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"bace_calc",OBJPROP_TEXT,tmp_st_49);
      ObjectSetString(0,"bace_calc",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"bace_calc",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"bace_calc",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"bace_calc",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"bace_calc",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_50 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_50] = "bace_calc";
     }
   local_2_in +=local_6_in;
   tmp_in_51 = 16777215;
   tmp_in_52 = 9;
   tmp_in_53 = local_2_in;
   tmp_in_54 = local_1_in;
   tmp_st_55 = "AutoMM:";
   if(ObjectFind(0,"se21") >= 0)
     {
      ObjectDelete(0,"se21");
     }
   if(ObjectCreate(0,"se21",23,0,0,0.0))
     {
      ObjectSetInteger(0,"se21",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"se21",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"se21",OBJPROP_XDISTANCE,tmp_in_54);
      ObjectSetInteger(0,"se21",OBJPROP_YDISTANCE,tmp_in_53);
      ObjectSetInteger(0,"se21",OBJPROP_FONTSIZE,tmp_in_52);
      ObjectSetInteger(0,"se21",OBJPROP_COLOR,tmp_in_51);
      ObjectSetInteger(0,"se21",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"se21",OBJPROP_TEXT,tmp_st_55);
      ObjectSetString(0,"se21",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"se21",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"se21",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"se21",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"se21",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_56 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_56] = "se21";
     }
   tmp_in_57 = 16777215;
   tmp_in_58 = 9;
   tmp_in_59 = local_2_in;
   tmp_in_60 = local_1_in + local_5_in;
   tmp_st_61 = local_8_st;
   if(ObjectFind(0,"AutoMM") >= 0)
     {
      ObjectDelete(0,"AutoMM");
     }
   if(ObjectCreate(0,"AutoMM",23,0,0,0.0))
     {
      ObjectSetInteger(0,"AutoMM",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"AutoMM",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"AutoMM",OBJPROP_XDISTANCE,tmp_in_60);
      ObjectSetInteger(0,"AutoMM",OBJPROP_YDISTANCE,tmp_in_59);
      ObjectSetInteger(0,"AutoMM",OBJPROP_FONTSIZE,tmp_in_58);
      ObjectSetInteger(0,"AutoMM",OBJPROP_COLOR,tmp_in_57);
      ObjectSetInteger(0,"AutoMM",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"AutoMM",OBJPROP_TEXT,tmp_st_61);
      ObjectSetString(0,"AutoMM",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"AutoMM",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"AutoMM",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"AutoMM",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"AutoMM",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_62 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_62] = "AutoMM";
     }
   local_2_in +=local_6_in;
   tmp_in_63 = 16777215;
   tmp_in_64 = 9;
   tmp_in_65 = local_2_in;
   tmp_in_66 = local_1_in;
   tmp_st_67 = "First Real Deal:";
   if(ObjectFind(0,"frd_1") >= 0)
     {
      ObjectDelete(0,"frd_1");
     }
   if(ObjectCreate(0,"frd_1",23,0,0,0.0))
     {
      ObjectSetInteger(0,"frd_1",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"frd_1",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"frd_1",OBJPROP_XDISTANCE,tmp_in_66);
      ObjectSetInteger(0,"frd_1",OBJPROP_YDISTANCE,tmp_in_65);
      ObjectSetInteger(0,"frd_1",OBJPROP_FONTSIZE,tmp_in_64);
      ObjectSetInteger(0,"frd_1",OBJPROP_COLOR,tmp_in_63);
      ObjectSetInteger(0,"frd_1",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"frd_1",OBJPROP_TEXT,tmp_st_67);
      ObjectSetString(0,"frd_1",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"frd_1",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"frd_1",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"frd_1",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"frd_1",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_68 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_68] = "frd_1";
     }
   tmp_in_69 = 16777215;
   tmp_in_70 = 9;
   tmp_in_71 = local_2_in;
   tmp_in_72 = local_1_in + local_5_in;
   tmp_st_73 = FirstNumberp;
   if(ObjectFind(0,"frd") >= 0)
     {
      ObjectDelete(0,"frd");
     }
   if(ObjectCreate(0,"frd",23,0,0,0.0))
     {
      ObjectSetInteger(0,"frd",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"frd",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"frd",OBJPROP_XDISTANCE,tmp_in_72);
      ObjectSetInteger(0,"frd",OBJPROP_YDISTANCE,tmp_in_71);
      ObjectSetInteger(0,"frd",OBJPROP_FONTSIZE,tmp_in_70);
      ObjectSetInteger(0,"frd",OBJPROP_COLOR,tmp_in_69);
      ObjectSetInteger(0,"frd",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"frd",OBJPROP_TEXT,tmp_st_73);
      ObjectSetString(0,"frd",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"frd",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"frd",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"frd",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"frd",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_74 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_74] = "frd";
     }
   local_2_in +=local_6_in;
   tmp_in_75 = 16777215;
   tmp_in_76 = 9;
   tmp_in_77 = local_2_in;
   tmp_in_78 = local_1_in;
   tmp_st_79 = "Base lot:";
   if(ObjectFind(0,"se2") >= 0)
     {
      ObjectDelete(0,"se2");
     }
   if(ObjectCreate(0,"se2",23,0,0,0.0))
     {
      ObjectSetInteger(0,"se2",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"se2",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"se2",OBJPROP_XDISTANCE,tmp_in_78);
      ObjectSetInteger(0,"se2",OBJPROP_YDISTANCE,tmp_in_77);
      ObjectSetInteger(0,"se2",OBJPROP_FONTSIZE,tmp_in_76);
      ObjectSetInteger(0,"se2",OBJPROP_COLOR,tmp_in_75);
      ObjectSetInteger(0,"se2",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"se2",OBJPROP_TEXT,tmp_st_79);
      ObjectSetString(0,"se2",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"se2",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"se2",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"se2",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"se2",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_80 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_80] = "se2";
     }
   tmp_in_81 = 16777215;
   tmp_in_82 = 9;
   tmp_in_83 = local_2_in;
   tmp_in_84 = local_1_in + local_5_in;
   tmp_st_85 = "0";
   if(ObjectFind(0,"Sizelot") >= 0)
     {
      ObjectDelete(0,"Sizelot");
     }
   if(ObjectCreate(0,"Sizelot",23,0,0,0.0))
     {
      ObjectSetInteger(0,"Sizelot",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"Sizelot",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"Sizelot",OBJPROP_XDISTANCE,tmp_in_84);
      ObjectSetInteger(0,"Sizelot",OBJPROP_YDISTANCE,tmp_in_83);
      ObjectSetInteger(0,"Sizelot",OBJPROP_FONTSIZE,tmp_in_82);
      ObjectSetInteger(0,"Sizelot",OBJPROP_COLOR,tmp_in_81);
      ObjectSetInteger(0,"Sizelot",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"Sizelot",OBJPROP_TEXT,tmp_st_85);
      ObjectSetString(0,"Sizelot",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"Sizelot",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"Sizelot",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"Sizelot",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"Sizelot",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_86 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_86] = "Sizelot";
     }
   local_2_in +=local_6_in;
   tmp_in_87 = 16777215;
   tmp_in_88 = 9;
   tmp_in_89 = local_2_in;
   tmp_in_90 = local_1_in;
   tmp_st_91 = "Recovery?:";
   if(ObjectFind(0,"se3") >= 0)
     {
      ObjectDelete(0,"se3");
     }
   if(ObjectCreate(0,"se3",23,0,0,0.0))
     {
      ObjectSetInteger(0,"se3",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"se3",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"se3",OBJPROP_XDISTANCE,tmp_in_90);
      ObjectSetInteger(0,"se3",OBJPROP_YDISTANCE,tmp_in_89);
      ObjectSetInteger(0,"se3",OBJPROP_FONTSIZE,tmp_in_88);
      ObjectSetInteger(0,"se3",OBJPROP_COLOR,tmp_in_87);
      ObjectSetInteger(0,"se3",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"se3",OBJPROP_TEXT,tmp_st_91);
      ObjectSetString(0,"se3",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"se3",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"se3",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"se3",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"se3",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_92 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_92] = "se3";
     }
   tmp_in_93 = 16777215;
   tmp_in_94 = 9;
   tmp_in_95 = local_2_in;
   tmp_in_96 = local_1_in + local_5_in;
   tmp_st_97 = UseUnloss;
   if(ObjectFind(0,"Recovery") >= 0)
     {
      ObjectDelete(0,"Recovery");
     }
   if(ObjectCreate(0,"Recovery",23,0,0,0.0))
     {
      ObjectSetInteger(0,"Recovery",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"Recovery",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"Recovery",OBJPROP_XDISTANCE,tmp_in_96);
      ObjectSetInteger(0,"Recovery",OBJPROP_YDISTANCE,tmp_in_95);
      ObjectSetInteger(0,"Recovery",OBJPROP_FONTSIZE,tmp_in_94);
      ObjectSetInteger(0,"Recovery",OBJPROP_COLOR,tmp_in_93);
      ObjectSetInteger(0,"Recovery",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"Recovery",OBJPROP_TEXT,tmp_st_97);
      ObjectSetString(0,"Recovery",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"Recovery",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"Recovery",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"Recovery",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"Recovery",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_98 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_98] = "Recovery";
     }
   local_2_in +=local_6_in;
   tmp_in_99 = 16777215;
   tmp_in_100 = 9;
   tmp_in_101 = local_2_in;
   tmp_in_102 = local_1_in;
   tmp_st_103 = "Comment:";
   if(ObjectFind(0,"se4") >= 0)
     {
      ObjectDelete(0,"se4");
     }
   if(ObjectCreate(0,"se4",23,0,0,0.0))
     {
      ObjectSetInteger(0,"se4",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"se4",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"se4",OBJPROP_XDISTANCE,tmp_in_102);
      ObjectSetInteger(0,"se4",OBJPROP_YDISTANCE,tmp_in_101);
      ObjectSetInteger(0,"se4",OBJPROP_FONTSIZE,tmp_in_100);
      ObjectSetInteger(0,"se4",OBJPROP_COLOR,tmp_in_99);
      ObjectSetInteger(0,"se4",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"se4",OBJPROP_TEXT,tmp_st_103);
      ObjectSetString(0,"se4",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"se4",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"se4",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"se4",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"se4",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_104 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_104] = "se4";
     }
   tmp_in_105 = 16777215;
   tmp_in_106 = 9;
   tmp_in_107 = local_2_in;
   tmp_in_108 = local_1_in + local_5_in;
   tmp_st_109 = ".";
   if(ObjectFind(0,"Comment") >= 0)
     {
      ObjectDelete(0,"Comment");
     }
   if(ObjectCreate(0,"Comment",23,0,0,0.0))
     {
      ObjectSetInteger(0,"Comment",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"Comment",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"Comment",OBJPROP_XDISTANCE,tmp_in_108);
      ObjectSetInteger(0,"Comment",OBJPROP_YDISTANCE,tmp_in_107);
      ObjectSetInteger(0,"Comment",OBJPROP_FONTSIZE,tmp_in_106);
      ObjectSetInteger(0,"Comment",OBJPROP_COLOR,tmp_in_105);
      ObjectSetInteger(0,"Comment",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"Comment",OBJPROP_TEXT,tmp_st_109);
      ObjectSetString(0,"Comment",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"Comment",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"Comment",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"Comment",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"Comment",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_110 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_110] = "Comment";
     }
   local_2_in +=local_6_in;
   tmp_in_111 = 16777215;
   tmp_in_112 = 9;
   tmp_in_113 = local_2_in;
   tmp_in_114 = local_1_in;
   tmp_st_115 = "-------------------------------";
   if(ObjectFind(0,"s3") >= 0)
     {
      ObjectDelete(0,"s3");
     }
   if(ObjectCreate(0,"s3",23,0,0,0.0))
     {
      ObjectSetInteger(0,"s3",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"s3",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"s3",OBJPROP_XDISTANCE,tmp_in_114);
      ObjectSetInteger(0,"s3",OBJPROP_YDISTANCE,tmp_in_113);
      ObjectSetInteger(0,"s3",OBJPROP_FONTSIZE,tmp_in_112);
      ObjectSetInteger(0,"s3",OBJPROP_COLOR,tmp_in_111);
      ObjectSetInteger(0,"s3",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"s3",OBJPROP_TEXT,tmp_st_115);
      ObjectSetString(0,"s3",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"s3",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"s3",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"s3",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"s3",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_116 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_116] = "s3";
     }
   local_2_in +=local_6_in;
   if(virtBalance!=0.0 && USD_for_001>0.0)
     {
      tmp_in_117 = 16777215;
      tmp_in_118 = 9;
      tmp_in_119 = local_2_in;
      tmp_in_120 = local_1_in;
      tmp_st_121 = "Full Balance:";
      if(ObjectFind(0,"lt40") >= 0)
        {
         ObjectDelete(0,"lt40");
        }
      if(ObjectCreate(0,"lt40",23,0,0,0.0))
        {
         ObjectSetInteger(0,"lt40",OBJPROP_ANCHOR,0);
         ObjectSetInteger(0,"lt40",OBJPROP_CORNER,0);
         ObjectSetInteger(0,"lt40",OBJPROP_XDISTANCE,tmp_in_120);
         ObjectSetInteger(0,"lt40",OBJPROP_YDISTANCE,tmp_in_119);
         ObjectSetInteger(0,"lt40",OBJPROP_FONTSIZE,tmp_in_118);
         ObjectSetInteger(0,"lt40",OBJPROP_COLOR,tmp_in_117);
         ObjectSetInteger(0,"lt40",OBJPROP_SELECTABLE,1);
         ObjectSetString(0,"lt40",OBJPROP_TEXT,tmp_st_121);
         ObjectSetString(0,"lt40",OBJPROP_FONT,"Calibri");
         ObjectSetInteger(0,"lt40",OBJPROP_SELECTED,0);
         ObjectSetInteger(0,"lt40",OBJPROP_HIDDEN,0);
         ObjectSetInteger(0,"lt40",OBJPROP_ZORDER,1);
         ObjectSetInteger(0,"lt40",OBJPROP_SELECTABLE,0);
         ChartRedraw(0);
         tmp_in_122 = ArraySize(global_124_st_ko);
         ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
         global_124_st_ko[tmp_in_122] = "lt40";
        }
      tmp_in_123 = 16777215;
      tmp_in_124 = 9;
      tmp_in_125 = local_2_in;
      tmp_in_126 = local_1_in + local_5_in;
      tmp_st_127 = "0.0";
      if(ObjectFind(0,"FullBalance") >= 0)
        {
         ObjectDelete(0,"FullBalance");
        }
      if(ObjectCreate(0,"FullBalance",23,0,0,0.0))
        {
         ObjectSetInteger(0,"FullBalance",OBJPROP_ANCHOR,0);
         ObjectSetInteger(0,"FullBalance",OBJPROP_CORNER,0);
         ObjectSetInteger(0,"FullBalance",OBJPROP_XDISTANCE,tmp_in_126);
         ObjectSetInteger(0,"FullBalance",OBJPROP_YDISTANCE,tmp_in_125);
         ObjectSetInteger(0,"FullBalance",OBJPROP_FONTSIZE,tmp_in_124);
         ObjectSetInteger(0,"FullBalance",OBJPROP_COLOR,tmp_in_123);
         ObjectSetInteger(0,"FullBalance",OBJPROP_SELECTABLE,1);
         ObjectSetString(0,"FullBalance",OBJPROP_TEXT,tmp_st_127);
         ObjectSetString(0,"FullBalance",OBJPROP_FONT,"Calibri");
         ObjectSetInteger(0,"FullBalance",OBJPROP_SELECTED,0);
         ObjectSetInteger(0,"FullBalance",OBJPROP_HIDDEN,0);
         ObjectSetInteger(0,"FullBalance",OBJPROP_ZORDER,1);
         ObjectSetInteger(0,"FullBalance",OBJPROP_SELECTABLE,0);
         ChartRedraw(0);
         tmp_in_128 = ArraySize(global_124_st_ko);
         ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
         global_124_st_ko[tmp_in_128] = "FullBalance";
        }
      local_2_in +=local_6_in;
      tmp_in_129 = 16777215;
      tmp_in_130 = 9;
      tmp_in_131 = local_2_in;
      tmp_in_132 = local_1_in;
      tmp_st_133 = "Full Equity:";
      if(ObjectFind(0,"lt410") >= 0)
        {
         ObjectDelete(0,"lt410");
        }
      if(ObjectCreate(0,"lt410",23,0,0,0.0))
        {
         ObjectSetInteger(0,"lt410",OBJPROP_ANCHOR,0);
         ObjectSetInteger(0,"lt410",OBJPROP_CORNER,0);
         ObjectSetInteger(0,"lt410",OBJPROP_XDISTANCE,tmp_in_132);
         ObjectSetInteger(0,"lt410",OBJPROP_YDISTANCE,tmp_in_131);
         ObjectSetInteger(0,"lt410",OBJPROP_FONTSIZE,tmp_in_130);
         ObjectSetInteger(0,"lt410",OBJPROP_COLOR,tmp_in_129);
         ObjectSetInteger(0,"lt410",OBJPROP_SELECTABLE,1);
         ObjectSetString(0,"lt410",OBJPROP_TEXT,tmp_st_133);
         ObjectSetString(0,"lt410",OBJPROP_FONT,"Calibri");
         ObjectSetInteger(0,"lt410",OBJPROP_SELECTED,0);
         ObjectSetInteger(0,"lt410",OBJPROP_HIDDEN,0);
         ObjectSetInteger(0,"lt410",OBJPROP_ZORDER,1);
         ObjectSetInteger(0,"lt410",OBJPROP_SELECTABLE,0);
         ChartRedraw(0);
         tmp_in_134 = ArraySize(global_124_st_ko);
         ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
         global_124_st_ko[tmp_in_134] = "lt410";
        }
      tmp_in_135 = 16777215;
      tmp_in_136 = 9;
      tmp_in_137 = local_2_in;
      tmp_in_138 = local_1_in + local_5_in;
      tmp_st_139 = "0.0";
      if(ObjectFind(0,"FullEquity") >= 0)
        {
         ObjectDelete(0,"FullEquity");
        }
      if(ObjectCreate(0,"FullEquity",23,0,0,0.0))
        {
         ObjectSetInteger(0,"FullEquity",OBJPROP_ANCHOR,0);
         ObjectSetInteger(0,"FullEquity",OBJPROP_CORNER,0);
         ObjectSetInteger(0,"FullEquity",OBJPROP_XDISTANCE,tmp_in_138);
         ObjectSetInteger(0,"FullEquity",OBJPROP_YDISTANCE,tmp_in_137);
         ObjectSetInteger(0,"FullEquity",OBJPROP_FONTSIZE,tmp_in_136);
         ObjectSetInteger(0,"FullEquity",OBJPROP_COLOR,tmp_in_135);
         ObjectSetInteger(0,"FullEquity",OBJPROP_SELECTABLE,1);
         ObjectSetString(0,"FullEquity",OBJPROP_TEXT,tmp_st_139);
         ObjectSetString(0,"FullEquity",OBJPROP_FONT,"Calibri");
         ObjectSetInteger(0,"FullEquity",OBJPROP_SELECTED,0);
         ObjectSetInteger(0,"FullEquity",OBJPROP_HIDDEN,0);
         ObjectSetInteger(0,"FullEquity",OBJPROP_ZORDER,1);
         ObjectSetInteger(0,"FullEquity",OBJPROP_SELECTABLE,0);
         ChartRedraw(0);
         tmp_in_140 = ArraySize(global_124_st_ko);
         ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
         global_124_st_ko[tmp_in_140] = "FullEquity";
        }
      local_2_in +=local_6_in;
      if(ObjectSetInteger(0,"RectLabel",OBJPROP_YSIZE,local_4_in + local_6_in * 2))
        {
         ChartRedraw(0);
        }
     }
   tmp_in_141 = 16777215;
   tmp_in_142 = 9;
   tmp_in_143 = local_2_in;
   tmp_in_144 = local_1_in;
   tmp_st_145 = "Balance:";
   if(ObjectFind(0,"lt4") >= 0)
     {
      ObjectDelete(0,"lt4");
     }
   if(ObjectCreate(0,"lt4",23,0,0,0.0))
     {
      ObjectSetInteger(0,"lt4",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"lt4",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"lt4",OBJPROP_XDISTANCE,tmp_in_144);
      ObjectSetInteger(0,"lt4",OBJPROP_YDISTANCE,tmp_in_143);
      ObjectSetInteger(0,"lt4",OBJPROP_FONTSIZE,tmp_in_142);
      ObjectSetInteger(0,"lt4",OBJPROP_COLOR,tmp_in_141);
      ObjectSetInteger(0,"lt4",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"lt4",OBJPROP_TEXT,tmp_st_145);
      ObjectSetString(0,"lt4",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"lt4",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"lt4",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"lt4",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"lt4",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_146 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_146] = "lt4";
     }
   tmp_in_147 = 16777215;
   tmp_in_148 = 9;
   tmp_in_149 = local_2_in;
   tmp_in_150 = local_1_in + local_5_in;
   tmp_st_151 = "0.0";
   if(ObjectFind(0,"Balance") >= 0)
     {
      ObjectDelete(0,"Balance");
     }
   if(ObjectCreate(0,"Balance",23,0,0,0.0))
     {
      ObjectSetInteger(0,"Balance",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"Balance",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"Balance",OBJPROP_XDISTANCE,tmp_in_150);
      ObjectSetInteger(0,"Balance",OBJPROP_YDISTANCE,tmp_in_149);
      ObjectSetInteger(0,"Balance",OBJPROP_FONTSIZE,tmp_in_148);
      ObjectSetInteger(0,"Balance",OBJPROP_COLOR,tmp_in_147);
      ObjectSetInteger(0,"Balance",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"Balance",OBJPROP_TEXT,tmp_st_151);
      ObjectSetString(0,"Balance",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"Balance",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"Balance",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"Balance",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"Balance",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_152 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_152] = "Balance";
     }
   local_2_in +=local_6_in;
   tmp_in_153 = 16777215;
   tmp_in_154 = 9;
   tmp_in_155 = local_2_in;
   tmp_in_156 = local_1_in;
   tmp_st_157 = "Equity:";
   if(ObjectFind(0,"lt41") >= 0)
     {
      ObjectDelete(0,"lt41");
     }
   if(ObjectCreate(0,"lt41",23,0,0,0.0))
     {
      ObjectSetInteger(0,"lt41",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"lt41",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"lt41",OBJPROP_XDISTANCE,tmp_in_156);
      ObjectSetInteger(0,"lt41",OBJPROP_YDISTANCE,tmp_in_155);
      ObjectSetInteger(0,"lt41",OBJPROP_FONTSIZE,tmp_in_154);
      ObjectSetInteger(0,"lt41",OBJPROP_COLOR,tmp_in_153);
      ObjectSetInteger(0,"lt41",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"lt41",OBJPROP_TEXT,tmp_st_157);
      ObjectSetString(0,"lt41",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"lt41",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"lt41",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"lt41",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"lt41",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_158 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_158] = "lt41";
     }
   tmp_in_159 = 16777215;
   tmp_in_160 = 9;
   tmp_in_161 = local_2_in;
   tmp_in_162 = local_1_in + local_5_in;
   tmp_st_163 = "0.0";
   if(ObjectFind(0,"Equity") >= 0)
     {
      ObjectDelete(0,"Equity");
     }
   if(ObjectCreate(0,"Equity",23,0,0,0.0))
     {
      ObjectSetInteger(0,"Equity",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"Equity",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"Equity",OBJPROP_XDISTANCE,tmp_in_162);
      ObjectSetInteger(0,"Equity",OBJPROP_YDISTANCE,tmp_in_161);
      ObjectSetInteger(0,"Equity",OBJPROP_FONTSIZE,tmp_in_160);
      ObjectSetInteger(0,"Equity",OBJPROP_COLOR,tmp_in_159);
      ObjectSetInteger(0,"Equity",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"Equity",OBJPROP_TEXT,tmp_st_163);
      ObjectSetString(0,"Equity",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"Equity",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"Equity",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"Equity",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"Equity",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_164 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_164] = "Equity";
     }
   local_2_in +=local_6_in;
   tmp_in_165 = 16777215;
   tmp_in_166 = 9;
   tmp_in_167 = local_2_in;
   tmp_in_168 = local_1_in;
   tmp_st_169 = "Floating Profit:";
   if(ObjectFind(0,"lt5") >= 0)
     {
      ObjectDelete(0,"lt5");
     }
   if(ObjectCreate(0,"lt5",23,0,0,0.0))
     {
      ObjectSetInteger(0,"lt5",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"lt5",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"lt5",OBJPROP_XDISTANCE,tmp_in_168);
      ObjectSetInteger(0,"lt5",OBJPROP_YDISTANCE,tmp_in_167);
      ObjectSetInteger(0,"lt5",OBJPROP_FONTSIZE,tmp_in_166);
      ObjectSetInteger(0,"lt5",OBJPROP_COLOR,tmp_in_165);
      ObjectSetInteger(0,"lt5",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"lt5",OBJPROP_TEXT,tmp_st_169);
      ObjectSetString(0,"lt5",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"lt5",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"lt5",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"lt5",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"lt5",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_170 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_170] = "lt5";
     }
   tmp_in_171 = 16777215;
   tmp_in_172 = 9;
   tmp_in_173 = local_2_in;
   tmp_in_174 = local_1_in + local_5_in;
   tmp_st_175 = "0.0";
   if(ObjectFind(0,"FloatProf") >= 0)
     {
      ObjectDelete(0,"FloatProf");
     }
   if(ObjectCreate(0,"FloatProf",23,0,0,0.0))
     {
      ObjectSetInteger(0,"FloatProf",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"FloatProf",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"FloatProf",OBJPROP_XDISTANCE,tmp_in_174);
      ObjectSetInteger(0,"FloatProf",OBJPROP_YDISTANCE,tmp_in_173);
      ObjectSetInteger(0,"FloatProf",OBJPROP_FONTSIZE,tmp_in_172);
      ObjectSetInteger(0,"FloatProf",OBJPROP_COLOR,tmp_in_171);
      ObjectSetInteger(0,"FloatProf",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"FloatProf",OBJPROP_TEXT,tmp_st_175);
      ObjectSetString(0,"FloatProf",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"FloatProf",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"FloatProf",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"FloatProf",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"FloatProf",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_176 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_176] = "FloatProf";
     }
   local_2_in +=local_6_in;
   tmp_in_177 = 16777215;
   tmp_in_178 = 9;
   tmp_in_179 = local_2_in;
   tmp_in_180 = local_1_in;
   tmp_st_181 = "Floating Profit %:";
   if(ObjectFind(0,"lt3") >= 0)
     {
      ObjectDelete(0,"lt3");
     }
   if(ObjectCreate(0,"lt3",23,0,0,0.0))
     {
      ObjectSetInteger(0,"lt3",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"lt3",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"lt3",OBJPROP_XDISTANCE,tmp_in_180);
      ObjectSetInteger(0,"lt3",OBJPROP_YDISTANCE,tmp_in_179);
      ObjectSetInteger(0,"lt3",OBJPROP_FONTSIZE,tmp_in_178);
      ObjectSetInteger(0,"lt3",OBJPROP_COLOR,tmp_in_177);
      ObjectSetInteger(0,"lt3",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"lt3",OBJPROP_TEXT,tmp_st_181);
      ObjectSetString(0,"lt3",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"lt3",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"lt3",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"lt3",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"lt3",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_182 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_182] = "lt3";
     }
   tmp_in_183 = 16777215;
   tmp_in_184 = 9;
   tmp_in_185 = local_2_in;
   tmp_in_186 = local_1_in + local_5_in;
   tmp_st_187 = "0.0%";
   if(ObjectFind(0,"FloatProf%") >= 0)
     {
      ObjectDelete(0,"FloatProf%");
     }
   if(ObjectCreate(0,"FloatProf%",23,0,0,0.0))
     {
      ObjectSetInteger(0,"FloatProf%",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_XDISTANCE,tmp_in_186);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_YDISTANCE,tmp_in_185);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_FONTSIZE,tmp_in_184);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_COLOR,tmp_in_183);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"FloatProf%",OBJPROP_TEXT,tmp_st_187);
      ObjectSetString(0,"FloatProf%",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"FloatProf%",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"FloatProf%",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_188 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_188] = "FloatProf%";
     }
   local_2_in +=local_6_in;
   tmp_in_189 = 16777215;
   tmp_in_190 = 9;
   tmp_in_191 = local_2_in;
   tmp_in_192 = local_1_in;
   tmp_st_193 = "Open Lots:";
   if(ObjectFind(0,"lt2") >= 0)
     {
      ObjectDelete(0,"lt2");
     }
   if(ObjectCreate(0,"lt2",23,0,0,0.0))
     {
      ObjectSetInteger(0,"lt2",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"lt2",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"lt2",OBJPROP_XDISTANCE,tmp_in_192);
      ObjectSetInteger(0,"lt2",OBJPROP_YDISTANCE,tmp_in_191);
      ObjectSetInteger(0,"lt2",OBJPROP_FONTSIZE,tmp_in_190);
      ObjectSetInteger(0,"lt2",OBJPROP_COLOR,tmp_in_189);
      ObjectSetInteger(0,"lt2",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"lt2",OBJPROP_TEXT,tmp_st_193);
      ObjectSetString(0,"lt2",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"lt2",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"lt2",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"lt2",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"lt2",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_194 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_194] = "lt2";
     }
   tmp_in_195 = 16777215;
   tmp_in_196 = 9;
   tmp_in_197 = local_2_in;
   tmp_in_198 = local_1_in + local_5_in;
   tmp_st_199 = "0.0";
   if(ObjectFind(0,"OpenLots") >= 0)
     {
      ObjectDelete(0,"OpenLots");
     }
   if(ObjectCreate(0,"OpenLots",23,0,0,0.0))
     {
      ObjectSetInteger(0,"OpenLots",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"OpenLots",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"OpenLots",OBJPROP_XDISTANCE,tmp_in_198);
      ObjectSetInteger(0,"OpenLots",OBJPROP_YDISTANCE,tmp_in_197);
      ObjectSetInteger(0,"OpenLots",OBJPROP_FONTSIZE,tmp_in_196);
      ObjectSetInteger(0,"OpenLots",OBJPROP_COLOR,tmp_in_195);
      ObjectSetInteger(0,"OpenLots",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"OpenLots",OBJPROP_TEXT,tmp_st_199);
      ObjectSetString(0,"OpenLots",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"OpenLots",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"OpenLots",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"OpenLots",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"OpenLots",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_200 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_200] = "OpenLots";
     }
   local_2_in +=local_6_in;
   tmp_in_201 = 16777215;
   tmp_in_202 = 9;
   tmp_in_203 = local_2_in;
   tmp_in_204 = local_1_in;
   tmp_st_205 = "Current leverage:";
   if(ObjectFind(0,"lt1") >= 0)
     {
      ObjectDelete(0,"lt1");
     }
   if(ObjectCreate(0,"lt1",23,0,0,0.0))
     {
      ObjectSetInteger(0,"lt1",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"lt1",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"lt1",OBJPROP_XDISTANCE,tmp_in_204);
      ObjectSetInteger(0,"lt1",OBJPROP_YDISTANCE,tmp_in_203);
      ObjectSetInteger(0,"lt1",OBJPROP_FONTSIZE,tmp_in_202);
      ObjectSetInteger(0,"lt1",OBJPROP_COLOR,tmp_in_201);
      ObjectSetInteger(0,"lt1",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"lt1",OBJPROP_TEXT,tmp_st_205);
      ObjectSetString(0,"lt1",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"lt1",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"lt1",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"lt1",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"lt1",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_206 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_206] = "lt1";
     }
   tmp_in_207 = 16777215;
   tmp_in_208 = 9;
   tmp_in_209 = local_2_in;
   tmp_in_210 = local_1_in + local_5_in;
   tmp_st_211 = ":";
   if(ObjectFind(0,"CurrLev") >= 0)
     {
      ObjectDelete(0,"CurrLev");
     }
   if(ObjectCreate(0,"CurrLev",23,0,0,0.0))
     {
      ObjectSetInteger(0,"CurrLev",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"CurrLev",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"CurrLev",OBJPROP_XDISTANCE,tmp_in_210);
      ObjectSetInteger(0,"CurrLev",OBJPROP_YDISTANCE,tmp_in_209);
      ObjectSetInteger(0,"CurrLev",OBJPROP_FONTSIZE,tmp_in_208);
      ObjectSetInteger(0,"CurrLev",OBJPROP_COLOR,tmp_in_207);
      ObjectSetInteger(0,"CurrLev",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"CurrLev",OBJPROP_TEXT,tmp_st_211);
      ObjectSetString(0,"CurrLev",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"CurrLev",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"CurrLev",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"CurrLev",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"CurrLev",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_212 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_212] = "CurrLev";
     }
   local_2_in +=local_6_in;
   tmp_in_213 = 16777215;
   tmp_in_214 = 9;
   tmp_in_215 = local_2_in;
   tmp_in_216 = local_1_in;
   tmp_st_217 = "Current spread:";
   if(ObjectFind(0,"spread_lb") >= 0)
     {
      ObjectDelete(0,"spread_lb");
     }
   if(ObjectCreate(0,"spread_lb",23,0,0,0.0))
     {
      ObjectSetInteger(0,"spread_lb",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"spread_lb",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"spread_lb",OBJPROP_XDISTANCE,tmp_in_216);
      ObjectSetInteger(0,"spread_lb",OBJPROP_YDISTANCE,tmp_in_215);
      ObjectSetInteger(0,"spread_lb",OBJPROP_FONTSIZE,tmp_in_214);
      ObjectSetInteger(0,"spread_lb",OBJPROP_COLOR,tmp_in_213);
      ObjectSetInteger(0,"spread_lb",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"spread_lb",OBJPROP_TEXT,tmp_st_217);
      ObjectSetString(0,"spread_lb",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"spread_lb",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"spread_lb",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"spread_lb",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"spread_lb",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_218 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_218] = "spread_lb";
     }
   tmp_in_219 = 16777215;
   tmp_in_220 = 9;
   tmp_in_221 = local_2_in;
   tmp_in_222 = local_1_in + local_5_in;
   tmp_st_223 = "0";
   if(ObjectFind(0,"spread") >= 0)
     {
      ObjectDelete(0,"spread");
     }
   if(ObjectCreate(0,"spread",23,0,0,0.0))
     {
      ObjectSetInteger(0,"spread",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"spread",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"spread",OBJPROP_XDISTANCE,tmp_in_222);
      ObjectSetInteger(0,"spread",OBJPROP_YDISTANCE,tmp_in_221);
      ObjectSetInteger(0,"spread",OBJPROP_FONTSIZE,tmp_in_220);
      ObjectSetInteger(0,"spread",OBJPROP_COLOR,tmp_in_219);
      ObjectSetInteger(0,"spread",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"spread",OBJPROP_TEXT,tmp_st_223);
      ObjectSetString(0,"spread",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"spread",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"spread",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"spread",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"spread",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_224 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_224] = "spread";
     }
   local_2_in +=local_6_in;
   tmp_in_225 = 16777215;
   tmp_in_226 = 9;
   tmp_in_227 = local_2_in;
   tmp_in_228 = local_1_in;
   tmp_st_229 = "-------------------------------";
   if(ObjectFind(0,"f1") >= 0)
     {
      ObjectDelete(0,"f1");
     }
   if(ObjectCreate(0,"f1",23,0,0,0.0))
     {
      ObjectSetInteger(0,"f1",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"f1",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"f1",OBJPROP_XDISTANCE,tmp_in_228);
      ObjectSetInteger(0,"f1",OBJPROP_YDISTANCE,tmp_in_227);
      ObjectSetInteger(0,"f1",OBJPROP_FONTSIZE,tmp_in_226);
      ObjectSetInteger(0,"f1",OBJPROP_COLOR,tmp_in_225);
      ObjectSetInteger(0,"f1",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"f1",OBJPROP_TEXT,tmp_st_229);
      ObjectSetString(0,"f1",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"f1",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"f1",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"f1",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"f1",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_230 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_230] = "f1";
     }
   local_2_in +=local_6_in;
   tmp_in_231 = 16711680;
   tmp_in_232 = 9;
   tmp_in_233 = local_2_in;
   tmp_in_234 = local_1_in;
   tmp_st_235 = ".";
   if(ObjectFind(0,"TradingMode") >= 0)
     {
      ObjectDelete(0,"TradingMode");
     }
   if(ObjectCreate(0,"TradingMode",23,0,0,0.0))
     {
      ObjectSetInteger(0,"TradingMode",OBJPROP_ANCHOR,0);
      ObjectSetInteger(0,"TradingMode",OBJPROP_CORNER,0);
      ObjectSetInteger(0,"TradingMode",OBJPROP_XDISTANCE,tmp_in_234);
      ObjectSetInteger(0,"TradingMode",OBJPROP_YDISTANCE,tmp_in_233);
      ObjectSetInteger(0,"TradingMode",OBJPROP_FONTSIZE,tmp_in_232);
      ObjectSetInteger(0,"TradingMode",OBJPROP_COLOR,tmp_in_231);
      ObjectSetInteger(0,"TradingMode",OBJPROP_SELECTABLE,1);
      ObjectSetString(0,"TradingMode",OBJPROP_TEXT,tmp_st_235);
      ObjectSetString(0,"TradingMode",OBJPROP_FONT,"Calibri");
      ObjectSetInteger(0,"TradingMode",OBJPROP_SELECTED,0);
      ObjectSetInteger(0,"TradingMode",OBJPROP_HIDDEN,0);
      ObjectSetInteger(0,"TradingMode",OBJPROP_ZORDER,1);
      ObjectSetInteger(0,"TradingMode",OBJPROP_SELECTABLE,0);
      ChartRedraw(0);
      tmp_in_236 = ArraySize(global_124_st_ko);
      ArrayResize(global_124_st_ko,ArraySize(global_124_st_ko) + 1,0);
      global_124_st_ko[tmp_in_236] = "TradingMode";
     }
   local_2_in +=local_6_in;
   if(ObjectSetString(0,"Comment",OBJPROP_TEXT,comment))
     {
      ChartRedraw(0);
     }
   ChartRedraw(0);
   fun_27();
  }
//fun_26 <<==--------   --------
void fun_27()
  {
   string    local_1_st;
   double    local_2_do;
   double    local_3_do;
   double    local_4_do;
   double    local_5_do;
   double    local_6_do;
   double    local_7_do;
   string    local_8_st;
   string    local_9_st;
   string    local_10_st;
   double    local_11_do;
   double    local_12_do;
//----- -----
   string     tmp_st_1;
   int        tmp_in_2;
   int        tmp_in_3;
   string     tmp_st_4;
   double     tmp_do_5;
   int        tmp_in_6;
   int        tmp_in_7;
   int        tmp_in_8;
   int        tmp_in_9;
   string     tmp_st_10;
   double     tmp_do_11;
   int        tmp_in_12;
   int        tmp_in_13;
   double     tmp_do_14;
   double     tmp_do_15;
   double     tmp_do_16;
   double     tmp_do_17;
   double     tmp_do_18;
   string     tmp_st_19;
   bool       tmp_bo_20;

   if(ArraySize(global_99_st_si1) >  1)
     {
      local_1_st = "" ;
      tmp_st_1 = "";
     }
   else
     {
      local_1_st = global_50_st ;
      tmp_st_1 = global_50_st;
     }
   local_1_st = tmp_st_1 ;
   tmp_in_2 = -1;
   tmp_in_3 = -1;
   tmp_st_4 = local_1_st;
   tmp_do_5 = 0.0;
   tmp_in_6 = 0;
   tmp_in_7 = OrdersTotal();
   if(local_1_st == "0")
     {
      tmp_st_4 = global_50_st;
     }
   for(tmp_in_6 = 0 ; tmp_in_6 < tmp_in_7 ; tmp_in_6=tmp_in_6 + 1)
     {
      if(!(OrderSelect(tmp_in_6,0,0)))
         continue;

      if((OrderSymbol() != tmp_st_4 && tmp_st_4 != ""))
         continue;

      if((tmp_in_3 >= 0 && OrderType() != tmp_in_3))
         continue;

      if((OrderType() != 0 && OrderType() != 1))
         continue;

      if((tmp_in_2 >= 0 && OrderMagicNumber() != tmp_in_2))
         continue;
      tmp_do_5 = OrderProfit() + OrderCommission() + OrderSwap() + tmp_do_5;

     }
   local_2_do = tmp_do_5 ;
   tmp_in_8 = -1;
   tmp_in_9 = -1;
   tmp_st_10 = local_1_st;
   tmp_do_11 = 0.0;
   tmp_in_12 = 0;
   tmp_in_13 = OrdersTotal();
   if(local_1_st == "0")
     {
      tmp_st_10 = global_50_st;
     }
   for(tmp_in_12 = 0 ; tmp_in_12 < tmp_in_13 ; tmp_in_12=tmp_in_12 + 1)
     {
      if(!(OrderSelect(tmp_in_12,0,0)))
         continue;

      if((OrderSymbol() != tmp_st_10 && tmp_st_10 != ""))
         continue;

      if((OrderType() != 0 && OrderType() != 1))
         continue;

      if((tmp_in_9 >= 0 && OrderType() != tmp_in_9))
         continue;

      if((tmp_in_8 >= 0 && OrderMagicNumber() != tmp_in_8))
         continue;
      tmp_do_11 = tmp_do_11 + OrderLots();

     }
   local_3_do = tmp_do_11 ;
   if(SymbolInfoDouble(local_1_st,16)==0.0)
     {
      tmp_do_14 = 0.0;
     }
   else
     {
      tmp_do_15 = 0.0;
      if(AccountEquity()>0.0)
        {
         tmp_do_15 = MarketInfo(local_1_st,9) / SymbolInfoDouble(local_1_st,16) * MarketInfo(local_1_st,16) * int(local_3_do) / AccountEquity();
        }
      tmp_do_14 = tmp_do_15;
     }
   local_4_do = tmp_do_14 ;
   if(AccountBalance()>0.0)
     {
      tmp_do_16 = local_2_do / AccountBalance();
     }
   else
     {
      tmp_do_16 = 0.0;
     }
   local_5_do = tmp_do_16 ;
   local_6_do = SymbolInfoInteger(NULL,18) ;
   local_7_do = AccountInfoDouble(ACCOUNT_BALANCE) ;
   local_8_st = DoubleToString(local_7_do,0) ;
   local_9_st = DoubleToString(local_7_do + virtBalance,0) ;
   local_10_st = DoubleToString(AccountEquity() + virtBalance,0) ;
   if(SymbolInfoDouble("USDCAD",16)==0.0)
     {
      tmp_do_17 = 0.0;
     }
   else
     {
      tmp_do_18 = 0.0;
      if(1000.0>0.0)
        {
         tmp_do_18 = MarketInfo("USDCAD",9) / SymbolInfoDouble("USDCAD",16) * MarketInfo("USDCAD",16) * 0.01 / 1000.0;
        }
      tmp_do_17 = tmp_do_18;
     }
   local_11_do = tmp_do_17 ;
   if(local_11_do>0.0)
     {
      local_12_do = local_7_do / local_11_do ;
      if(AccountInfoString(ACCOUNT_CURRENCY) == "USD")
        {
         tmp_st_19 = "";
        }
      else
        {
         tmp_st_19 = " ~$" + DoubleToString(local_12_do,0);
        }
      local_8_st +=tmp_st_19;
     }
   if(virtBalance!=0.0 && USD_for_001>0.0)
     {
      if(ObjectSetString(0,"FullBalance",OBJPROP_TEXT,local_9_st))
        {
         ChartRedraw(0);
        }
      if(ObjectSetString(0,"FullEquity",OBJPROP_TEXT,local_10_st))
        {
         ChartRedraw(0);
        }
     }
   if(ObjectSetString(0,"OpenLots",OBJPROP_TEXT,DoubleToString(local_3_do,2)))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"CurrLev",OBJPROP_TEXT,"1:" + DoubleToString(local_4_do,1)))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"FloatProf%",OBJPROP_TEXT,StringFormat("%+.1f%%",local_5_do * 100.0)))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"Balance",OBJPROP_TEXT,local_8_st))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"Equity",OBJPROP_TEXT,DoubleToString(AccountEquity(),1)))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"FloatProf",OBJPROP_TEXT,StringFormat("%+.1f",local_2_do)))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"TradingMode",OBJPROP_TEXT,fun_28()))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"Sizelot",OBJPROP_TEXT,DoubleToString(fun_16(1.0,false) * MathPow(LotsMartinp,FirstNumberp),3)))
     {
      ChartRedraw(0);
     }
   if(ObjectSetString(0,"spread",OBJPROP_TEXT,DoubleToString(local_6_do,0)))
     {
      ChartRedraw(0);
     }
   tmp_bo_20 = false;
   if(Period() != 15)
     {
      tmp_bo_20 = true;
     }
   if(!(IsTradeAllowed()))
     {
      tmp_bo_20 = true;
     }
   if(AccountInfoInteger(ACCOUNT_TRADE_ALLOWED) == 0)
     {
      tmp_bo_20 = true;
     }
   if(TerminalInfoInteger(6) == 0)
     {
      tmp_bo_20 = true;
     }
   if(tmp_bo_20 == true)
     {
      ObjectSetInteger(0,"RectLabel",OBJPROP_BGCOLOR,17919);
      return;
     }
   ObjectSetInteger(0,"RectLabel",OBJPROP_BGCOLOR,8421376);
  }
//fun_27 <<==--------   --------
string fun_28()
  {
   string     tmp_st_1;
   long       tmp_lo_2;
   int        tmp_in_3;
   string     tmp_st_4;
   long       tmp_lo_5;
   int        tmp_in_6;
   string     tmp_st_7;

   if(TerminalInfoInteger(6) == 0)
     {
      tmp_st_1 = "No connection";
      return(tmp_st_1);
     }
   if(AccountInfoInteger(ACCOUNT_TRADE_ALLOWED) == 0)
     {
      tmp_st_1 = "Investor mode";
      return(tmp_st_1);
     }
   if(Period() != 15)
     {
      tmp_st_1 = "Change timeframe to M15";
      return(tmp_st_1);
     }
   if(!(IsTradeAllowed()))
     {
      tmp_st_1 = "EA trading not allowed";
      return(tmp_st_1);
     }
   if(fastClose)
     {
      tmp_st_1 = "EMERGENCY CLOSING!!!";
      return(tmp_st_1);
     }
   if(FirstPositionp != 1)
     {
      tmp_st_1 = "Trade limited. FirstPos=" + EnumToString(FirstPositiontype(FirstPositionp));
      return(tmp_st_1);
     }
   if(!(global_123_bo))
     {
      tmp_st_1 = "ATR > ATR_max. Only close.";
      return(tmp_st_1);
     }
   tmp_lo_2 = TimeCurrent();
   tmp_in_3 = 0;
   if(holidays == 0)
     {
      tmp_in_3 = 15;
     }
   else
     {
      if(holidays == 1)
        {
         tmp_in_3 = 8;
        }
      else
        {
         tmp_in_3 = 0;
        }
     }
   if((TimeDayOfYear(tmp_lo_2) < tmp_in_3 || TimeDayOfYear(tmp_lo_2) >  358))
     {
      tmp_st_4 = "Christmas and NY holidays";
     }
   else
     {
      tmp_st_4 = "";
     }
   if(tmp_st_4 != "")
     {
      tmp_lo_5 = TimeCurrent();
      tmp_in_6 = 0;
      if(holidays == 0)
        {
         tmp_in_6 = 15;
        }
      else
        {
         if(holidays == 1)
           {
            tmp_in_6 = 8;
           }
         else
           {
            tmp_in_6 = 0;
           }
        }
      if((TimeDayOfYear(tmp_lo_5) < tmp_in_6 || TimeDayOfYear(tmp_lo_5) >  358))
        {
         tmp_st_7 = "Christmas and NY holidays";
        }
      else
        {
         tmp_st_7 = "";
        }
      tmp_st_1 = tmp_st_7;
      return(tmp_st_1);
     }
   if(IsVisualMode())
     {
      tmp_st_1 = "Backtesting in Visual Mode";
      return(tmp_st_1);
     }
   tmp_st_1 = "Live Trading";
   return(tmp_st_1);
  }
//fun_28 <<==--------   --------
void fun_29(int para_0_in)
  {
   int       local_1_in;
//----- -----
   string     tmp_st_1;
   string     tmp_st_2;
   string     tmp_st_3;
   global_93_st = IntegerToString(para_0_in,2,48) ;
   if(StringLen(global_50_st)  != 6)
     {
      tmp_st_1 = "99";
     }
   else
     {
      tmp_st_1 = fun_20(StringSubstr(global_50_st,0,3)) + fun_20(StringSubstr(global_50_st,3,3));
     }
   global_26_in = StringToInteger(tmp_st_1 + global_93_st) ;
   global_25_in = GlobalVariableGet(string(IsTesting()) + "Magic" + global_50_st + string(global_26_in)) ;
   global_42_do = LotsMartinp ;
   global_18_in = global_19_in ;
   if((global_3_in != 1 || StringTrimLeft(StringTrimRight(global_4_st)) != ""))
     {
      local_1_in=para_0_in - 1;
      global_18_in = global_2_a_160_ko[local_1_in].in_2 ;
      global_21_do = global_2_a_160_ko[local_1_in].do_3 ;
      global_28_do = global_2_a_160_ko[local_1_in].do_4 ;
      global_29_do = global_2_a_160_ko[local_1_in].do_5 ;
      global_30_in = global_2_a_160_ko[local_1_in].do_6 ;
      global_31_do = global_2_a_160_ko[local_1_in].do_7 ;
      global_33_do = global_2_a_160_ko[local_1_in].do_8 ;
     }
   global_14_in = GlobalVariableGet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in)) ;
   global_69_do = GlobalVariableGet(string(IsTesting()) + "Distance_Price" + global_50_st + string(global_26_in)) ;
   global_129_do = MarketInfo(global_50_st,13) ;
   global_125_do = MarketInfo(global_50_st,13) * MarketInfo(global_50_st,11) ;
   global_126_do = MarketInfo(global_50_st,10) ;
   global_127_do = MarketInfo(global_50_st,9) ;
   global_128_do = MarketInfo(global_50_st,11) ;
   global_130_do = 0.0 ;
   if(iClose(global_50_st,0,1)>0.0)
     {
      global_130_do = (MathAbs(global_127_do / iClose(global_50_st,0,1) - 1.0)) * 10000.0 ;
     }
   fun_13();
   if(iATR(global_50_st,1440,global_22_in,1) / MarketInfo(global_50_st,9)>global_23_do)
     {
      global_123_bo = false ;
      return;
     }
   global_123_bo = true ;
  }
//fun_29 <<==--------   --------
void fun_30()
  {
   double    local_1_do;
//----- -----

   local_1_do = GlobalVariableGet(string(IsTesting()) + global_50_st + string(global_26_in) + "tp") ;

   if(funs2(global_50_st,0,global_25_in,0,"") && global_127_do>=local_1_do && local_1_do!=0.0)
     {
      fun_17(global_50_st,0,global_25_in);
     }
   if(!(funs2(global_50_st,1,global_25_in,0,"")) || !(global_126_do<=local_1_do))
      return;
   fun_17(global_50_st,1,global_25_in);
  }
//<<==fun_30 <<==
string abc(string s1)
  {
   return(StringTrimLeft(StringTrimRight(s1)));



  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void  xx(string  s1,string  s2,string &  global_99_st_si11[])
  {
   StringSplit(s2,StringGetCharacter(s1,0),global_99_st_si11);
   int tmp_in_1 = ArraySize(global_99_st_si11);
   for(int tmp_in_2 = 0 ; tmp_in_2 < tmp_in_1 ; tmp_in_2++)
     {
      global_99_st_si11[tmp_in_2] = abc(global_99_st_si11[tmp_in_2]);
     }
  }
//-----
void xx1(string & global_99_st_si11[],double & global_100_do_si11[])

  {
   string sa0="*";
   ushort us1=StringGetCharacter(sa0,0);
   ArrayResize(global_100_do_si11, ArraySize(global_99_st_si11),0);
   for(int tmp_in_3 = 0 ; tmp_in_3 < ArraySize(global_99_st_si11) ; tmp_in_3++)
     {
      string local_22_st_si2[2];
      StringSplit(abc(global_99_st_si11[tmp_in_3]),us1,local_22_st_si2);
      global_99_st_si11[tmp_in_3] = local_22_st_si2[0];
      global_100_do_si11[tmp_in_3] = (ArraySize(local_22_st_si2) == 2)?StringToDouble(local_22_st_si2[1]):global_35_do;
      Print(global_99_st_si11[tmp_in_3]," ",global_100_do_si11[tmp_in_3]);
     }
  }
//----------
void xx3(_sets & global_2_a_160_[],_sets &  local_19_st[])
  {
   ArrayResize(global_2_a_160_, ArraySize(local_19_st),0);
   for(int tmp_in_5 = 0 ; tmp_in_5 < ArraySize(local_19_st) ; tmp_in_5++)
     {
      yy(global_2_a_160_[tmp_in_5],local_19_st[tmp_in_5]);
     }
  }
//-------------
void yy(_sets & xx,_sets & yy)
  {
   xx.st_1 = yy.st_1;
   xx.in_2 = yy.in_2;
   xx.do_3 = yy.do_3;
   xx.do_4 = yy.do_4;
   xx.do_5 = yy.do_5;
   xx.do_6 = yy.do_6;
   xx.do_7 = yy.do_7;
   xx.do_8 = yy.do_8;

  }
//----------
string funs1(string local_1_in)
  {
   if(StringLen(local_1_in)  <= 5)
     {
      Print("Symbol name " + local_1_in + " from sets is too short. Perhaps you made a mistake in writing.");
      return("");
     }
     {
      for(int tmp_in_2 = 0 ; tmp_in_2 < SymbolsTotal(true) ; tmp_in_2++)
        {
         string  tmp_st_3 = SymbolName(tmp_in_2,true);
         string  tmp_st_4 = tmp_st_3;
         StringToUpper(tmp_st_3);
         StringToUpper(local_1_in);
         if(StringFind(tmp_st_3,local_1_in,0) >= 0)
           {
            return(tmp_st_4);

           }
        }
     }
   Print("Symbol " + local_1_in + " from sets not found in MarketWatch. Add this symbol to MarketWatch.");
   return("");
  }

//-------------
bool funs2(string  tmp_st_8,int tmp_in_7,int tmp_in_6,int tmp_in_5,string tmp_st_4)
  {
   string  tmp_st_9 ;
   int   tmp_in_10 = 0;
   int   tmp_in_11 = OrdersTotal();
   if(global_50_st == "0")
     {
      tmp_st_8 = global_50_st;
     }
   for(tmp_in_10 = 0 ; tmp_in_10 < tmp_in_11 ; tmp_in_10++)
     {
      if(!(OrderSelect(tmp_in_10,0,0)))
         continue;
      if((OrderSymbol() != tmp_st_8 && tmp_st_8 != ""))
         continue;
      if((StringFind(OrderComment(),tmp_st_4,0) <  0 && tmp_st_4 != ""))
         continue;
      if((OrderType() != 0 && OrderType() != 1))
         continue;
      if((tmp_in_7 >= 0 && OrderType() != tmp_in_7))
         continue;
      if((tmp_in_6 >= 0 && OrderMagicNumber() != tmp_in_6))
         continue;
      if((tmp_in_5 == OrderTicket() || tmp_in_5 == 0))
        {
         return(true);
        }
     }
   return(false);
  }
//----------
double funs3(string     tmp_st_24,int tmp_in_23,int tmp_in_22)
  {

   double    tmp_do_25 = 0.0;
   int    tmp_in_26 = 0;
   int   tmp_in_27 = OrdersTotal();
   if(global_50_st == "0")
     {
      tmp_st_24 = global_50_st;
     }
   for(tmp_in_26 = 0 ; tmp_in_26 < tmp_in_27 ; tmp_in_26++)
     {
      if(!(OrderSelect(tmp_in_26,0,0)))
         continue;
      if((OrderSymbol() != tmp_st_24 && tmp_st_24 != ""))
         continue;
      if((tmp_in_23 >= 0 && OrderType() != tmp_in_23))
         continue;
      if((OrderType() != 0 && OrderType() != 1))
         continue;
      if((tmp_in_22 < 0 || OrderMagicNumber() == tmp_in_22))
        {
         tmp_do_25 = OrderProfit() + OrderCommission() + OrderSwap() + tmp_do_25;
        }
     }

   return(tmp_do_25);
  }

//--------------------
void funs4(int tmp_in_114,int tmp_in_113,double tmp_do_112)
  {

   string     tmp_st_115 = global_50_st;
   int        tmp_in_116 = 0;
   int        tmp_in_117 = OrdersTotal();
   int        tmp_in_118 = 0;
   if(global_50_st == "0")
     {
      tmp_st_115 = global_50_st;
     }
   tmp_in_116 = 0;
   if(tmp_in_117 >  0)
     {
      for(; tmp_in_116 < tmp_in_117 ; tmp_in_116++)
        {
         if(!(OrderSelect(tmp_in_116,0,0)))
            continue;
         tmp_in_118 = OrderType();
         if(tmp_in_118 >= 2)
            continue;

         if((OrderSymbol() != tmp_st_115 && tmp_st_115 != ""))
            continue;
         if((tmp_in_114 >= 0 && tmp_in_118 != tmp_in_114))
            continue;

         if((tmp_in_113 >= 0 && OrderMagicNumber() != tmp_in_113))
            continue;
         fun_14(-1.0,-1.0,tmp_do_112,0);

        }
     }
  }
//---------------------
string funs5()
  {
   datetime    tmp_lo_42 = TimeCurrent();
   int    tmp_in_43 = 0;
   if(holidays == 0)
     {
      tmp_in_43 = 15;
     }
   else
     {
      if(holidays == 1)
        {
         tmp_in_43 = 8;
        }
      else
        {
         tmp_in_43 = 0;
        }
     }
   if((TimeDayOfYear(tmp_lo_42) < tmp_in_43 || TimeDayOfYear(tmp_lo_42) >  358))
     {
      return("Christmas and NY holidays");
     }
   return("");
  }
//-----------
int funs6int(int tmp_in_46, string tmp_st_45)
  {
   int  tmp_in_48;
   int  tmp_in_47 = OrdersTotal();
   int  local_15_in_ko[];
   ArrayResize(local_15_in_ko,0,0);
   for(tmp_in_48 = 0 ; tmp_in_48 < tmp_in_47 ; tmp_in_48++)
     {
      if(!(OrderSelect(tmp_in_48,0,0)))
         continue;

      if((OrderSymbol() != tmp_st_45 && tmp_st_45 != ""))
         continue;

      if((OrderType() != 0 && OrderType() != 1) || OrderMagicNumber() == tmp_in_46)
         continue;
      int     tmp_in_49 = 0;
      for(int tmp_in_50 = 0 ; tmp_in_50 < ArraySize(local_15_in_ko) ; tmp_in_50++)
        {
         if(local_15_in_ko[tmp_in_50] == OrderMagicNumber())
           {
            tmp_in_49 = 1;
            break;
           }
        }
      if(tmp_in_49 == 0)
        {
         ArrayResize(local_15_in_ko,ArraySize(local_15_in_ko) + 1,0);
         local_15_in_ko[ArraySize(local_15_in_ko) - 1] = OrderMagicNumber();
        }
     }
   return(ArraySize(local_15_in_ko));

  }

int funs6str(string tmp_st_52)

  {
   int       tmp_in_53 = 0;
   int        tmp_in_54 = OrdersTotal();
   if(global_50_st == "0")
     {
      tmp_st_52 = global_50_st;
     }
   string  local_16_st_ko[];
   ArrayResize(local_16_st_ko,0,0);
   for(tmp_in_53 = 0 ; tmp_in_53 < tmp_in_54 ; tmp_in_53++)
     {
      if(!(OrderSelect(tmp_in_53,0,0)) || OrderSymbol() == tmp_st_52)
         continue;
      if((OrderType() != 0 && OrderType() != 1))
         continue;
      int    tmp_in_55 = 0;
      for(int tmp_in_56 = 0 ; tmp_in_56 < ArraySize(local_16_st_ko) ; tmp_in_56++)
        {
         if(local_16_st_ko[tmp_in_56] == OrderSymbol())
           {
            tmp_in_55 = 1;
            break;
           }
        }
      if(tmp_in_55 == 0)
        {
         ArrayResize(local_16_st_ko,ArraySize(local_16_st_ko) + 1,0);
         local_16_st_ko[ArraySize(local_16_st_ko) - 1] = OrderSymbol();
        }
     }
   return(ArraySize(local_16_st_ko));
  }
//-------------
void funs7()
  {
   string   tmp_st_58 = "C" + IntegerToString(global_14_in + 1,0,32);
   int      tmp_in_59 = 1;
   int      tmp_in_60 = 0;
   double   tmp_do_61 = global_69_do;
   string   tmp_st_62 = IntegerToString(global_25_in,0,32);
   int      tmp_in_63 = (global_14_in + 1 >= FirstNumberp) ?255:8388736 ;
   if(tmp_st_62 == "")
     {
      tmp_st_62 = DoubleToString(iTime(global_50_st,0,0),0);
     }
   if(tmp_do_61<=0.0)
     {
      tmp_do_61 = MarketInfo(global_50_st,9);
     }
   if(ObjectFind(tmp_st_62) <  0)
     {
      ObjectCreate(tmp_st_62,1,0,0,0.0,0,0.0,0,0.0);
     }
   ObjectSetString(0,tmp_st_62,OBJPROP_TEXT,tmp_st_58);
   ObjectSet(tmp_st_62,1,tmp_do_61);
   ObjectSet(tmp_st_62,6,tmp_in_63);
   ObjectSet(tmp_st_62,7,tmp_in_60);
   ObjectSet(tmp_st_62,8,tmp_in_59);

  }
//--------------
double funs8(int tmp_in_96,int tmp_in_95)
  {

   string      tmp_st_97 = global_50_st;
   double     tmp_do_98 = 0.0;
   double      tmp_do_99 = 0.0;
   if(global_50_st == "")
     {
      tmp_st_97 = global_50_st;
     }
   for(int tmp_in_100 = OrdersTotal() - 1 ; tmp_in_100 >= 0 ; tmp_in_100--)
     {
      bool b=OrderSelect(tmp_in_100,0,0);
      if(OrderSymbol() != tmp_st_97 || OrderMagicNumber() != tmp_in_95)
         continue;

      if((OrderType() != tmp_in_96 && tmp_in_96 != -1) || OrderType() > 1)
         continue;
      tmp_do_98 = OrderOpenPrice() * OrderLots() + tmp_do_98;
      tmp_do_99 = tmp_do_99 + OrderLots();

     }
   if(tmp_do_99==0.0)
     {
      return(0.0);
     }
   else
     {
      return(NormalizeDouble(tmp_do_98 / tmp_do_99,Digits()));
     }
  }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool funs9(int i1)
  {
   if(GlobalVariableGet(string(IsTesting()) + global_50_st + string(i1) + string(global_26_in))==1.0)
     {
      return(true);
     }
   return(false);//
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool  funs10()
  {
   if((GlobalVariableGet(string(IsTesting()) + global_50_st + "0" + string(global_26_in))==1.0 || GlobalVariableGet(string(IsTesting()) + global_50_st + "1" + string(global_26_in))==1.0))
     {
      return(true);
     }
   return(false);

  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double funs11(int tmp_in_2,int tmp_in_1)
  {

   int      tmp_in_3 = 0;
   double   tmp_do_4 = 0.0;
   double   tmp_do_5 = 0.0;
   double   tmp_in_6 = MarketInfo(global_50_st,9);
   if(StringFind(global_50_st,"AUDCAD",0) >= 0)
     {
      tmp_in_3 = 0;
     }
   else
     {
      if(StringFind(global_50_st,"AUDNZD",0) >= 0)
        {
         tmp_in_3 = 1;
        }
      else
        {
         if(StringFind(global_50_st,"NZDCAD",0) >= 0)
           {
            tmp_in_3 = 2;
           }
         else
           {
            if(StringFind(global_50_st,"GBPCAD",0) >= 0)
              {
               tmp_in_3 = 3;
              }
            else
              {
               if(StringFind(global_50_st,"EURGBP",0) >= 0)
                 {
                  tmp_in_3 = 4;
                 }
               else
                 {
                  tmp_in_3 = 5;
                 }
              }
           }
        }
     }
   if((tmp_in_2 < 0 || tmp_in_2 > 4 || tmp_in_3 == -1 || Period() != 15))
     {
      return(-1.0);
     }
   tmp_do_4 = global_122_do_si6si5si2[tmp_in_3][tmp_in_2][0];
   tmp_do_5 = global_122_do_si6si5si2[tmp_in_3][tmp_in_2][1];

   return(tmp_do_4 * MathPow(tmp_in_1,tmp_do_5) * tmp_in_6);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
datetime DELAYtime(string tmp_st_66, int tmp_in_65,int tmp_in_64,string tmp_st_63,datetime tmp_lo_62)
  {

   double   tmp_do_67 = 0;
   int   tmp_in_68 = 0;
   int   tmp_in_69 = OrdersTotal();
   if(global_50_st == "0")
     {
      tmp_st_66 = global_50_st;
     }
   for(tmp_in_68 = 0 ; tmp_in_68 < tmp_in_69 ; tmp_in_68++)
     {
      if(!(OrderSelect(tmp_in_68,0,0)))
         continue;

      if((OrderSymbol() != tmp_st_66 && tmp_st_66 != ""))
         continue;

      if((StringFind(OrderComment(),tmp_st_63,0) != -1 && tmp_st_63 != ""))
         continue;

      if((OrderType() != 0 && OrderType() != 1))
         continue;

      if((tmp_in_65 >= 0 && OrderType() != tmp_in_65))
         continue;

      if((tmp_in_64 >= 0 && OrderMagicNumber() != tmp_in_64 && OrderMagicNumber() != global_25_in) || !(tmp_do_67<OrderOpenTime()))
         continue;
      tmp_do_67 = OrderOpenTime();

     }
   tmp_lo_62=tmp_lo_62 -datetime(tmp_do_67);
   return(tmp_lo_62);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void SetNUMBER(string tmp_st_56,int tmp_in_55,int tmp_in_54)
  {
   long  tmp_do_57 = 0;
   int  tmp_in_58 = 0;
   int  tmp_in_59 = OrdersTotal();
   if(global_50_st == "0")
     {
      tmp_st_56 = global_50_st;
     }
   for(tmp_in_58 = 0 ; tmp_in_58 < tmp_in_59 ; tmp_in_58++)
     {
      if(!(OrderSelect(tmp_in_58,0,0)))
         continue;

      if((OrderSymbol() != tmp_st_56 && tmp_st_56 != "") || StringFind(OrderComment(),"_C",0) == -1)
         continue;

      if((OrderType() != 0 && OrderType() != 1))
         continue;

      if((tmp_in_55 >= 0 && OrderType() != tmp_in_55))
         continue;

      if((tmp_in_54 > 0 || OrderMagicNumber() == tmp_in_54 || OrderMagicNumber() == global_25_in))
        {
         long tmp_do_60=StringToInteger(StringSubstr(OrderComment(),StringFind(OrderComment(),"_C",0) + 2,0));

         tmp_do_57 =(tmp_do_60<= tmp_do_57)?tmp_do_60:tmp_do_57  ;
        }
     }
   GlobalVariableSet(string(IsTesting()) + "NUMBER" + global_50_st + string(global_26_in),tmp_do_57);

  }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string zs1(string ss11)
  {
   if(StringLen(global_50_st)  != 6)
     {
      return("99");
     }
   string w1= StringSubstr(ss11,0,3);
   string w2= StringSubstr(ss11,3,3);

   return(fun_20(w1) + fun_20(w2));
  }
string zs2(string ss11)
  {
   string s1=global_50_st;
   return(zs1(s1)+IntegerToString(nmbrThisServer,2,48)+ ss11);

  }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void rrr()
  {
   if(IsTesting())
     {
      fun_15(Symbol(),0,SymbolInfoDouble(NULL,34),0,0,123123123,"",0.0);
      fun_17(Symbol(),-1,123123123);
     }

  }


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void fun80(int local_8_in)
  {
   if(IsTesting() && global_48_bo)
     {
      global_86_st_si40000[global_88_in] = "C" + string(global_14_in) + "," + string(global_18_in) + "," + string(global_58_do / MarketInfo(global_50_st,9));
      global_87_in_si40000[global_88_in] = local_8_in;
      global_88_in ++;
     }

  }
//+------------------------------------------------------------------+
