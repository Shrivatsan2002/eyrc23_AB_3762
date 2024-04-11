module bot_states(clk,en,unit_msg,pbm_complete,unit_pulse,su,EP,cpu_en);
input clk,en,unit_msg;
input[1:0] unit_pulse,su;
output cpu_en,i_fault;
reg cpu_en=0;reg i_fault=0;
integer count=0;
reg[1:0] unit_list[0:3];
parameter IDENTIFY_FAULT=2'b00; PICK_BLOCK=2'b01; BLOCK_DROP=2'b10;
reg[1:0] present_state=0;reg[1:0] next_state=0;
reg start=0;integer i=0;reg flag=1;integer idx=0;
always@(posedge clk)begin
	if(unit_msg==1)begin	start=1;unit_list[idx]=unit_pulse;idx=idx+1; end
	if(cpu_en==1)begin
					count=count+1;
					if(count==3)begin
						cpu_en=0;
						count=0;
					end
				end
	if(start==1)begin
		case(present_state)
			IDENTIFY_FAULT:begin
			if(en==0)begin 
				next_state=PICK_BLOCK; 
				flag=1;
			end
			else next_state=IDENTIFY_FAULT;
				i_fault=1;
				
				case(unit_list[i])
					00:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=29;
							flag=0;
						end	
					end
					01:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=8;
							flag=0;
						end
					end
					10:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=19;
							flag=0;
						end
					end
				
				endcase
			
			end
			PICK_BLOCK:begin
			i_fault=0;
				if(en==0)begin
				next_state=BLOCK_DROP;
				flag=1;
				end
				else next_state=PICK_BLOCK;
				if(pbm_complete=1)begin
					case(su)
					00:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=29;
							flag=0;
						end	
					end
					01:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=8;
							flag=0;
						end
					end
					10:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=19;
							flag=0;
						end
					end
					11:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=19;
							flag=0;
						end
					end
					
					endcase
				
				end
			
				
			end
			BLOCK_DROP:begin
				if(en==0)begin 
				next_state=IDENTIFY_FAULT; 
				flag=1;
				i=i+1;
			end
			else next_state=BLOCK_DROP;
				i_fault=1;
				
				case(unit_list[i])
					00:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=29;
							flag=0;
						end	
					end
					01:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=8;
							flag=0;
						end
					end
					10:begin 
						if(flag==1)begin
							cpu_en=1;
							EP=19;
							flag=0;
						end
					end
				
				endcase
				
			end
		
		
		endcase
		present_state=next_state;
	end



end
always@(posedge



endmodule