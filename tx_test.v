/*
# Team ID:          3762
# Theme:            Astro-Tinker Bot
# Author List:      Vaseekaran,sundaram
# Filename:         tx_test
# File Description: Used for transmitting appropriate messages to the central hub 
# Global variables: None
*/

module tx_test(en,clk,future_node,jreset,i_fault,p_block,b_drop,send_msg_fim,send_msg_bpm,send_msg_bdm,su,tx);
input en;
input send_msg_fim,send_msg_bpm,send_msg_bdm;
input clk;
input [1:0] su;


input [4:0] future_node;
input jreset;
input i_fault;
input p_block;
input b_drop;
integer count,j;
output reg tx;
reg fim=0;reg bpm=0;reg bdm=0;
reg[7:0] a;
reg[4:0] detect_count=0;
parameter state1=2'b00;
parameter state2=2'b01;
parameter state3=2'b10;
parameter state4=2'b11;

initial begin 
//a="F"; /a[1]="I"; a[2]="M"; a[3]="E"; a[4]="-"; a[5]="E"; a[6]="S"; a[7]="U"; a[8]="-"; a[9]="#";/
count=0;
current_state=0;
next_state=0;
j=0;
end
always @(negedge en)begin
	detect_count=detect_count+1;
end
reg [1:0] current_state, next_state;
always @ (posedge clk) begin
/*
Purpose:
	Used to transmit the respective message signals using the current position of the bot by incrementing the value of variable'j' accordingly
*/

