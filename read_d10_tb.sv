

`timescale 1ns/1ns

module raed_d10_tb;
// read 8 bits of data
logic [7:0] regA;
logic [7:0] regB;
logic [15:0] concat_data;
logic clk;
logic reset;

logic [15:10] ch_in;
logic [9:0] d_in;
logic [15:10] ch_op;
logic [9:0] d_op;
logic [63:0] i;

//buffer initial
parameter NUM_BITS = 10;
parameter DEPTH = 8;

// Inputs
 logic rst_n;
 logic rd_en1;
 logic wr_en1;
 logic [(NUM_BITS-1):0] fifo_in;
    
    // Outputs
 logic [(NUM_BITS-1):0] fifo_out;
 logic empty;
 logic full;
 logic [(clogb2(DEPTH)):0] fifo_counter;    
    
 logic [(NUM_BITS-1):0] tempdata;

 logic [(NUM_BITS+6):0] prevfifo_in;
 logic [(NUM_BITS+6):0] thres;
//Initial values

always
begin

clk<=1;#5;//clk
clk<=0;#5;

end

read_d10 dut (
.clk(clk),
//.clk1(clk1),
.reset(reset),
.channel(ch_in),
.channel_op(ch_op),
.data(d_in),
.data_op(d_op),
.concat_data1(concat_data),
.reg1(regA),
.reg2(regB),
.wr_en1(wr_en1),
.rd_en1(rd_en1),
.empty(empty),
.full(full),
.rst_n(rst_n),
.fifo_in(fifo_in),
.fifo_out(fifo_out),
.thres(thres),

.prevfifo_in(prevfifo_in),
.fifo_counter(fifo_counter));

logic[7:0] testvector[10999:0];

initial 
begin
clk = 0;
rst_n = 1;
rd_en1 = 0;
wr_en1 = 0;
tempdata = 0;
fifo_in = {NUM_BITS{10'bx}};
#1 rst_n = 0;
#1 rst_n = 1;
prevfifo_in=0;
end


always@(posedge clk or negedge clk)
begin

        fork
            push(d_op);
				pop(tempdata);
        join              //push and pop together 
      end
		
initial
begin
$readmemb("dataset",testvector);
i=0;
reset=1;
#15;
reset=0;
end

always @(posedge clk)

begin
{regA}= testvector[i]; #10
{regB}=testvector[i+1];
concat_data={regA,regB};
{ch_in,d_in}=concat_data;
$display(regA,regB,concat_data,ch_in,d_in,ch_op,d_op,fifo_in,fifo_out);

   do  
      begin
		//sum=fifo_in+prevfifo_in;
     // $display("\tSum = %0d",sum);
		prevfifo_in=fifo_out;
		thres=510;
		if(fifo_out>thres)
		$display("\tPeak = %0d at time %t",fifo_in,$time);
		else
		$display("\tNo Peak");
		//thres=sum/clogb2(DEPTH);
		//$display("\tThreshold = %0d",thres);
      //fifo_in++;
      end
while(full);



if (ch_in == 6'b000000) $display("\tRing0");
else if (ch_in ==6'b000001) $display("\tRing0");
else if (ch_in ==6'b000010) $display("\tRing0");
else if (ch_in ==6'b000011) $display("\tRing0");
else if (ch_in ==6'b000100) $display("\tRing0");
else if (ch_in ==6'b000101) $display("\tRing0");
else if (ch_in ==6'b000110) $display("\tRing0");
else if (ch_in ==6'b000111) $display("\tRing0");
else if (ch_in ==6'b001000) $display("\tRing1");
else if (ch_in ==6'b001001) $display("\tRing1");
else if (ch_in ==6'b001010) $display("\tRing1");
else if (ch_in ==6'b001011) $display("\tRing1");
else if (ch_in ==6'b001100) $display("\tRing1");
else if (ch_in ==6'b001101) $display("\tRing1");
else if (ch_in ==6'b001110) $display("\tRing1");
else if (ch_in ==6'b001111) $display("\tRing1");
else if (ch_in ==6'b010000) $display("\tRing2");
else if (ch_in ==6'b010001) $display("\tRing2");
else if (ch_in ==6'b010010) $display("\tRing2");
else if (ch_in ==6'b010011) $display("\tRing2");
else if (ch_in ==6'b010100) $display("\tRing2");
else if (ch_in ==6'b010101) $display("\tRing2");
else if (ch_in ==6'b010110) $display("\tRing2");
else if (ch_in ==6'b010111) $display("\tRing2");
else if (ch_in ==6'b011000) $display("\tRing3");
else if (ch_in ==6'b011001) $display("\tRing3");
else if (ch_in ==6'b011010) $display("\tRing3");
else if (ch_in ==6'b011011) $display("\tRing3");
else if (ch_in ==6'b011100) $display("\tRing3");
else if (ch_in ==6'b011101) $display("\tRing3");
else if (ch_in ==6'b011110) $display("\tRing3");
else if (ch_in ==6'b011111) $display("\tRing3");
else if (ch_in ==6'b100000) $display("\tRing4");
else if (ch_in ==6'b100001) $display("\tRing4");
else if (ch_in ==6'b100010) $display("\tRing4");
else if (ch_in ==6'b100011) $display("\tRing4");
else if (ch_in ==6'b100100) $display("\tRing4");
else if (ch_in ==6'b100101) $display("\tRing4");
else if (ch_in ==6'b100110) $display("\tRing4");
else if (ch_in ==6'b100111) $display("\tRing4");
else if (ch_in ==6'b101000) $display("\tRing5");
else if (ch_in ==6'b101001) $display("\tRing5");
else if (ch_in ==6'b101010) $display("\tRing5");
else if (ch_in ==6'b101011) $display("\tRing5");
else if (ch_in ==6'b101100) $display("\tRing5");
else if (ch_in ==6'b101101) $display("\tRing5");
else if (ch_in ==6'b101110) $display("\tRing5");
else if (ch_in ==6'b101111) $display("\tRing5");
else if (ch_in ==6'b110000) $display("\tRing6");
else if (ch_in ==6'b110001) $display("\tRing6");
else if (ch_in ==6'b110010) $display("\tRing6");
else if (ch_in ==6'b110011) $display("\tRing6");
else if (ch_in ==6'b110100) $display("\tRing6");
else if (ch_in ==6'b110101) $display("\tRing6");
else if (ch_in ==6'b110110) $display("\tRing6");
else if (ch_in ==6'b110111) $display("\tRing6");
else if (ch_in ==6'b111000) $display("\tRing7");
else if (ch_in ==6'b111001) $display("\tRing7");
else if (ch_in ==6'b111010) $display("\tRing7");
else if (ch_in ==6'b111011) $display("\tRing7");
else if (ch_in ==6'b111100) $display("\tRing7");
else if (ch_in ==6'b111101) $display("\tRing7");
else if (ch_in ==6'b111110) $display("\tRing7");
else if (ch_in ==6'b111111) $display("\tRing7");


end

always @(negedge clk)

begin
i=i+2;
end

function integer clogb2;
input [31:0] depth;
begin
depth = depth - 1;
for(clogb2=0; depth>0; clogb2=clogb2+1)
depth = depth >> 1;
end
endfunction

	 
task push;
input[(NUM_BITS-1):0] data;        
if( full )
$display("---Cannot push <%d>: Buffer Full at time %t",data,$time);
else
begin        
fifo_in = data;
wr_en1 = 1;
@(posedge clk); 
wr_en1 = 0;
end    
endtask
    
task pop;
output [(NUM_BITS-1):0] data;    
if( empty )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data,$time);
else
begin    
rd_en1 = 1;
@(posedge clk);   
rd_en1 = 0;
data = fifo_out;    
end
endtask


endmodule

