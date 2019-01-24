
`timescale 1ns/1ns

module read_d12_tb;
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

//SPI
logic sclk;
logic mosi;
logic miso;

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

 //average
logic [(NUM_BITS+6):0] prevfifo_in;
logic [(NUM_BITS+6):0] sum;
logic [(NUM_BITS+6):0] thres;
logic [(NUM_BITS-1):0] Threshold;
logic [(NUM_BITS-1):0] peak;
//integer j= clogb2(DEPTH) ;
//logic [15:0] sum;


//Initial values

always
begin
clk<=1;#5;//clk
clk<=0;#5;
end

read_d12 dut (
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
.sum(sum),
.thres(thres),
.Threshold(Threshold),
.prevfifo_in(prevfifo_in),
.rst_n(rst_n),
.fifo_in(fifo_in),
.fifo_out(fifo_out),
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
//average
sum=0;
//thres=0;
prevfifo_in=0;
Threshold=456;
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

//average


   do  
      begin
		//sum=fifo_in+prevfifo_in;
     // $display("\tSum = %0d",sum);
		prevfifo_in=fifo_in;
		thres=456;
		if(fifo_in>thres)
		$display("\tPeak = %0d at time %t",fifo_in,$time);
		else
		$display("\tNo Peak");
		//thres=sum/clogb2(DEPTH);
		//$display("\tThreshold = %0d",thres);
      //fifo_in++;
      end
while(full);
  
end

//always @(posedge clk)
//begin
//if($signed(fifo_in)>Threshold)
//  peak=fifo_in;
//  $display("\tPeak %d at time %t",peak,$time);
////if($signed(fifo_out)<=Threshold)
//  //peak=fifo_out;
//  //$display("\tNO Peak at <%d>",peak);
//end
//

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