if(jreset==1) j=0;
if(j==0 && future_node==28 && send_msg_fim==1)begin a="F";fim=1;end
else  if(j==1	&& future_node==28 && fim==1)a="I";
else	if(j==2 && future_node==28 && fim==1)a="M";
else	if(j==3 && future_node==28 && fim==1)a="-";
else	if(j==4 && future_node==28 && fim==1)a="E";
else	if(j==5 && future_node==28 && fim==1)a="S";
else	if(j==6 && future_node==28 && fim==1)a="U";
else	if(j==7 && future_node==28 && fim==1)a="1";
else	if(j==8 && future_node==28 && fim==1)a="-";
else	if(j==9 && future_node==28 && fim==1)a="#";
else	if(j==10&&future_node==28&&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==24 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==24 && fim==1)a="I";
else	if(j==2 && future_node==24 && fim==1)a="M";
else	if(j==3 && future_node==24 && fim==1)a="-";
else	if(j==4 && future_node==24 && fim==1)a="E";
else	if(j==5 && future_node==24 && fim==1)a="S";
else	if(j==6 && future_node==24 && fim==1)a="U";
else	if(j==7 && future_node==24 && fim==1)a="3";
else	if(j==8 && future_node==24 &&fim==1)a="-";
else	if(j==9 && future_node==24 && fim==1)a="#";
else  if(j==10&&future_node==24&&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==27 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==27 && fim==1)a="I";
else	if(j==2 && future_node==27 && fim==1)a="M";
else	if(j==3 && future_node==27 && fim==1)a="-";
else	if(j==4 && future_node==27 && fim==1)a="E";
else	if(j==5 && future_node==27 && fim==1)a="S";
else	if(j==6 && future_node==27 && fim==1)a="U";
else	if(j==7 && future_node==27 && fim==1)a="2";
else	if(j==8 && future_node==27 &&fim==1)a="-";
else	if(j==9 && future_node==27 && fim==1)a="#";
else  if(j==10&&future_node==27&&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==2 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==2 && fim==1)a="I";
else	if(j==2 && future_node==2 && fim==1)a="M";
else	if(j==3 && future_node==2 && fim==1)a="-";
else	if(j==4 && future_node==2 && fim==1)a="C";
else	if(j==5 && future_node==2&& fim==1)a="S";
else	if(j==6 && future_node==2 && fim==1)a="U";
else	if(j==7 && future_node==2 && fim==1)a="1";
else	if(j==8 && future_node==2 &&fim==1)a="-";
else	if(j==9 && future_node==2 && fim==1)a="#";
else  if(j==10&&future_node==2 &&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==6 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==6 && fim==1)a="I";
else	if(j==2 && future_node==6 && fim==1)a="M";
else	if(j==3 && future_node==6 && fim==1)a="-";
else	if(j==4 && future_node==6 && fim==1)a="C";
else	if(j==5 && future_node==6&& fim==1)a="S";
else	if(j==6 && future_node==6 && fim==1)a="U";
else	if(j==7 && future_node==6 && fim==1)a="3";
else	if(j==8 && future_node==6 &&fim==1)a="-";
else	if(j==9 && future_node==6 && fim==1)a="#";
else  if(j==10&&future_node==6 &&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==4 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==4 && fim==1)a="I";
else	if(j==2 && future_node==4 && fim==1)a="M";
else	if(j==3 && future_node==4 && fim==1)a="-";
else	if(j==4 && future_node==4 && fim==1)a="C";
else	if(j==5 && future_node==4&& fim==1)a="S";
else	if(j==6 && future_node==4 && fim==1)a="U";
else	if(j==7 && future_node==4 && fim==1)a="2";
else	if(j==8 && future_node==4 &&fim==1)a="-";
else	if(j==9 && future_node==4 && fim==1)a="#";
else  if(j==10&&future_node==4 &&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==18 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==18 && fim==1)a="I";
else	if(j==2 && future_node==18 && fim==1)a="M";
else	if(j==3 && future_node==18 && fim==1)a="-";
else	if(j==4 && future_node==18 && fim==1)a="R";
else	if(j==5 && future_node==18 && fim==1)a="S";
else	if(j==6 && future_node==18 && fim==1)a="U";
else	if(j==7 && future_node==18 && fim==1)a="1";
else	if(j==8 && future_node==18 &&fim==1)a="-";
else	if(j==9 && future_node==18 && fim==1)a="#";
else  if(j==10&&future_node==18 &&fim==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==16 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==16 && fim==1)a="I";
else	if(j==2 && future_node==16 && fim==1)a="M";
else	if(j==3 && future_node==16 && fim==1)a="-";
else	if(j==4 && future_node==16 && fim==1)a="R";
else	if(j==5 && future_node==16 && fim==1)a="S";
else	if(j==6 && future_node==16 && fim==1)a="U";
else	if(j==7 && future_node==16 && fim==1)a="2";
else	if(j==8 && future_node==16 &&fim==1)a="-";
else	if(j==9 && future_node==16 && fim==1)a="#";
else  if(j==10&&future_node==16 &&fim==1)begin fim=0;bpm=0;bdm=0;end
else	if(j==0 && future_node==15 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==15 && fim==1)a="I";
else	if(j==2 && future_node==15 && fim==1)a="M";
else	if(j==3 && future_node==15 && fim==1)a="-";
else	if(j==4 && future_node==15 && fim==1)a="R";
else	if(j==5 && future_node==15 && fim==1)a="S";
else	if(j==6 && future_node==15 && fim==1)a="U";
else	if(j==7 && future_node==15 && fim==1)a="3";
else	if(j==8 && future_node==15 &&fim==1)a="-";
else	if(j==9 && future_node==15 && fim==1)a="#";
else  if(j==10&&future_node==15 &&fim==1)begin fim=0;bpm=0;bdm=0;end	
else	if(j==0 && future_node==12 && send_msg_fim==1)begin a="F";fim=1;end
else	if(j==1	&& future_node==12 && fim==1)a="I";
else	if(j==2 && future_node==12 && fim==1)a="M";
else	if(j==3 && future_node==12 && fim==1)a="-";
else	if(j==4 && future_node==12 && fim==1)a="R";
else	if(j==5 && future_node==12 && fim==1)a="S";
else	if(j==6 && future_node==12 && fim==1)a="U";
else	if(j==7 && future_node==12 && fim==1)a="4";
else	if(j==8 && future_node==12 &&fim==1)a="-";
else	if(j==9 && future_node==12 && fim==1)a="#";
else  if(j==10&&future_node==12 &&fim==1)begin fim=0;bpm=0;bdm=0;end	
else  if(j==0 && future_node==28 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==28 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==28 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==28 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==28 && bdm==1 && su==0)a="E";
else  if(j==5 && future_node==28 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==28 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==28 && bdm==1 && su==0)a="1";
else  if(j==8 && future_node==28 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==28 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==28 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==28 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==28 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==28 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==28 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==28 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==28 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==28 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==28 && bdm==1 && su==1)a="E";
else  if(j==5 && future_node==28 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==28 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==28 && bdm==1 && su==1)a="1";
else  if(j==8 && future_node==28 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==28 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==28 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==28 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==28 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==28 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end  

else  if(j==0 && future_node==28 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==28 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==28 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==28 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==28 && bdm==1 && su==2)a="E";
else  if(j==5 && future_node==28 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==28 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==28 && bdm==1 && su==2)a="1";
else  if(j==8 && future_node==28 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==28 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==28 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==28 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==28 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==28 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==28 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==28 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==28 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==28 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==28 && bdm==1 && su==3)a="E";
else  if(j==5 && future_node==28 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==28 && bdm==1&& su==3 )a="U";
else  if(j==7 && future_node==28 && bdm==1 && su==3)a="1";
else  if(j==8 && future_node==28 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==28 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==28 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==28 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==28 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==28 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==27 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==27 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==27 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==27 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==27 && bdm==1 && su==0)a="E";
else  if(j==5 && future_node==27 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==27 && bdm==1&& su==0)a="U";
else  if(j==7 && future_node==27 && bdm==1 && su==0)a="2";
else  if(j==8 && future_node==27 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==27 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==27 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==27 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==27 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==27 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==27 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==27 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==27 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==27 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==27 && bdm==1 && su==1)a="E";
else  if(j==5 && future_node==27 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==27 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==27 && bdm==1 && su==1)a="2";
else  if(j==8 && future_node==27 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==27 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==27 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==27 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==27 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==27 && bdm==1&& su==1)begin fim=0;bpm=0;bdm=0;end   

else  if(j==0 && future_node==27 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==27 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==27 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==27 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==27 && bdm==1 && su==2)a="E";
else  if(j==5 && future_node==27 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==27 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==27 && bdm==1 && su==2)a="2";
else  if(j==8 && future_node==27 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==27 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==27 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==27 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==27 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==27 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end    

else  if(j==0 && future_node==27 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==27 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==27 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==27 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==27 && bdm==1&& su==3)a="E";
else  if(j==5 && future_node==27 && bdm==1&& su==3)a="S";
else  if(j==6 && future_node==27 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==27 && bdm==1 && su==3)a="2";
else  if(j==8 && future_node==27 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==27 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==27 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==27 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==27 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==27 && bdm==1 && su==3 )begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==24 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==24 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==24 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==24 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==24 && bdm==1 && su==0)a="E";
else  if(j==5 && future_node==24 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==24 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==24 && bdm==1 && su==0)a="3";
else  if(j==8 && future_node==24 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==24 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==24 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==24 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==24 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==24 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end


else  if(j==0 && future_node==24 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==24 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==24 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==24 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==24 && bdm==1 && su==1)a="E";
else  if(j==5 && future_node==24 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==24 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==24 && bdm==1 && su==1)a="3";
else  if(j==8 && future_node==24 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==24 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==24 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==24 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==24 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==24 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end 


else  if(j==0 && future_node==24 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==24 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==24 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==24 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==24 && bdm==1 && su==2)a="E";
else  if(j==5 && future_node==24 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==24 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==24 && bdm==1 && su==2)a="3";
else  if(j==8 && future_node==24 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==24 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==24 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==24 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==24 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==24 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end


else  if(j==0 && future_node==24 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==24 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==24 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==24 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==24 && bdm==1 && su==3)a="E";
else  if(j==5 && future_node==24 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==24 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==24 && bdm==1 && su==3)a="3";
else  if(j==8 && future_node==24 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==24 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==24 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==24 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==24 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==24 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end


else  if(j==0 && future_node==6 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==6 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==6 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==6 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==6 && bdm==1 && su==0)a="C";
else  if(j==5 && future_node==6 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==6 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==6 && bdm==1 && su==0)a="3";
else  if(j==8 && future_node==6 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==6 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==6 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==6 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==6 && bdm==1 && su==0) a="#";
else  if(j==13 && future_node==6 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==6 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==6 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==6 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==6 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==6 && bdm==1&& su==1)a="C";
else  if(j==5 && future_node==6 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==6 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==6 && bdm==1 && su==1)a="3";
else  if(j==8 && future_node==6 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==6 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==6 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==6 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==6 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==6 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end 


else  if(j==0 && future_node==6 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==6 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==6 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==6 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==6 && bdm==1&& su==2)a="C";
else  if(j==5 && future_node==6 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==6 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==6 && bdm==1 && su==2)a="3";
else  if(j==8 && future_node==6 && bdm==1&& su==2)a="-";
else  if(j==9 && future_node==6 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==6 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==6 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==6 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==6 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end


else  if(j==0 && future_node==6 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==6 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==6 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==6 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==6 && bdm==1 && su==3)a="C";
else  if(j==5 && future_node==6 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==6 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==6 && bdm==1&& su==3)a="3";
else  if(j==8 && future_node==6 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==6 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==6 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==6 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==6 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==6 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end  

else  if(j==0 && future_node==4 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==4 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==4 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==4 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==4 && bdm==1 && su==0)a="C";
else  if(j==5 && future_node==4 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==4 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==4 && bdm==1 && su==0)a="2";
else  if(j==8 && future_node==4 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==4 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==4 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==4 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==4 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==4 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==4 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==4 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==4 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==4 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==4 && bdm==1 && su==1)a="C";
else  if(j==5 && future_node==4 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==4 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==4 && bdm==1 && su==1)a="2";
else  if(j==8 && future_node==4 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==4 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==4 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==4 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==4 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==4 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==4 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==4 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==4 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==4 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==4 && bdm==1 && su==2)a="C";
else  if(j==5 && future_node==4 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==4 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==4 && bdm==1 && su==2)a="2";
else  if(j==8 && future_node==4 && bdm==1&& su==2)a="-";
else  if(j==9 && future_node==4 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==4 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==4 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==4 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==4 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==4 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==4 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==4 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==4 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==4 && bdm==1 && su==3)a="C";
else  if(j==5 && future_node==4 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==4 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==4 && bdm==1 && su==3)a="2";
else  if(j==8 && future_node==4 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==4 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==4 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==4 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==4 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==4 && bdm==1&& su==3)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==2 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==2 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==2 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==2 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==2 && bdm==1 && su==0)a="C";
else  if(j==5 && future_node==2 && bdm==1&& su==0)a="S";
else  if(j==6 && future_node==2 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==2 && bdm==1 && su==0)a="1";
else  if(j==8 && future_node==2 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==2 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==2 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==2 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==2 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==2 && bdm==1 && su==0 )begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==2 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==2 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==2 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==2 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==2 && bdm==1 && su==1)a="C";
else  if(j==5 && future_node==2 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==2 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==2 && bdm==1&& su==1)a="1";
else  if(j==8 && future_node==2 && bdm==1&& su==1)a="-";
else  if(j==9 && future_node==2 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==2 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==2 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==2 && bdm==1&& su==1)a="#";
else  if(j==13 && future_node==2 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==2 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==2 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==2 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==2 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==2 && bdm==1 && su==2)a="C";
else  if(j==5 && future_node==2 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==2 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==2 && bdm==1 && su==2)a="1";
else  if(j==8 && future_node==2 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==2 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==2 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==2 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==2 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==2 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==2 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==2 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==2 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==2 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==2 && bdm==1 && su==3)a="C";
else  if(j==5 && future_node==2 && bdm==1&& su==3)a="S";
else  if(j==6 && future_node==2 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==2 && bdm==1 && su==3)a="1";
else  if(j==8 && future_node==2 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==2 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==2 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==2 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==2 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==2 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==18 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==18 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==18 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==18 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==18 && bdm==1 && su==0)a="R";
else  if(j==5 && future_node==18 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==18 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==18 && bdm==1 && su==0)a="1";
else  if(j==8 && future_node==18 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==18 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==18 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==18 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==18 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==18 && bdm==1&& su==0)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==18 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==18 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==18 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==18 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==18 && bdm==1 && su==1)a="R";
else  if(j==5 && future_node==18 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==18 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==18 && bdm==1 && su==1)a="1";
else  if(j==8 && future_node==18 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==18 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==18 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==18 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==18 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==18 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end     

else  if(j==0 && future_node==18 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==18 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==18 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==18 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==18 && bdm==1 && su==2)a="R";
else  if(j==5 && future_node==18 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==18 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==18 && bdm==1 && su==2)a="1";
else  if(j==8 && future_node==18 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==18 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==18 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==18 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==18 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==18 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end

else   if(j==0 && future_node==18 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==18 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==18 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==18 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==18 && bdm==1 && su==3)a="R";
else  if(j==5 && future_node==18 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==18 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==18 && bdm==1 && su==3)a="1";
else  if(j==8 && future_node==18 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==18 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==18 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==18 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==18 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==18 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==16 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==16 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==16 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==16 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==16 && bdm==1 && su==0)a="R";
else  if(j==5 && future_node==16 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==16 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==16 && bdm==1 && su==0)a="2";
else  if(j==8 && future_node==16 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==16 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==16 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==16 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==16 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==16 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==16 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==16 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==16 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==16 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==16 && bdm==1 && su==1)a="R";
else  if(j==5 && future_node==16 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==16 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==16 && bdm==1 && su==1)a="2";
else  if(j==8 && future_node==16 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==16 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==16 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==16 && bdm==1&& su==1)a="-";
else  if(j==12 && future_node==16 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==16 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==16 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==16 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==16 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==16 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==16 && bdm==1 && su==2)a="R";
else  if(j==5 && future_node==16 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==16 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==16 && bdm==1 && su==2)a="2";
else  if(j==8 && future_node==16 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==16 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==16 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==16 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==16 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==16 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==16 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==16 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==16 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==16 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==16 && bdm==1 && su==3)a="R";
else  if(j==5 && future_node==16 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==16 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==16 && bdm==1 && su==3)a="2";
else  if(j==8 && future_node==16 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==16 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==16 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==16 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==16 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==16 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==15 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==15 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==15 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==15 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==15 && bdm==1 && su==0)a="R";
else  if(j==5 && future_node==15 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==15 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==15 && bdm==1 && su==0)a="3";
else  if(j==8 && future_node==15 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==15 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==15 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==15 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==15 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==15 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==15 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==15 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==15 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==15 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==15 && bdm==1 && su==1)a="R";
else  if(j==5 && future_node==15 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==15 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==15 && bdm==1 && su==1)a="3";
else  if(j==8 && future_node==15 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==15 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==15 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==15 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==15 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==15 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==15 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==15 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==15 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==15 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==15 && bdm==1 && su==2)a="R";
else  if(j==5 && future_node==15 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==15 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==15 && bdm==1 && su==2)a="3";
else  if(j==8 && future_node==15 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==15 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==15 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==15 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==15 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==15 && bdm==1 && su==2)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==15 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==15 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==15 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==15 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==15 && bdm==1 && su==3)a="R";
else  if(j==5 && future_node==15 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==15 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==15 && bdm==1 && su==3)a="3";
else  if(j==8 && future_node==15 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==15 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==15 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==15 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==15 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==15 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end  

else  if(j==0 && future_node==12 && send_msg_bdm==1 && su==0)begin a="B";bdm=1;end
else  if(j==1 && future_node==12 && bdm==1 && su==0)a="D";
else  if(j==2 && future_node==12 && bdm==1 && su==0)a="M";
else  if(j==3 && future_node==12 && bdm==1 && su==0)a="-";
else  if(j==4 && future_node==12 && bdm==1 && su==0)a="R";
else  if(j==5 && future_node==12 && bdm==1 && su==0)a="S";
else  if(j==6 && future_node==12 && bdm==1 && su==0)a="U";
else  if(j==7 && future_node==12 && bdm==1 && su==0)a="4";
else  if(j==8 && future_node==12 && bdm==1 && su==0)a="-";
else  if(j==9 && future_node==12 && bdm==1 && su==0)a="B";
else  if(j==10 && future_node==12 && bdm==1 && su==0)a="1";
else  if(j==11 && future_node==12 && bdm==1 && su==0)a="-";
else  if(j==12 && future_node==12 && bdm==1 && su==0)a="#";
else  if(j==13 && future_node==12 && bdm==1 && su==0)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==12 && send_msg_bdm==1 && su==1)begin a="B";bdm=1;end
else  if(j==1 && future_node==12 && bdm==1 && su==1)a="D";
else  if(j==2 && future_node==12 && bdm==1 && su==1)a="M";
else  if(j==3 && future_node==12 && bdm==1 && su==1)a="-";
else  if(j==4 && future_node==12 && bdm==1 && su==1)a="R";
else  if(j==5 && future_node==12 && bdm==1 && su==1)a="S";
else  if(j==6 && future_node==12 && bdm==1 && su==1)a="U";
else  if(j==7 && future_node==12 && bdm==1 && su==1)a="4";
else  if(j==8 && future_node==12 && bdm==1 && su==1)a="-";
else  if(j==9 && future_node==12 && bdm==1 && su==1)a="B";
else  if(j==10 && future_node==12 && bdm==1 && su==1)a="2";
else  if(j==11 && future_node==12 && bdm==1 && su==1)a="-";
else  if(j==12 && future_node==12 && bdm==1 && su==1)a="#";
else  if(j==13 && future_node==12 && bdm==1 && su==1)begin fim=0;bpm=0;bdm=0;end
 
else  if(j==0 && future_node==12 && send_msg_bdm==1 && su==2)begin a="B";bdm=1;end
else  if(j==1 && future_node==12 && bdm==1 && su==2)a="D";
else  if(j==2 && future_node==12 && bdm==1 && su==2)a="M";
else  if(j==3 && future_node==12 && bdm==1 && su==2)a="-";
else  if(j==4 && future_node==12 && bdm==1 && su==2)a="R";
else  if(j==5 && future_node==12 && bdm==1 && su==2)a="S";
else  if(j==6 && future_node==12 && bdm==1 && su==2)a="U";
else  if(j==7 && future_node==12 && bdm==1 && su==2)a="4";
else  if(j==8 && future_node==12 && bdm==1 && su==2)a="-";
else  if(j==9 && future_node==12 && bdm==1 && su==2)a="B";
else  if(j==10 && future_node==12 && bdm==1 && su==2)a="3";
else  if(j==11 && future_node==12 && bdm==1 && su==2)a="-";
else  if(j==12 && future_node==12 && bdm==1 && su==2)a="#";
else  if(j==13 && future_node==12 && bdm==1&& su==2)begin fim=0;bpm=0;bdm=0;end 

else  if(j==0 && future_node==12 && send_msg_bdm==1 && su==3)begin a="B";bdm=1;end
else  if(j==1 && future_node==12 && bdm==1 && su==3)a="D";
else  if(j==2 && future_node==12 && bdm==1 && su==3)a="M";
else  if(j==3 && future_node==12 && bdm==1 && su==3)a="-";
else  if(j==4 && future_node==12 && bdm==1 && su==3)a="R";
else  if(j==5 && future_node==12 && bdm==1 && su==3)a="S";
else  if(j==6 && future_node==12 && bdm==1 && su==3)a="U";
else  if(j==7 && future_node==12 && bdm==1&& su==3)a="4";
else  if(j==8 && future_node==12 && bdm==1 && su==3)a="-";
else  if(j==9 && future_node==12 && bdm==1 && su==3)a="B";
else  if(j==10 && future_node==12 && bdm==1 && su==3)a="4";
else  if(j==11 && future_node==12 && bdm==1 && su==3)a="-";
else  if(j==12 && future_node==12 && bdm==1 && su==3)a="#";
else  if(j==13 && future_node==12 && bdm==1 && su==3)begin fim=0;bpm=0;bdm=0;end

else  if(j==0 && future_node==22 && send_msg_bpm==1 )begin a="B";bpm=1;end
else	if(j==1 && future_node==22 && bpm==1)a="P";
else	if(j==2 && future_node==22 && bpm==1)a="M";
else	if(j==3 && future_node==22 && bpm==1)a="-";
else  if(j==4 && future_node==22 && bpm==1)a="S";
else	if(j==5 && future_node==22 && bpm==1)a="U";
else	if(j==6 && future_node==22 && bpm==1)a="-";
else	if(j==7 && future_node==22 && bpm==1)a="B";
else	if(j==8 && future_node==22 && bpm==1)a="1";
else	if(j==9 && future_node==22 && bpm==1)a="-";
else	if(j==10 && future_node==22 && bpm==1)a="#";
else	if(j==11 && future_node==22 && bpm==1)begin fim=0;bpm=0;bdm=0;end






else	if(j==0 && future_node==23 && send_msg_bpm==1)begin a="B";bpm=1;end
else	if(j==1 && future_node==23 && bpm==1)a="P";
else	if(j==2 && future_node==23 && bpm==1)a="M";
else	if(j==3 && future_node==23 && bpm==1)a="-";
else  if(j==4 && future_node==23 && bpm==1)a="S";
else	if(j==5 && future_node==23 && bpm==1)a="U";
else	if(j==6 && future_node==23 && bpm==1)a="-";
else	if(j==7 && future_node==23 && bpm==1)a="B";
else	if(j==8 && future_node==23 && bpm==1)a="3";
else	if(j==9 && future_node==23 && bpm==1)a="-";
else	if(j==10 && future_node==23 && bpm==1)a="#";
else	if(j==11 && future_node==23 && bpm==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==10 && send_msg_bpm==1)begin a="B";bpm=1;end
else	if(j==1 && future_node==10 && bpm==1)a="P";
else	if(j==2 && future_node==10 && bpm==1)a="M";
else	if(j==3 && future_node==10 && bpm==1)a="-";
else  if(j==4 && future_node==10 && bpm==1)a="S";
else	if(j==5 && future_node==10 && bpm==1)a="U";
else	if(j==6 && future_node==10 && bpm==1)a="-";
else	if(j==7 && future_node==10 && bpm==1)a="B";
else	if(j==8 && future_node==10 && bpm==1)a="2";
else	if(j==9 && future_node==10 && bpm==1)a="-";
else	if(j==10 && future_node==10 && bpm==1)a="#";
else	if(j==11 && future_node==10 && bpm==1)begin fim=0;bpm=0;bdm=0;end

else	if(j==0 && future_node==11 && send_msg_bpm==1)begin a="B";bpm=1;end
else	if(j==1 && future_node==11 && bpm==1)a="P";
else	if(j==2 && future_node==11 && bpm==1)a="M";
else	if(j==3 && future_node==11 && bpm==1)a="-";
else  if(j==4 && future_node==11 && bpm==1)a="S";
else	if(j==5 && future_node==11 && bpm==1)a="U";
else	if(j==6 && future_node==11 && bpm==1)a="-";
else	if(j==7 && future_node==11 && bpm==1)a="B";
else	if(j==8 && future_node==11 && bpm==1)a="4";
else	if(j==9 && future_node==11 && bpm==1)a="-";
else	if(j==10 && future_node==11 && bpm==1)a="#";
else	if(j==11 && future_node==11 && bpm==1)begin fim=0;bpm=0;bdm=0;end
	


	//(j<10 && (detect_count==1 || detect_count==3)) || (j<11 && (detect_count==5 || detect_count==8))

	//if(j<10 && i_fault==1)begin 
		case (current_state)
		state1:begin
			if (fim==1||bpm==1||bdm==1)begin  next_state=state2;
					count=0;
				end
			else next_state=state1;
			end
		state2:begin
			count=count+1;
			if (count==434) begin next_state=state3;count=0; end
			else next_state=state2;
			end
		state3:begin
			count=count+1;
			if (count==3472) begin next_state=state4;count=0; end
			else next_state=state3;
			end
		state4:begin
			count=count+1;
			if (count==434) begin next_state=state1;count=0; j=j+1;  end
			else next_state=state4;
			end
		endcase
	current_state=next_state;
	//end
end
always @ (posedge clk) begin
	case (current_state) 
		state1:tx=1;
		state2:tx=0;
		state3:tx=a[count/434];
		state4:tx=1;
	endcase
		

end
endmodule