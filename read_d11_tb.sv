
`timescale 1ns/1ns

module read_d11_tb;
//read 1 bit at a time
//logic r0;
//logic r1;
//logic r2;
//logic r3;
//logic r4;
//logic r5;
//logic r6;
//logic r7;
//logic r8;
//logic r9;
//logic r10;
//logic r11;
//logic r12;
//logic r13;
//logic r14;
//logic r15;

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
//parameter N=16;
//
//logic s_in;
//logic s_out;
//reg [N-1:0] r_reg;
//wire [N-1:0] r_next;
//
//always@(posedge clk, negedge reset)
//begin
//if (~reset)
//r_reg <= 0;
//else
//r_reg <= r_next;
//end 
//
//assign r_next = {s_in, r_reg[N-1:1]};
//assign s_out = r_reg[0];

reg s_in;
wire s_out;


// Inputs
 logic rst_n;

//logic rd_en1;
logic rd_en0;
logic rd_en1;
logic rd_en2;
logic rd_en3;
logic rd_en4;
logic rd_en5;
logic rd_en6;
logic rd_en7;
logic rd_en8;
logic rd_en9;
logic rd_en10;

logic rd_en11;
logic rd_en12;
logic rd_en13;
logic rd_en14;
logic rd_en15;
logic rd_en16;
logic rd_en17;
logic rd_en18;
logic rd_en19;
logic rd_en20;
             
logic rd_en21;
logic rd_en22;
logic rd_en23;
logic rd_en24;
logic rd_en25;
logic rd_en26;
logic rd_en27;
logic rd_en28;
logic rd_en29;
logic rd_en30;

logic rd_en31;
logic rd_en32;
logic rd_en33;
logic rd_en34;
logic rd_en35;
logic rd_en36;
logic rd_en37;
logic rd_en38;
logic rd_en39;
logic rd_en40;
            
logic rd_en41;
logic rd_en42;
logic rd_en43;
logic rd_en44;
logic rd_en45;
logic rd_en46;
logic rd_en47;
logic rd_en48;
logic rd_en49;
logic rd_en50;
             
logic rd_en51;
logic rd_en52;
logic rd_en53;
logic rd_en54;
logic rd_en55;
logic rd_en56;
logic rd_en57;
logic rd_en58;
logic rd_en59;
logic rd_en60;
             
logic rd_en61;
logic rd_en62;
logic rd_en63;
 
//logic wr_en1;
logic wr_en0;
logic wr_en1;
logic wr_en2;
logic wr_en3;
logic wr_en4;
logic wr_en5;
logic wr_en6;
logic wr_en7;
logic wr_en8;
logic wr_en9;
logic wr_en10;

logic wr_en11;
logic wr_en12;
logic wr_en13;
logic wr_en14;
logic wr_en15;
logic wr_en16;
logic wr_en17;
logic wr_en18;
logic wr_en19;
logic wr_en20;
             
logic wr_en21;
logic wr_en22;
logic wr_en23;
logic wr_en24;
logic wr_en25;
logic wr_en26;
logic wr_en27;
logic wr_en28;
logic wr_en29;
logic wr_en30;

logic wr_en31;
logic wr_en32;
logic wr_en33;
logic wr_en34;
logic wr_en35;
logic wr_en36;
logic wr_en37;
logic wr_en38;
logic wr_en39;
logic wr_en40;
             
logic wr_en41;
logic wr_en42;
logic wr_en43;
logic wr_en44;
logic wr_en45;
logic wr_en46;
logic wr_en47;
logic wr_en48;
logic wr_en49;
logic wr_en50;
             
logic wr_en51;
logic wr_en52;
logic wr_en53;
logic wr_en54;
logic wr_en55;
logic wr_en56;
logic wr_en57;
logic wr_en58;
logic wr_en59;
logic wr_en60;
             
logic wr_en61;
logic wr_en62;
logic wr_en63;

 
 //fifo inputs
 //logic [(NUM_BITS-1):0] fifo_in;
logic [(NUM_BITS-1):0] fifo_in0;
logic [(NUM_BITS-1):0] fifo_in1;
logic [(NUM_BITS-1):0] fifo_in2;
logic [(NUM_BITS-1):0] fifo_in3;
logic [(NUM_BITS-1):0] fifo_in4;
logic [(NUM_BITS-1):0] fifo_in5;
logic [(NUM_BITS-1):0] fifo_in6;
logic [(NUM_BITS-1):0] fifo_in7;
logic [(NUM_BITS-1):0] fifo_in8;
logic [(NUM_BITS-1):0] fifo_in9;
logic [(NUM_BITS-1):0] fifo_in10;

logic [(NUM_BITS-1):0] fifo_in11;
logic [(NUM_BITS-1):0] fifo_in12;
logic [(NUM_BITS-1):0] fifo_in13;
logic [(NUM_BITS-1):0] fifo_in14;
logic [(NUM_BITS-1):0] fifo_in15;
logic [(NUM_BITS-1):0] fifo_in16;
logic [(NUM_BITS-1):0] fifo_in17;
logic [(NUM_BITS-1):0] fifo_in18;
logic [(NUM_BITS-1):0] fifo_in19;
logic [(NUM_BITS-1):0] fifo_in20;


logic [(NUM_BITS-1):0] fifo_in21;
logic [(NUM_BITS-1):0] fifo_in22;
logic [(NUM_BITS-1):0] fifo_in23;
logic [(NUM_BITS-1):0] fifo_in24;
logic [(NUM_BITS-1):0] fifo_in25;
logic [(NUM_BITS-1):0] fifo_in26;
logic [(NUM_BITS-1):0] fifo_in27;
logic [(NUM_BITS-1):0] fifo_in28;
logic [(NUM_BITS-1):0] fifo_in29;
logic [(NUM_BITS-1):0] fifo_in30;

logic [(NUM_BITS-1):0] fifo_in31;
logic [(NUM_BITS-1):0] fifo_in32;
logic [(NUM_BITS-1):0] fifo_in33;
logic [(NUM_BITS-1):0] fifo_in34;
logic [(NUM_BITS-1):0] fifo_in35;
logic [(NUM_BITS-1):0] fifo_in36;
logic [(NUM_BITS-1):0] fifo_in37;
logic [(NUM_BITS-1):0] fifo_in38;
logic [(NUM_BITS-1):0] fifo_in39;
logic [(NUM_BITS-1):0] fifo_in40;

logic [(NUM_BITS-1):0] fifo_in41;
logic [(NUM_BITS-1):0] fifo_in42;
logic [(NUM_BITS-1):0] fifo_in43;
logic [(NUM_BITS-1):0] fifo_in44;
logic [(NUM_BITS-1):0] fifo_in45;
logic [(NUM_BITS-1):0] fifo_in46;
logic [(NUM_BITS-1):0] fifo_in47;
logic [(NUM_BITS-1):0] fifo_in48;
logic [(NUM_BITS-1):0] fifo_in49;
logic [(NUM_BITS-1):0] fifo_in50;

logic [(NUM_BITS-1):0] fifo_in51;
logic [(NUM_BITS-1):0] fifo_in52;
logic [(NUM_BITS-1):0] fifo_in53;
logic [(NUM_BITS-1):0] fifo_in54;
logic [(NUM_BITS-1):0] fifo_in55;
logic [(NUM_BITS-1):0] fifo_in56;
logic [(NUM_BITS-1):0] fifo_in57;
logic [(NUM_BITS-1):0] fifo_in58;
logic [(NUM_BITS-1):0] fifo_in59;
logic [(NUM_BITS-1):0] fifo_in60;

logic [(NUM_BITS-1):0] fifo_in61;
logic [(NUM_BITS-1):0] fifo_in62;
logic [(NUM_BITS-1):0] fifo_in63;


//data

logic [9:0] d0;
logic [9:0] d1;
logic [9:0] d2;
logic [9:0] d3;
logic [9:0] d4;
logic [9:0] d5;
logic [9:0] d6;
logic [9:0] d7;
logic [9:0] d8;
logic [9:0] d9;
logic [9:0] d10;
logic [9:0] d11;
logic [9:0] d12;
logic [9:0] d13;
logic [9:0] d14;
logic [9:0] d15;
logic [9:0] d16;
logic [9:0] d17;
logic [9:0] d18;
logic [9:0] d19;
logic [9:0] d20;
logic [9:0] d21;
logic [9:0] d22;
logic [9:0] d23;
logic [9:0] d24;
logic [9:0] d25;
logic [9:0] d26;
logic [9:0] d27;
logic [9:0] d28;
logic [9:0] d29;
logic [9:0] d30;
logic [9:0] d31;
logic [9:0] d32;
logic [9:0] d33;
logic [9:0] d34;
logic [9:0] d35;
logic [9:0] d36;
logic [9:0] d37;
logic [9:0] d38;
logic [9:0] d39;
logic [9:0] d40;
logic [9:0] d41;
logic [9:0] d42;
logic [9:0] d43;
logic [9:0] d44;
logic [9:0] d45;
logic [9:0] d46;
logic [9:0] d47;
logic [9:0] d48;
logic [9:0] d49;
logic [9:0] d50;
logic [9:0] d51;
logic [9:0] d52;
logic [9:0] d53;
logic [9:0] d54;
logic [9:0] d55;
logic [9:0] d56;
logic [9:0] d57;
logic [9:0] d58;
logic [9:0] d59;
logic [9:0] d60;
logic [9:0] d61;
logic [9:0] d62;
logic [9:0] d63;

//

  
// Outputs

//logic [(NUM_BITS-1):0] fifo_out;

logic [(NUM_BITS-1):0] fifo_out0;
logic [(NUM_BITS-1):0] fifo_out1;
logic [(NUM_BITS-1):0] fifo_out2;
logic [(NUM_BITS-1):0] fifo_out3;
logic [(NUM_BITS-1):0] fifo_out4;
logic [(NUM_BITS-1):0] fifo_out5;
logic [(NUM_BITS-1):0] fifo_out6;
logic [(NUM_BITS-1):0] fifo_out7;
logic [(NUM_BITS-1):0] fifo_out8;
logic [(NUM_BITS-1):0] fifo_out9;
logic [(NUM_BITS-1):0] fifo_out10;

logic [(NUM_BITS-1):0] fifo_out11;
logic [(NUM_BITS-1):0] fifo_out12;
logic [(NUM_BITS-1):0] fifo_out13;
logic [(NUM_BITS-1):0] fifo_out14;
logic [(NUM_BITS-1):0] fifo_out15;
logic [(NUM_BITS-1):0] fifo_out16;
logic [(NUM_BITS-1):0] fifo_out17;
logic [(NUM_BITS-1):0] fifo_out18;
logic [(NUM_BITS-1):0] fifo_out19;
logic [(NUM_BITS-1):0] fifo_out20;

logic [(NUM_BITS-1):0] fifo_out21;
logic [(NUM_BITS-1):0] fifo_out22;
logic [(NUM_BITS-1):0] fifo_out23;
logic [(NUM_BITS-1):0] fifo_out24;
logic [(NUM_BITS-1):0] fifo_out25;
logic [(NUM_BITS-1):0] fifo_out26;
logic [(NUM_BITS-1):0] fifo_out27;
logic [(NUM_BITS-1):0] fifo_out28;
logic [(NUM_BITS-1):0] fifo_out29;
logic [(NUM_BITS-1):0] fifo_out30;

logic [(NUM_BITS-1):0] fifo_out31;
logic [(NUM_BITS-1):0] fifo_out32;
logic [(NUM_BITS-1):0] fifo_out33;
logic [(NUM_BITS-1):0] fifo_out34;
logic [(NUM_BITS-1):0] fifo_out35;
logic [(NUM_BITS-1):0] fifo_out36;
logic [(NUM_BITS-1):0] fifo_out37;
logic [(NUM_BITS-1):0] fifo_out38;
logic [(NUM_BITS-1):0] fifo_out39;
logic [(NUM_BITS-1):0] fifo_out40;

logic [(NUM_BITS-1):0] fifo_out41;
logic [(NUM_BITS-1):0] fifo_out42;
logic [(NUM_BITS-1):0] fifo_out43;
logic [(NUM_BITS-1):0] fifo_out44;
logic [(NUM_BITS-1):0] fifo_out45;
logic [(NUM_BITS-1):0] fifo_out46;
logic [(NUM_BITS-1):0] fifo_out47;
logic [(NUM_BITS-1):0] fifo_out48;
logic [(NUM_BITS-1):0] fifo_out49;
logic [(NUM_BITS-1):0] fifo_out50;

logic [(NUM_BITS-1):0] fifo_out51;
logic [(NUM_BITS-1):0] fifo_out52;
logic [(NUM_BITS-1):0] fifo_out53;
logic [(NUM_BITS-1):0] fifo_out54;
logic [(NUM_BITS-1):0] fifo_out55;
logic [(NUM_BITS-1):0] fifo_out56;
logic [(NUM_BITS-1):0] fifo_out57;
logic [(NUM_BITS-1):0] fifo_out58;
logic [(NUM_BITS-1):0] fifo_out59;
logic [(NUM_BITS-1):0] fifo_out60;

logic [(NUM_BITS-1):0] fifo_out61;
logic [(NUM_BITS-1):0] fifo_out62;
logic [(NUM_BITS-1):0] fifo_out63;
 

//logic empty;

logic empty0;
logic empty1;
logic empty2;
logic empty3;
logic empty4;
logic empty5;
logic empty6;
logic empty7;
logic empty8;
logic empty9;
logic empty10;

logic empty11;
logic empty12;
logic empty13;
logic empty14;
logic empty15;
logic empty16;
logic empty17;
logic empty18;
logic empty19;
logic empty20;

logic empty21;
logic empty22;
logic empty23;
logic empty24;
logic empty25;
logic empty26;
logic empty27;
logic empty28;
logic empty29;
logic empty30;

logic empty31;
logic empty32;
logic empty33;
logic empty34;
logic empty35;
logic empty36;
logic empty37;
logic empty38;
logic empty39;
logic empty40;

logic empty41;
logic empty42;
logic empty43;
logic empty44;
logic empty45;
logic empty46;
logic empty47;
logic empty48;
logic empty49;
logic empty50;

logic empty51;
logic empty52;
logic empty53;
logic empty54;
logic empty55;
logic empty56;
logic empty57;
logic empty58;
logic empty59;
logic empty60;

logic empty61;
logic empty62;
logic empty63;


//logic full;

logic full0;
logic full1;
logic full2;
logic full3;
logic full4;
logic full5;
logic full6;
logic full7;
logic full8;
logic full9;
logic full10;

logic full11;
logic full12;
logic full13;
logic full14;
logic full15;
logic full16;
logic full17;
logic full18;
logic full19;
logic full20;

logic full21;
logic full22;
logic full23;
logic full24;
logic full25;
logic full26;
logic full27;
logic full28;
logic full29;

logic full30;
logic full31;
logic full32;
logic full33;
logic full34;
logic full35;
logic full36;
logic full37;
logic full38;
logic full39;
logic full40;

logic full41;
logic full42;
logic full43;
logic full44;
logic full45;
logic full46;
logic full47;
logic full48;
logic full49;
logic full50;

logic full51;
logic full52;
logic full53;
logic full54;
logic full55;
logic full56;
logic full57;
logic full58;
logic full59;
logic full60;

logic full61;
logic full62;
logic full63;

//logic [(clogb2(DEPTH)):0] fifo_counter;
logic [(clogb2(DEPTH)):0] fifo_counter0;
logic [(clogb2(DEPTH)):0] fifo_counter1;
logic [(clogb2(DEPTH)):0] fifo_counter2;
logic [(clogb2(DEPTH)):0] fifo_counter3;
logic [(clogb2(DEPTH)):0] fifo_counter4;
logic [(clogb2(DEPTH)):0] fifo_counter5;
logic [(clogb2(DEPTH)):0] fifo_counter6;
logic [(clogb2(DEPTH)):0] fifo_counter7;
logic [(clogb2(DEPTH)):0] fifo_counter8;
logic [(clogb2(DEPTH)):0] fifo_counter9;
logic [(clogb2(DEPTH)):0] fifo_counter10;

logic [(clogb2(DEPTH)):0] fifo_counter11;
logic [(clogb2(DEPTH)):0] fifo_counter12;
logic [(clogb2(DEPTH)):0] fifo_counter13;
logic [(clogb2(DEPTH)):0] fifo_counter14;
logic [(clogb2(DEPTH)):0] fifo_counter15;
logic [(clogb2(DEPTH)):0] fifo_counter16;
logic [(clogb2(DEPTH)):0] fifo_counter17;
logic [(clogb2(DEPTH)):0] fifo_counter18;
logic [(clogb2(DEPTH)):0] fifo_counter19;

logic [(clogb2(DEPTH)):0] fifo_counter20;
logic [(clogb2(DEPTH)):0] fifo_counter21;
logic [(clogb2(DEPTH)):0] fifo_counter22;
logic [(clogb2(DEPTH)):0] fifo_counter23;
logic [(clogb2(DEPTH)):0] fifo_counter24;
logic [(clogb2(DEPTH)):0] fifo_counter25;
logic [(clogb2(DEPTH)):0] fifo_counter26;
logic [(clogb2(DEPTH)):0] fifo_counter27;
logic [(clogb2(DEPTH)):0] fifo_counter28;
logic [(clogb2(DEPTH)):0] fifo_counter29;

logic [(clogb2(DEPTH)):0] fifo_counter30;
logic [(clogb2(DEPTH)):0] fifo_counter31;
logic [(clogb2(DEPTH)):0] fifo_counter32;
logic [(clogb2(DEPTH)):0] fifo_counter33;
logic [(clogb2(DEPTH)):0] fifo_counter34;
logic [(clogb2(DEPTH)):0] fifo_counter35;
logic [(clogb2(DEPTH)):0] fifo_counter36;
logic [(clogb2(DEPTH)):0] fifo_counter37;
logic [(clogb2(DEPTH)):0] fifo_counter38;
logic [(clogb2(DEPTH)):0] fifo_counter39;

logic [(clogb2(DEPTH)):0] fifo_counter40;
logic [(clogb2(DEPTH)):0] fifo_counter41;
logic [(clogb2(DEPTH)):0] fifo_counter42;
logic [(clogb2(DEPTH)):0] fifo_counter43;
logic [(clogb2(DEPTH)):0] fifo_counter44;
logic [(clogb2(DEPTH)):0] fifo_counter45;
logic [(clogb2(DEPTH)):0] fifo_counter46;
logic [(clogb2(DEPTH)):0] fifo_counter47;
logic [(clogb2(DEPTH)):0] fifo_counter48;
logic [(clogb2(DEPTH)):0] fifo_counter49;
logic [(clogb2(DEPTH)):0] fifo_counter50;
logic [(clogb2(DEPTH)):0] fifo_counter51;
logic [(clogb2(DEPTH)):0] fifo_counter52;
logic [(clogb2(DEPTH)):0] fifo_counter53;
logic [(clogb2(DEPTH)):0] fifo_counter54;
logic [(clogb2(DEPTH)):0] fifo_counter55;
logic [(clogb2(DEPTH)):0] fifo_counter56;
logic [(clogb2(DEPTH)):0] fifo_counter57;
logic [(clogb2(DEPTH)):0] fifo_counter58;
logic [(clogb2(DEPTH)):0] fifo_counter59;
logic [(clogb2(DEPTH)):0] fifo_counter60;

logic [(clogb2(DEPTH)):0] fifo_counter61;
logic [(clogb2(DEPTH)):0] fifo_counter62;
logic [(clogb2(DEPTH)):0] fifo_counter63;
 
    
//logic [(NUM_BITS-1):0] tempdata;
    
logic [(NUM_BITS-1):0] tempdata0;
logic [(NUM_BITS-1):0] tempdata1;
logic [(NUM_BITS-1):0] tempdata2;
logic [(NUM_BITS-1):0] tempdata3;
logic [(NUM_BITS-1):0] tempdata4;
logic [(NUM_BITS-1):0] tempdata5;
logic [(NUM_BITS-1):0] tempdata6;
logic [(NUM_BITS-1):0] tempdata7;
logic [(NUM_BITS-1):0] tempdata8;
logic [(NUM_BITS-1):0] tempdata9;

logic [(NUM_BITS-1):0] tempdata10;
logic [(NUM_BITS-1):0] tempdata11;
logic [(NUM_BITS-1):0] tempdata12;
logic [(NUM_BITS-1):0] tempdata13;
logic [(NUM_BITS-1):0] tempdata14;
logic [(NUM_BITS-1):0] tempdata15;
logic [(NUM_BITS-1):0] tempdata16;
logic [(NUM_BITS-1):0] tempdata17;
logic [(NUM_BITS-1):0] tempdata18;
logic [(NUM_BITS-1):0] tempdata19;
logic [(NUM_BITS-1):0] tempdata20;

logic [(NUM_BITS-1):0] tempdata21;
logic [(NUM_BITS-1):0] tempdata22;
logic [(NUM_BITS-1):0] tempdata23;
logic [(NUM_BITS-1):0] tempdata24;
logic [(NUM_BITS-1):0] tempdata25;
logic [(NUM_BITS-1):0] tempdata26;
logic [(NUM_BITS-1):0] tempdata27;
logic [(NUM_BITS-1):0] tempdata28;
logic [(NUM_BITS-1):0] tempdata29;

logic [(NUM_BITS-1):0] tempdata30;
logic [(NUM_BITS-1):0] tempdata31;
logic [(NUM_BITS-1):0] tempdata32;
logic [(NUM_BITS-1):0] tempdata33;
logic [(NUM_BITS-1):0] tempdata34;
logic [(NUM_BITS-1):0] tempdata35;
logic [(NUM_BITS-1):0] tempdata36;
logic [(NUM_BITS-1):0] tempdata37;
logic [(NUM_BITS-1):0] tempdata38;
logic [(NUM_BITS-1):0] tempdata39;

logic [(NUM_BITS-1):0] tempdata40;
logic [(NUM_BITS-1):0] tempdata41;
logic [(NUM_BITS-1):0] tempdata42;
logic [(NUM_BITS-1):0] tempdata43;
logic [(NUM_BITS-1):0] tempdata44;
logic [(NUM_BITS-1):0] tempdata45;
logic [(NUM_BITS-1):0] tempdata46;
logic [(NUM_BITS-1):0] tempdata47;
logic [(NUM_BITS-1):0] tempdata48;
logic [(NUM_BITS-1):0] tempdata49;

logic [(NUM_BITS-1):0] tempdata50;
logic [(NUM_BITS-1):0] tempdata51;
logic [(NUM_BITS-1):0] tempdata52;
logic [(NUM_BITS-1):0] tempdata53;
logic [(NUM_BITS-1):0] tempdata54;
logic [(NUM_BITS-1):0] tempdata55;
logic [(NUM_BITS-1):0] tempdata56;
logic [(NUM_BITS-1):0] tempdata57;
logic [(NUM_BITS-1):0] tempdata58;
logic [(NUM_BITS-1):0] tempdata59;
logic [(NUM_BITS-1):0] tempdata60;

logic [(NUM_BITS-1):0] tempdata61;
logic [(NUM_BITS-1):0] tempdata62;
logic [(NUM_BITS-1):0] tempdata63;
 

 //average
//logic [(NUM_BITS+6):0] prevfifo_in;
logic [(NUM_BITS+6):0] prevfifo_in0;
logic [(NUM_BITS+6):0] prevfifo_in1;
logic [(NUM_BITS+6):0] prevfifo_in2;
logic [(NUM_BITS+6):0] prevfifo_in3;
logic [(NUM_BITS+6):0] prevfifo_in4;
logic [(NUM_BITS+6):0] prevfifo_in5;
logic [(NUM_BITS+6):0] prevfifo_in6;
logic [(NUM_BITS+6):0] prevfifo_in7;
logic [(NUM_BITS+6):0] prevfifo_in8;
logic [(NUM_BITS+6):0] prevfifo_in9;
logic [(NUM_BITS+6):0] prevfifo_in10;

logic [(NUM_BITS+6):0] prevfifo_in11;
logic [(NUM_BITS+6):0] prevfifo_in12;
logic [(NUM_BITS+6):0] prevfifo_in13;
logic [(NUM_BITS+6):0] prevfifo_in14;
logic [(NUM_BITS+6):0] prevfifo_in15;
logic [(NUM_BITS+6):0] prevfifo_in16;
logic [(NUM_BITS+6):0] prevfifo_in17;
logic [(NUM_BITS+6):0] prevfifo_in18;
logic [(NUM_BITS+6):0] prevfifo_in19;
logic [(NUM_BITS+6):0] prevfifo_in20;


logic [(NUM_BITS+6):0] prevfifo_in21;
logic [(NUM_BITS+6):0] prevfifo_in22;
logic [(NUM_BITS+6):0] prevfifo_in23;
logic [(NUM_BITS+6):0] prevfifo_in24;
logic [(NUM_BITS+6):0] prevfifo_in25;
logic [(NUM_BITS+6):0] prevfifo_in26;
logic [(NUM_BITS+6):0] prevfifo_in27;
logic [(NUM_BITS+6):0] prevfifo_in28;
logic [(NUM_BITS+6):0] prevfifo_in29;
logic [(NUM_BITS+6):0] prevfifo_in30;

logic [(NUM_BITS+6):0] prevfifo_in31;
logic [(NUM_BITS+6):0] prevfifo_in32;
logic [(NUM_BITS+6):0] prevfifo_in33;
logic [(NUM_BITS+6):0] prevfifo_in34;
logic [(NUM_BITS+6):0] prevfifo_in35;
logic [(NUM_BITS+6):0] prevfifo_in36;
logic [(NUM_BITS+6):0] prevfifo_in37;
logic [(NUM_BITS+6):0] prevfifo_in38;
logic [(NUM_BITS+6):0] prevfifo_in39;
logic [(NUM_BITS+6):0] prevfifo_in40;

logic [(NUM_BITS+6):0] prevfifo_in41;
logic [(NUM_BITS+6):0] prevfifo_in42;
logic [(NUM_BITS+6):0] prevfifo_in43;
logic [(NUM_BITS+6):0] prevfifo_in44;
logic [(NUM_BITS+6):0] prevfifo_in45;
logic [(NUM_BITS+6):0] prevfifo_in46;
logic [(NUM_BITS+6):0] prevfifo_in47;
logic [(NUM_BITS+6):0] prevfifo_in48;
logic [(NUM_BITS+6):0] prevfifo_in49;
logic [(NUM_BITS+6):0] prevfifo_in50;

logic [(NUM_BITS+6):0] prevfifo_in51;
logic [(NUM_BITS+6):0] prevfifo_in52;
logic [(NUM_BITS+6):0] prevfifo_in53;
logic [(NUM_BITS+6):0] prevfifo_in54;
logic [(NUM_BITS+6):0] prevfifo_in55;
logic [(NUM_BITS+6):0] prevfifo_in56;
logic [(NUM_BITS+6):0] prevfifo_in57;
logic [(NUM_BITS+6):0] prevfifo_in58;
logic [(NUM_BITS+6):0] prevfifo_in59;
logic [(NUM_BITS+6):0] prevfifo_in60;

logic [(NUM_BITS+6):0] prevfifo_in61;
logic [(NUM_BITS+6):0] prevfifo_in62;
logic [(NUM_BITS+6):0] prevfifo_in63;


//logic [(NUM_BITS+6):0] sum;
logic [(NUM_BITS+6):0] sum0;
logic [(NUM_BITS+6):0] sum1;
logic [(NUM_BITS+6):0] sum2;
logic [(NUM_BITS+6):0] sum3;
logic [(NUM_BITS+6):0] sum4;
logic [(NUM_BITS+6):0] sum5;
logic [(NUM_BITS+6):0] sum6;
logic [(NUM_BITS+6):0] sum7;
logic [(NUM_BITS+6):0] sum8;
logic [(NUM_BITS+6):0] sum9;
logic [(NUM_BITS+6):0] sum10;

logic [(NUM_BITS+6):0] sum11;
logic [(NUM_BITS+6):0] sum12;
logic [(NUM_BITS+6):0] sum13;
logic [(NUM_BITS+6):0] sum14;
logic [(NUM_BITS+6):0] sum15;
logic [(NUM_BITS+6):0] sum16;
logic [(NUM_BITS+6):0] sum17;
logic [(NUM_BITS+6):0] sum18;
logic [(NUM_BITS+6):0] sum19;
logic [(NUM_BITS+6):0] sum20;


logic [(NUM_BITS+6):0] sum21;
logic [(NUM_BITS+6):0] sum22;
logic [(NUM_BITS+6):0] sum23;
logic [(NUM_BITS+6):0] sum24;
logic [(NUM_BITS+6):0] sum25;
logic [(NUM_BITS+6):0] sum26;
logic [(NUM_BITS+6):0] sum27;
logic [(NUM_BITS+6):0] sum28;
logic [(NUM_BITS+6):0] sum29;
logic [(NUM_BITS+6):0] sum30;

logic [(NUM_BITS+6):0] sum31;
logic [(NUM_BITS+6):0] sum32;
logic [(NUM_BITS+6):0] sum33;
logic [(NUM_BITS+6):0] sum34;
logic [(NUM_BITS+6):0] sum35;
logic [(NUM_BITS+6):0] sum36;
logic [(NUM_BITS+6):0] sum37;
logic [(NUM_BITS+6):0] sum38;
logic [(NUM_BITS+6):0] sum39;
logic [(NUM_BITS+6):0] sum40;

logic [(NUM_BITS+6):0] sum41;
logic [(NUM_BITS+6):0] sum42;
logic [(NUM_BITS+6):0] sum43;
logic [(NUM_BITS+6):0] sum44;
logic [(NUM_BITS+6):0] sum45;
logic [(NUM_BITS+6):0] sum46;
logic [(NUM_BITS+6):0] sum47;
logic [(NUM_BITS+6):0] sum48;
logic [(NUM_BITS+6):0] sum49;
logic [(NUM_BITS+6):0] sum50;

logic [(NUM_BITS+6):0] sum51;
logic [(NUM_BITS+6):0] sum52;
logic [(NUM_BITS+6):0] sum53;
logic [(NUM_BITS+6):0] sum54;
logic [(NUM_BITS+6):0] sum55;
logic [(NUM_BITS+6):0] sum56;
logic [(NUM_BITS+6):0] sum57;
logic [(NUM_BITS+6):0] sum58;
logic [(NUM_BITS+6):0] sum59;
logic [(NUM_BITS+6):0] sum60;

logic [(NUM_BITS+6):0] sum61;
logic [(NUM_BITS+6):0] sum62;
logic [(NUM_BITS+6):0] sum63;


//logic [(NUM_BITS+6):0] thres;
//logic [(NUM_BITS-1):0] Threshold;
logic [(NUM_BITS-1):0] Threshold0;
logic [(NUM_BITS-1):0] Threshold1;
logic [(NUM_BITS-1):0] Threshold2;
logic [(NUM_BITS-1):0] Threshold3;
logic [(NUM_BITS-1):0] Threshold4;
logic [(NUM_BITS-1):0] Threshold5;
logic [(NUM_BITS-1):0] Threshold6;
logic [(NUM_BITS-1):0] Threshold7;
logic [(NUM_BITS-1):0] Threshold8;
logic [(NUM_BITS-1):0] Threshold9;
logic [(NUM_BITS-1):0] Threshold10;

logic [(NUM_BITS-1):0] Threshold11;
logic [(NUM_BITS-1):0] Threshold12;
logic [(NUM_BITS-1):0] Threshold13;
logic [(NUM_BITS-1):0] Threshold14;
logic [(NUM_BITS-1):0] Threshold15;
logic [(NUM_BITS-1):0] Threshold16;
logic [(NUM_BITS-1):0] Threshold17;
logic [(NUM_BITS-1):0] Threshold18;
logic [(NUM_BITS-1):0] Threshold19;
logic [(NUM_BITS-1):0] Threshold20;


logic [(NUM_BITS-1):0] Threshold21;
logic [(NUM_BITS-1):0] Threshold22;
logic [(NUM_BITS-1):0] Threshold23;
logic [(NUM_BITS-1):0] Threshold24;
logic [(NUM_BITS-1):0] Threshold25;
logic [(NUM_BITS-1):0] Threshold26;
logic [(NUM_BITS-1):0] Threshold27;
logic [(NUM_BITS-1):0] Threshold28;
logic [(NUM_BITS-1):0] Threshold29;
logic [(NUM_BITS-1):0] Threshold30;

logic [(NUM_BITS-1):0] Threshold31;
logic [(NUM_BITS-1):0] Threshold32;
logic [(NUM_BITS-1):0] Threshold33;
logic [(NUM_BITS-1):0] Threshold34;
logic [(NUM_BITS-1):0] Threshold35;
logic [(NUM_BITS-1):0] Threshold36;
logic [(NUM_BITS-1):0] Threshold37;
logic [(NUM_BITS-1):0] Threshold38;
logic [(NUM_BITS-1):0] Threshold39;
logic [(NUM_BITS-1):0] Threshold40;

logic [(NUM_BITS-1):0] Threshold41;
logic [(NUM_BITS-1):0] Threshold42;
logic [(NUM_BITS-1):0] Threshold43;
logic [(NUM_BITS-1):0] Threshold44;
logic [(NUM_BITS-1):0] Threshold45;
logic [(NUM_BITS-1):0] Threshold46;
logic [(NUM_BITS-1):0] Threshold47;
logic [(NUM_BITS-1):0] Threshold48;
logic [(NUM_BITS-1):0] Threshold49;
logic [(NUM_BITS-1):0] Threshold50;

logic [(NUM_BITS-1):0] Threshold51;
logic [(NUM_BITS-1):0] Threshold52;
logic [(NUM_BITS-1):0] Threshold53;
logic [(NUM_BITS-1):0] Threshold54;
logic [(NUM_BITS-1):0] Threshold55;
logic [(NUM_BITS-1):0] Threshold56;
logic [(NUM_BITS-1):0] Threshold57;
logic [(NUM_BITS-1):0] Threshold58;
logic [(NUM_BITS-1):0] Threshold59;
logic [(NUM_BITS-1):0] Threshold60;

logic [(NUM_BITS-1):0] Threshold61;
logic [(NUM_BITS-1):0] Threshold62;
logic [(NUM_BITS-1):0] Threshold63;


//logic [(NUM_BITS-1):0] peak;
logic [(NUM_BITS-1):0] peak0;
logic [(NUM_BITS-1):0] peak1;
logic [(NUM_BITS-1):0] peak2;
logic [(NUM_BITS-1):0] peak3;
logic [(NUM_BITS-1):0] peak4;
logic [(NUM_BITS-1):0] peak5;
logic [(NUM_BITS-1):0] peak6;
logic [(NUM_BITS-1):0] peak7;
logic [(NUM_BITS-1):0] peak8;
logic [(NUM_BITS-1):0] peak9;
logic [(NUM_BITS-1):0] peak10;

logic [(NUM_BITS-1):0] peak11;
logic [(NUM_BITS-1):0] peak12;
logic [(NUM_BITS-1):0] peak13;
logic [(NUM_BITS-1):0] peak14;
logic [(NUM_BITS-1):0] peak15;
logic [(NUM_BITS-1):0] peak16;
logic [(NUM_BITS-1):0] peak17;
logic [(NUM_BITS-1):0] peak18;
logic [(NUM_BITS-1):0] peak19;
logic [(NUM_BITS-1):0] peak20;


logic [(NUM_BITS-1):0] peak21;
logic [(NUM_BITS-1):0] peak22;
logic [(NUM_BITS-1):0] peak23;
logic [(NUM_BITS-1):0] peak24;
logic [(NUM_BITS-1):0] peak25;
logic [(NUM_BITS-1):0] peak26;
logic [(NUM_BITS-1):0] peak27;
logic [(NUM_BITS-1):0] peak28;
logic [(NUM_BITS-1):0] peak29;
logic [(NUM_BITS-1):0] peak30;

logic [(NUM_BITS-1):0] peak31;
logic [(NUM_BITS-1):0] peak32;
logic [(NUM_BITS-1):0] peak33;
logic [(NUM_BITS-1):0] peak34;
logic [(NUM_BITS-1):0] peak35;
logic [(NUM_BITS-1):0] peak36;
logic [(NUM_BITS-1):0] peak37;
logic [(NUM_BITS-1):0] peak38;
logic [(NUM_BITS-1):0] peak39;
logic [(NUM_BITS-1):0] peak40;

logic [(NUM_BITS-1):0] peak41;
logic [(NUM_BITS-1):0] peak42;
logic [(NUM_BITS-1):0] peak43;
logic [(NUM_BITS-1):0] peak44;
logic [(NUM_BITS-1):0] peak45;
logic [(NUM_BITS-1):0] peak46;
logic [(NUM_BITS-1):0] peak47;
logic [(NUM_BITS-1):0] peak48;
logic [(NUM_BITS-1):0] peak49;
logic [(NUM_BITS-1):0] peak50;

logic [(NUM_BITS-1):0] peak51;
logic [(NUM_BITS-1):0] peak52;
logic [(NUM_BITS-1):0] peak53;
logic [(NUM_BITS-1):0] peak54;
logic [(NUM_BITS-1):0] peak55;
logic [(NUM_BITS-1):0] peak56;
logic [(NUM_BITS-1):0] peak57;
logic [(NUM_BITS-1):0] peak58;
logic [(NUM_BITS-1):0] peak59;
logic [(NUM_BITS-1):0] peak60;

logic [(NUM_BITS-1):0] peak61;
logic [(NUM_BITS-1):0] peak62;
logic [(NUM_BITS-1):0] peak63;


//integer j= clogb2(DEPTH) ;
//logic [15:0] sum;



//Initial values

always
begin

clk<=1;#5;//clk
clk<=0;#5;

end

read_d11 dut (
.clk(clk),
//.clk1(clk1),
.reset(reset),
.channel(ch_in),
.channel_op(ch_op),
.data(d_in),


.s_in(s_in),
.s_out(s_out),
.r_reg(r_reg),
.r_next(r_next),
//
//.peak0(peak0),
//.peak1(peak1),
//.peak2(peak2),
//.peak3(peak3),
//.peak4(peak4),
//.peak5(peak5),
//.peak6(peak6),
//.peak7(peak7),
//.peak8(peak8),
//.peak9(peak9),
//.peak10(peak10),
//
//.peak11(peak11),
//.peak12(peak12),
//.peak13(peak13),
//.peak14(peak14),
//.peak15(peak15),
//.peak16(peak16),
//.peak17(peak17),
//.peak18(peak18),
//.peak19(peak19),
//.peak20(peak20),
//
//.peak21(peak21),
//.peak22(peak22),
//.peak23(peak23),
//.peak24(peak24),
//.peak25(peak25),
//.peak26(peak26),
//.peak27(peak27),
//.peak28(peak28),
//.peak29(peak29),
//.peak30(peak30),
//
//.peak31(peak31),
//.peak32(peak32),
//.peak33(peak33),
//.peak34(peak34),
//.peak35(peak35),
//.peak36(peak36),
//.peak37(peak37),
//.peak38(peak38),
//.peak39(peak39),
//.peak40(peak40),
//
//.peak41(peak41),
//.peak42(peak42),
//.peak43(peak43),
//.peak44(peak44),
//.peak45(peak45),
//.peak46(peak46),
//.peak47(peak47),
//.peak48(peak48),
//.peak49(peak49),
//.peak50(peak50),
//
//.peak51(peak51),
//.peak52(peak52),
//.peak53(peak53),
//.peak54(peak54),
//.peak55(peak55),
//.peak56(peak56),
//.peak57(peak57),
//.peak58(peak58),
//.peak59(peak59),
//.peak60(peak60),
//
//.peak61(peak61),
//.peak62(peak62),
//.peak63(peak63),

.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7),
.d8(d8),
.d9(d9),
.d10(d10),
.d11(d11),
.d12(d12),
.d13(d13),
.d14(d14),
.d15(d15),
.d16(d16),
.d17(d17),
.d18(d18),
.d19(d19),
.d20(d20),
.d21(d21),
.d22(d22),
.d23(d23),
.d24(d24),
.d25(d25),
.d26(d26),
.d27(d27),
.d28(d28),
.d29(d29),
.d30(d30),
.d31(d31),
.d32(d32),
.d33(d33),
.d34(d34),
.d35(d35),
.d36(d36),
.d37(d37),
.d38(d38),
.d39(d39),
.d40(d40),
.d41(d41),
.d42(d42),
.d43(d43),
.d44(d44),
.d45(d45),
.d46(d46),
.d47(d47),
.d48(d48),
.d49(d49),
.d50(d50),
.d51(d51),
.d52(d52),
.d53(d53),
.d54(d54),
.d55(d55),
.d56(d56),
.d57(d57),
.d58(d58),
.d59(d59),
.d60(d60),
.d61(d61),
.d62(d62),
.d63(d63),

.data_op(d_op),
.concat_data1(concat_data),
//
//.r0(r0),
//.r1(r1),
//.r2(r2),
//.r3(r3),
//.r4(r4),
//.r5(r5),
//.r6(r6),
//.r7(r7),
//.r8(r8),
//.r9(r9),
//.r10(r10),
//.r11(r11),
//.r12(r12),
//.r13(r13),
//.r14(r14),
//.r15(r15),


.regA(regA),
.regB(regB),
//.wr_en1(wr_en1),
.wr_en0(wr_en0),
.wr_en1(wr_en1),
.wr_en2(wr_en2),
.wr_en3(wr_en3),
.wr_en4(wr_en4),
.wr_en5(wr_en5),
.wr_en6(wr_en6),
.wr_en7(wr_en7),
.wr_en8(wr_en8),
.wr_en9(wr_en9),
.wr_en10(wr_en10),

.wr_en11(wr_en11),
.wr_en12(wr_en12),
.wr_en13(wr_en13),
.wr_en14(wr_en14),
.wr_en15(wr_en15),
.wr_en16(wr_en16),
.wr_en17(wr_en17),
.wr_en18(wr_en18),
.wr_en19(wr_en19),
.wr_en20(wr_en20),

.wr_en21(wr_en21),
.wr_en22(wr_en22),
.wr_en23(wr_en23),
.wr_en24(wr_en24),
.wr_en25(wr_en25),
.wr_en26(wr_en26),
.wr_en27(wr_en27),
.wr_en28(wr_en28),
.wr_en29(wr_en29),
.wr_en30(wr_en30),

.wr_en31(wr_en31),
.wr_en32(wr_en32),
.wr_en33(wr_en33),
.wr_en34(wr_en34),
.wr_en35(wr_en35),
.wr_en36(wr_en36),
.wr_en37(wr_en37),
.wr_en38(wr_en38),
.wr_en39(wr_en39),
.wr_en40(wr_en40),

.wr_en41(wr_en41),
.wr_en42(wr_en42),
.wr_en43(wr_en43),
.wr_en44(wr_en44),
.wr_en45(wr_en45),
.wr_en46(wr_en46),
.wr_en47(wr_en47),
.wr_en48(wr_en48),
.wr_en49(wr_en49),
.wr_en50(wr_en50),

.wr_en51(wr_en51),
.wr_en52(wr_en52),
.wr_en53(wr_en53),
.wr_en54(wr_en54),
.wr_en55(wr_en55),
.wr_en56(wr_en56),
.wr_en57(wr_en57),
.wr_en58(wr_en58),
.wr_en59(wr_en59),
.wr_en60(wr_en60),

.wr_en61(wr_en61),
.wr_en62(wr_en62),
.wr_en63(wr_en63),

//.rd_en1(rd_en1),
.rd_en0(rd_en0),
.rd_en1(rd_en1),
.rd_en2(rd_en2),
.rd_en3(rd_en3),
.rd_en4(rd_en4),
.rd_en5(rd_en5),
.rd_en6(rd_en6),
.rd_en7(rd_en7),
.rd_en8(rd_en8),
.rd_en9(rd_en9),
.rd_en10(rd_en10),

.rd_en11(rd_en11),
.rd_en12(rd_en12),
.rd_en13(rd_en13),
.rd_en14(rd_en14),
.rd_en15(rd_en15),
.rd_en16(rd_en16),
.rd_en17(rd_en17),
.rd_en18(rd_en18),
.rd_en19(rd_en19),
.rd_en20(rd_en20),

.rd_en21(rd_en21),
.rd_en22(rd_en22),
.rd_en23(rd_en23),
.rd_en24(rd_en24),
.rd_en25(rd_en25),
.rd_en26(rd_en26),
.rd_en27(rd_en27),
.rd_en28(rd_en28),
.rd_en29(rd_en29),
.rd_en30(rd_en30),

.rd_en31(rd_en31),
.rd_en32(rd_en32),
.rd_en33(rd_en33),
.rd_en34(rd_en34),
.rd_en35(rd_en35),
.rd_en36(rd_en36),
.rd_en37(rd_en37),
.rd_en38(rd_en38),
.rd_en39(rd_en39),
.rd_en40(rd_en40),

.rd_en41(rd_en41),
.rd_en42(rd_en42),
.rd_en43(rd_en43),
.rd_en44(rd_en44),
.rd_en45(rd_en45),
.rd_en46(rd_en46),
.rd_en47(rd_en47),
.rd_en48(rd_en48),
.rd_en49(rd_en49),
.rd_en50(rd_en50),

.rd_en51(rd_en51),
.rd_en52(rd_en52),
.rd_en53(rd_en53),
.rd_en54(rd_en54),
.rd_en55(rd_en55),
.rd_en56(rd_en56),
.rd_en57(rd_en57),
.rd_en58(rd_en58),
.rd_en59(rd_en59),
.rd_en60(rd_en60),

.rd_en61(rd_en61),
.rd_en62(rd_en62),
.rd_en63(rd_en63),


//.empty(empty),
.empty0(empty0),
.empty1(empty1),
.empty2(empty2),
.empty3(empty3),
.empty4(empty4),
.empty5(empty5),
.empty6(empty6),
.empty7(empty7),
.empty8(empty8),
.empty9(empty9),
.empty10(empty10),

.empty11(empty11),
.empty12(empty12),
.empty13(empty13),
.empty14(empty14),
.empty15(empty15),
.empty16(empty16),
.empty17(empty17),
.empty18(empty18),
.empty19(empty19),
.empty20(empty20),

.empty21(empty21),
.empty22(empty22),
.empty23(empty23),
.empty24(empty24),
.empty25(empty25),
.empty26(empty26),
.empty27(empty27),
.empty28(empty28),
.empty29(empty29),
.empty30(empty30),


.empty31(empty31),
.empty32(empty32),
.empty33(empty33),
.empty34(empty34),
.empty35(empty35),
.empty36(empty36),
.empty37(empty37),
.empty38(empty38),
.empty39(empty39),
.empty40(empty40),

.empty41(empty41),
.empty42(empty42),
.empty43(empty43),
.empty44(empty44),
.empty45(empty45),
.empty46(empty46),
.empty47(empty47),
.empty48(empty48),
.empty49(empty49),
.empty50(empty50),

.empty51(empty51),
.empty52(empty52),
.empty53(empty53),
.empty54(empty54),
.empty55(empty55),
.empty56(empty56),
.empty57(empty57),
.empty58(empty58),
.empty59(empty59),
.empty60(empty60),

.empty61(empty61),
.empty62(empty62),
.empty63(empty63),

//.full(full),
.full0(full0),
.full1(full1),
.full2(full2),
.full3(full3),
.full4(full4),
.full5(full5),
.full6(full6),
.full7(full7),
.full8(full8),
.full9(full9),
.full10(full10),

.full11(full11),
.full12(full12),
.full13(full13),
.full14(full14),
.full15(full15),
.full16(full16),
.full17(full17),
.full18(full18),
.full19(full19),
.full20(full20),

.full21(full21),
.full22(full22),
.full23(full23),
.full24(full24),
.full25(full25),
.full26(full26),
.full27(full27),
.full28(full28),
.full29(full29),
.full30(full30),

.full31(full31),
.full32(full32),
.full33(full33),
.full34(full34),
.full35(full35),
.full36(full36),
.full37(full37),
.full38(full38),
.full39(full39),
.full40(full40),

.full41(full41),
.full42(full42),
.full43(full43),
.full44(full44),
.full45(full45),
.full46(full46),
.full47(full47),
.full48(full48),
.full49(full49),
.full50(full50),

.full51(full51),
.full52(full52),
.full53(full53),
.full54(full54),
.full55(full55),
.full56(full56),
.full57(full57),
.full58(full58),
.full59(full59),
.full60(full60),

.full61(full61),
.full62(full62),
.full63(full63),


//.sum(sum),
.sum0(sum0),
.sum1(sum1),
.sum2(sum2),
.sum3(sum3),
.sum4(sum4),
.sum5(sum5),
.sum6(sum6),
.sum7(sum7),
.sum8(sum8),
.sum9(sum9),
.sum10(sum10),

.sum11(sum11),
.sum12(sum12),
.sum13(sum13),
.sum14(sum14),
.sum15(sum15),
.sum16(sum16),
.sum17(sum17),
.sum18(sum18),
.sum19(sum19),
.sum20(sum20),

.sum21(sum21),
.sum22(sum22),
.sum23(sum23),
.sum24(sum24),
.sum25(sum25),
.sum26(sum26),
.sum27(sum27),
.sum28(sum28),
.sum29(sum29),
.sum30(sum30),

.sum31(sum31),
.sum32(sum32),
.sum33(sum33),
.sum34(sum34),
.sum35(sum35),
.sum36(sum36),
.sum37(sum37),
.sum38(sum38),
.sum39(sum39),
.sum40(sum40),

.sum41(sum41),
.sum42(sum42),
.sum43(sum43),
.sum44(sum44),
.sum45(sum45),
.sum46(sum46),
.sum47(sum47),
.sum48(sum48),
.sum49(sum49),
.sum50(sum50),

.sum51(sum51),
.sum52(sum52),
.sum53(sum53),
.sum54(sum54),
.sum55(sum55),
.sum56(sum56),
.sum57(sum57),
.sum58(sum58),
.sum59(sum59),
.sum60(sum60),

.sum61(sum61),
.sum62(sum62),
.sum63(sum63),


//.thres(thres),
//.Threshold(Threshold),
.Threshold0(Threshold0),
.Threshold1(Threshold1),
.Threshold2(Threshold2),
.Threshold3(Threshold3),
.Threshold4(Threshold4),
.Threshold5(Threshold5),
.Threshold6(Threshold6),
.Threshold7(Threshold7),
.Threshold8(Threshold8),
.Threshold9(Threshold9),
.Threshold10(Threshold10),

.Threshold11(Threshold11),
.Threshold12(Threshold12),
.Threshold13(Threshold13),
.Threshold14(Threshold14),
.Threshold15(Threshold15),
.Threshold16(Threshold16),
.Threshold17(Threshold17),
.Threshold18(Threshold18),
.Threshold19(Threshold19),
.Threshold20(Threshold20),

.Threshold21(Threshold21),
.Threshold22(Threshold22),
.Threshold23(Threshold23),
.Threshold24(Threshold24),
.Threshold25(Threshold25),
.Threshold26(Threshold26),
.Threshold27(Threshold27),
.Threshold28(Threshold28),
.Threshold29(Threshold29),
.Threshold30(Threshold30),

.Threshold31(Threshold31),
.Threshold32(Threshold32),
.Threshold33(Threshold33),
.Threshold34(Threshold34),
.Threshold35(Threshold35),
.Threshold36(Threshold36),
.Threshold37(Threshold37),
.Threshold38(Threshold38),
.Threshold39(Threshold39),
.Threshold40(Threshold40),

.Threshold41(Threshold41),
.Threshold42(Threshold42),
.Threshold43(Threshold43),
.Threshold44(Threshold44),
.Threshold45(Threshold45),
.Threshold46(Threshold46),
.Threshold47(Threshold47),
.Threshold48(Threshold48),
.Threshold49(Threshold49),
.Threshold50(Threshold50),

.Threshold51(Threshold51),
.Threshold52(Threshold52),
.Threshold53(Threshold53),
.Threshold54(Threshold54),
.Threshold55(Threshold55),
.Threshold56(Threshold56),
.Threshold57(Threshold57),
.Threshold58(Threshold58),
.Threshold59(Threshold59),
.Threshold60(Threshold60),

.Threshold61(Threshold61),
.Threshold62(Threshold62),
.Threshold63(Threshold63),


//.prevfifo_in(prevfifo_in),
.prevfifo_in0(prevfifo_in0),
.prevfifo_in1(prevfifo_in1),
.prevfifo_in2(prevfifo_in2),
.prevfifo_in3(prevfifo_in3),
.prevfifo_in4(prevfifo_in4),
.prevfifo_in5(prevfifo_in5),
.prevfifo_in6(prevfifo_in6),
.prevfifo_in7(prevfifo_in7),
.prevfifo_in8(prevfifo_in8),
.prevfifo_in9(prevfifo_in9),
.prevfifo_in10(prevfifo_in10),

.prevfifo_in11(prevfifo_in11),
.prevfifo_in12(prevfifo_in12),
.prevfifo_in13(prevfifo_in13),
.prevfifo_in14(prevfifo_in14),
.prevfifo_in15(prevfifo_in15),
.prevfifo_in16(prevfifo_in16),
.prevfifo_in17(prevfifo_in17),
.prevfifo_in18(prevfifo_in18),
.prevfifo_in19(prevfifo_in19),
.prevfifo_in20(prevfifo_in20),

.prevfifo_in21(prevfifo_in21),
.prevfifo_in22(prevfifo_in22),
.prevfifo_in23(prevfifo_in23),
.prevfifo_in24(prevfifo_in24),
.prevfifo_in25(prevfifo_in25),
.prevfifo_in26(prevfifo_in26),
.prevfifo_in27(prevfifo_in27),
.prevfifo_in28(prevfifo_in28),
.prevfifo_in29(prevfifo_in29),
.prevfifo_in30(prevfifo_in30),

.prevfifo_in31(prevfifo_in31),
.prevfifo_in32(prevfifo_in32),
.prevfifo_in33(prevfifo_in33),
.prevfifo_in34(prevfifo_in34),
.prevfifo_in35(prevfifo_in35),
.prevfifo_in36(prevfifo_in36),
.prevfifo_in37(prevfifo_in37),
.prevfifo_in38(prevfifo_in38),
.prevfifo_in39(prevfifo_in39),
.prevfifo_in40(prevfifo_in40),

.prevfifo_in41(prevfifo_in41),
.prevfifo_in42(prevfifo_in42),
.prevfifo_in43(prevfifo_in43),
.prevfifo_in44(prevfifo_in44),
.prevfifo_in45(prevfifo_in45),
.prevfifo_in46(prevfifo_in46),
.prevfifo_in47(prevfifo_in47),
.prevfifo_in48(prevfifo_in48),
.prevfifo_in49(prevfifo_in49),
.prevfifo_in50(prevfifo_in50),

.prevfifo_in51(prevfifo_in51),
.prevfifo_in52(prevfifo_in52),
.prevfifo_in53(prevfifo_in53),
.prevfifo_in54(prevfifo_in54),
.prevfifo_in55(prevfifo_in55),
.prevfifo_in56(prevfifo_in56),
.prevfifo_in57(prevfifo_in57),
.prevfifo_in58(prevfifo_in58),
.prevfifo_in59(prevfifo_in59),
.prevfifo_in60(prevfifo_in60),

.prevfifo_in61(prevfifo_in61),
.prevfifo_in62(prevfifo_in62),
.prevfifo_in63(prevfifo_in63),


.rst_n(rst_n),

//.fifo_in(fifo_in),
.fifo_in0(fifo_in0),
.fifo_in1(fifo_in1),
.fifo_in2(fifo_in2),
.fifo_in3(fifo_in3),
.fifo_in4(fifo_in4),
.fifo_in5(fifo_in5),
.fifo_in6(fifo_in6),
.fifo_in7(fifo_in7),
.fifo_in8(fifo_in8),
.fifo_in9(fifo_in9),
.fifo_in10(fifo_in10),

.fifo_in11(fifo_in11),
.fifo_in12(fifo_in12),
.fifo_in13(fifo_in13),
.fifo_in14(fifo_in14),
.fifo_in15(fifo_in15),
.fifo_in16(fifo_in16),
.fifo_in17(fifo_in17),
.fifo_in18(fifo_in18),
.fifo_in19(fifo_in19),
.fifo_in20(fifo_in20),

.fifo_in21(fifo_in21),
.fifo_in22(fifo_in22),
.fifo_in23(fifo_in23),
.fifo_in24(fifo_in24),
.fifo_in25(fifo_in25),
.fifo_in26(fifo_in26),
.fifo_in27(fifo_in27),
.fifo_in28(fifo_in28),
.fifo_in29(fifo_in29),
.fifo_in30(fifo_in30),

.fifo_in31(fifo_in31),
.fifo_in32(fifo_in32),
.fifo_in33(fifo_in33),
.fifo_in34(fifo_in34),
.fifo_in35(fifo_in35),
.fifo_in36(fifo_in36),
.fifo_in37(fifo_in37),
.fifo_in38(fifo_in38),
.fifo_in39(fifo_in39),
.fifo_in40(fifo_in40),

.fifo_in41(fifo_in41),
.fifo_in42(fifo_in42),
.fifo_in43(fifo_in43),
.fifo_in44(fifo_in44),
.fifo_in45(fifo_in45),
.fifo_in46(fifo_in46),
.fifo_in47(fifo_in47),
.fifo_in48(fifo_in48),
.fifo_in49(fifo_in49),
.fifo_in50(fifo_in50),

.fifo_in51(fifo_in51),
.fifo_in52(fifo_in52),
.fifo_in53(fifo_in53),
.fifo_in54(fifo_in54),
.fifo_in55(fifo_in55),
.fifo_in56(fifo_in56),
.fifo_in57(fifo_in57),
.fifo_in58(fifo_in58),
.fifo_in59(fifo_in59),
.fifo_in60(fifo_in60),

.fifo_in61(fifo_in61),
.fifo_in62(fifo_in62),
.fifo_in63(fifo_in63),


//.fifo_out(fifo_out),
.fifo_out0(fifo_out0),
.fifo_out1(fifo_out1),
.fifo_out2(fifo_out2),
.fifo_out3(fifo_out3),
.fifo_out4(fifo_out4),
.fifo_out5(fifo_out5),
.fifo_out6(fifo_out6),
.fifo_out7(fifo_out7),
.fifo_out8(fifo_out8),
.fifo_out9(fifo_out9),
.fifo_out10(fifo_out10),

.fifo_out11(fifo_out11),
.fifo_out12(fifo_out12),
.fifo_out13(fifo_out13),
.fifo_out14(fifo_out14),
.fifo_out15(fifo_out15),
.fifo_out16(fifo_out16),
.fifo_out17(fifo_out17),
.fifo_out18(fifo_out18),
.fifo_out19(fifo_out19),
.fifo_out20(fifo_out20),

.fifo_out21(fifo_out21),
.fifo_out22(fifo_out22),
.fifo_out23(fifo_out23),
.fifo_out24(fifo_out24),
.fifo_out25(fifo_out25),
.fifo_out26(fifo_out26),
.fifo_out27(fifo_out27),
.fifo_out28(fifo_out28),
.fifo_out29(fifo_out29),
.fifo_out30(fifo_out30),

.fifo_out31(fifo_out31),
.fifo_out32(fifo_out32),
.fifo_out33(fifo_out33),
.fifo_out34(fifo_out34),
.fifo_out35(fifo_out35),
.fifo_out36(fifo_out36),
.fifo_out37(fifo_out37),
.fifo_out38(fifo_out38),
.fifo_out39(fifo_out39),
.fifo_out40(fifo_out40),

.fifo_out41(fifo_out41),
.fifo_out42(fifo_out42),
.fifo_out43(fifo_out43),
.fifo_out44(fifo_out44),
.fifo_out45(fifo_out45),
.fifo_out46(fifo_out46),
.fifo_out47(fifo_out47),
.fifo_out48(fifo_out48),
.fifo_out49(fifo_out49),
.fifo_out50(fifo_out50),

.fifo_out51(fifo_out51),
.fifo_out52(fifo_out52),
.fifo_out53(fifo_out53),
.fifo_out54(fifo_out54),
.fifo_out55(fifo_out55),
.fifo_out56(fifo_out56),
.fifo_out57(fifo_out57),
.fifo_out58(fifo_out58),
.fifo_out59(fifo_out59),
.fifo_out60(fifo_out60),

.fifo_out61(fifo_out61),
.fifo_out62(fifo_out62),
.fifo_out63(fifo_out63),


//.fifo_counter(fifo_counter)
.fifo_counter0(fifo_counter0),
.fifo_counter1(fifo_counter1),
.fifo_counter2(fifo_counter2),
.fifo_counter3(fifo_counter3),
.fifo_counter4(fifo_counter4),
.fifo_counter5(fifo_counter5),
.fifo_counter6(fifo_counter6),
.fifo_counter7(fifo_counter7),
.fifo_counter8(fifo_counter8),
.fifo_counter9(fifo_counter9),
.fifo_counter10(fifo_counter10),

.fifo_counter11(fifo_counter11),
.fifo_counter12(fifo_counter12),
.fifo_counter13(fifo_counter13),
.fifo_counter14(fifo_counter14),
.fifo_counter15(fifo_counter15),
.fifo_counter16(fifo_counter16),
.fifo_counter17(fifo_counter17),
.fifo_counter18(fifo_counter18),
.fifo_counter19(fifo_counter19),
.fifo_counter20(fifo_counter20),

.fifo_counter21(fifo_counter21),
.fifo_counter22(fifo_counter22),
.fifo_counter23(fifo_counter23),
.fifo_counter24(fifo_counter24),
.fifo_counter25(fifo_counter25),
.fifo_counter26(fifo_counter26),
.fifo_counter27(fifo_counter27),
.fifo_counter28(fifo_counter28),
.fifo_counter29(fifo_counter29),
.fifo_counter30(fifo_counter30),

.fifo_counter31(fifo_counter31),
.fifo_counter32(fifo_counter32),
.fifo_counter33(fifo_counter33),
.fifo_counter34(fifo_counter34),
.fifo_counter35(fifo_counter35),
.fifo_counter36(fifo_counter36),
.fifo_counter37(fifo_counter37),
.fifo_counter38(fifo_counter38),
.fifo_counter39(fifo_counter39),
.fifo_counter40(fifo_counter40),

.fifo_counter41(fifo_counter41),
.fifo_counter42(fifo_counter42),
.fifo_counter43(fifo_counter43),
.fifo_counter44(fifo_counter44),
.fifo_counter45(fifo_counter45),
.fifo_counter46(fifo_counter46),
.fifo_counter47(fifo_counter47),
.fifo_counter48(fifo_counter48),
.fifo_counter49(fifo_counter49),
.fifo_counter50(fifo_counter50),

.fifo_counter51(fifo_counter51),
.fifo_counter52(fifo_counter52),
.fifo_counter53(fifo_counter53),
.fifo_counter54(fifo_counter54),
.fifo_counter55(fifo_counter55),
.fifo_counter56(fifo_counter56),
.fifo_counter57(fifo_counter57),
.fifo_counter58(fifo_counter58),
.fifo_counter59(fifo_counter59),
.fifo_counter60(fifo_counter60),

.fifo_counter61(fifo_counter61),
.fifo_counter62(fifo_counter62),
.fifo_counter63(fifo_counter63));

logic[7:0] testvector[10999:0];

initial 
begin
clk = 0;
rst_n = 1;
//rd_en1 = 0;

rd_en0=0;
rd_en1=0;
rd_en2=0;
rd_en3=0;
rd_en4=0;
rd_en5=0;
rd_en6=0;
rd_en7=0;
rd_en8=0;
rd_en9=0;
rd_en10=0;

rd_en11=0;
rd_en12=0;
rd_en13=0;
rd_en14=0;
rd_en15=0;
rd_en16=0;
rd_en17=0;
rd_en18=0;
rd_en19=0;
rd_en20=0;

rd_en21=0;
rd_en22=0;
rd_en23=0;
rd_en24=0;
rd_en25=0;
rd_en26=0;
rd_en27=0;
rd_en28=0;
rd_en29=0;
rd_en30=0;

rd_en41=0;
rd_en42=0;
rd_en43=0;
rd_en44=0;
rd_en45=0;
rd_en46=0;
rd_en47=0;
rd_en48=0;
rd_en49=0;
rd_en50=0;
      
rd_en51=0;
rd_en52=0;
rd_en53=0;
rd_en54=0;
rd_en55=0;
rd_en56=0;
rd_en57=0;
rd_en58=0;
rd_en59=0;
rd_en60=0;
       
rd_en61=0;
rd_en62=0;
rd_en63=0;

//wr_en1 = 0;
wr_en0=0;
wr_en1=0;
wr_en2=0;
wr_en3=0;
wr_en4=0;
wr_en5=0;
wr_en6=0;
wr_en7=0;
wr_en8=0;
wr_en9=0;
wr_en10=0;
       
wr_en11=0;
wr_en12=0;
wr_en13=0;
wr_en14=0;
wr_en15=0;
wr_en16=0;
wr_en17=0;
wr_en18=0;
wr_en19=0;
wr_en20=0;
       
wr_en21=0;
wr_en22=0;
wr_en23=0;
wr_en24=0;
wr_en25=0;
wr_en26=0;
wr_en27=0;
wr_en28=0;
wr_en29=0;
wr_en30=0;

wr_en31=0;
wr_en32=0;
wr_en33=0;
wr_en34=0;
wr_en35=0;
wr_en36=0;
wr_en37=0;
wr_en38=0;
wr_en39=0;
wr_en40=0;

wr_en41=0;
wr_en42=0;
wr_en43=0;
wr_en44=0;
wr_en45=0;
wr_en46=0;
wr_en47=0;
wr_en48=0;
wr_en49=0;
wr_en50=0;
       
wr_en51=0;
wr_en52=0;
wr_en53=0;
wr_en54=0;
wr_en55=0;
wr_en56=0;
wr_en57=0;
wr_en58=0;
wr_en59=0;
wr_en60=0;
       
wr_en61=0;
wr_en62=0;
wr_en63=0;


//tempdata = 0;
tempdata0=0;
tempdata1=0;
tempdata2=0;
tempdata3=0;
tempdata4=0;
tempdata5=0;
tempdata6=0;
tempdata7=0;
tempdata8=0;
tempdata9=0;
         
tempdata10=0;
tempdata11=0;
tempdata12=0;
tempdata13=0;
tempdata14=0;
tempdata15=0;
tempdata16=0;
tempdata17=0;
tempdata18=0;
tempdata19=0;
tempdata20=0;
         
tempdata21=0;
tempdata22=0;
tempdata23=0;
tempdata24=0;
tempdata25=0;
tempdata26=0;
tempdata27=0;
tempdata28=0;
tempdata29=0;
         
tempdata30=0;
tempdata31=0;
tempdata32=0;
tempdata33=0;
tempdata34=0;
tempdata35=0;
tempdata36=0;
tempdata37=0;
tempdata38=0;
tempdata39=0;
          
tempdata40=0;
tempdata41=0;
tempdata42=0;
tempdata43=0;
tempdata44=0;
tempdata45=0;
tempdata46=0;
tempdata47=0;
tempdata48=0;
tempdata49=0;
          
tempdata50=0;
tempdata51=0;
tempdata52=0;
tempdata53=0;
tempdata54=0;
tempdata55=0;
tempdata56=0;
tempdata57=0;
tempdata58=0;
tempdata59=0;
tempdata60=0;
          
tempdata61=0;
tempdata62=0;
tempdata63=0;



//fifo_in = {NUM_BITS{10'bx}};
fifo_in0 = {NUM_BITS{10'bx}};
fifo_in1 = {NUM_BITS{10'bx}};
fifo_in2 = {NUM_BITS{10'bx}};
fifo_in3 = {NUM_BITS{10'bx}};
fifo_in4 = {NUM_BITS{10'bx}};
fifo_in5 = {NUM_BITS{10'bx}};
fifo_in6 = {NUM_BITS{10'bx}};
fifo_in7 = {NUM_BITS{10'bx}};
fifo_in8 = {NUM_BITS{10'bx}};
fifo_in9 = {NUM_BITS{10'bx}};

fifo_in10 = {NUM_BITS{10'bx}};
fifo_in11 = {NUM_BITS{10'bx}};
fifo_in12 = {NUM_BITS{10'bx}};
fifo_in13 = {NUM_BITS{10'bx}};
fifo_in14 = {NUM_BITS{10'bx}};
fifo_in15 = {NUM_BITS{10'bx}};
fifo_in16 = {NUM_BITS{10'bx}};
fifo_in17 = {NUM_BITS{10'bx}};
fifo_in18 = {NUM_BITS{10'bx}};
fifo_in19 = {NUM_BITS{10'bx}};

fifo_in20 = {NUM_BITS{10'bx}};
fifo_in21 = {NUM_BITS{10'bx}};
fifo_in22 = {NUM_BITS{10'bx}};
fifo_in23 = {NUM_BITS{10'bx}};
fifo_in24 = {NUM_BITS{10'bx}};
fifo_in25 = {NUM_BITS{10'bx}};
fifo_in26 = {NUM_BITS{10'bx}};
fifo_in27 = {NUM_BITS{10'bx}};
fifo_in28 = {NUM_BITS{10'bx}};
fifo_in29 = {NUM_BITS{10'bx}};

fifo_in30 = {NUM_BITS{10'bx}};
fifo_in31 = {NUM_BITS{10'bx}};
fifo_in32 = {NUM_BITS{10'bx}};
fifo_in33 = {NUM_BITS{10'bx}};
fifo_in34 = {NUM_BITS{10'bx}};
fifo_in35 = {NUM_BITS{10'bx}};
fifo_in36 = {NUM_BITS{10'bx}};
fifo_in37 = {NUM_BITS{10'bx}};
fifo_in38 = {NUM_BITS{10'bx}};
fifo_in39 = {NUM_BITS{10'bx}};

fifo_in40 = {NUM_BITS{10'bx}};
fifo_in41 = {NUM_BITS{10'bx}};
fifo_in42 = {NUM_BITS{10'bx}};
fifo_in43 = {NUM_BITS{10'bx}};
fifo_in44 = {NUM_BITS{10'bx}};
fifo_in45 = {NUM_BITS{10'bx}};
fifo_in46 = {NUM_BITS{10'bx}};
fifo_in47 = {NUM_BITS{10'bx}};
fifo_in48 = {NUM_BITS{10'bx}};
fifo_in49 = {NUM_BITS{10'bx}};

fifo_in50 = {NUM_BITS{10'bx}};
fifo_in51 = {NUM_BITS{10'bx}};
fifo_in52 = {NUM_BITS{10'bx}};
fifo_in53 = {NUM_BITS{10'bx}};
fifo_in54 = {NUM_BITS{10'bx}};
fifo_in55 = {NUM_BITS{10'bx}};
fifo_in56 = {NUM_BITS{10'bx}};
fifo_in57 = {NUM_BITS{10'bx}};
fifo_in58 = {NUM_BITS{10'bx}};
fifo_in59 = {NUM_BITS{10'bx}};

fifo_in60 = {NUM_BITS{10'bx}};
fifo_in61 = {NUM_BITS{10'bx}};
fifo_in62 = {NUM_BITS{10'bx}};
fifo_in63 = {NUM_BITS{10'bx}};

#1 rst_n = 0;
#1 rst_n = 1;
//average
//sum=0;
sum0=0;
sum1=0;
sum2=0;
sum3=0;
sum4=0;
sum5=0;
sum6=0;
sum7=0;
sum8=0;
sum9=0;
sum10=0;
     
sum11=0;
sum12=0;
sum13=0;
sum14=0;
sum15=0;
sum16=0;
sum17=0;
sum18=0;
sum19=0;
sum20=0;
     
sum21=0;
sum22=0;
sum23=0;
sum24=0;
sum25=0;
sum26=0;
sum27=0;
sum28=0;
sum29=0;
sum30=0;
     
sum31=0;
sum32=0;
sum33=0;
sum34=0;
sum35=0;
sum36=0;
sum37=0;
sum38=0;
sum39=0;
sum40=0;
     
sum41=0;
sum42=0;
sum43=0;
sum44=0;
sum45=0;
sum46=0;
sum47=0;
sum48=0;
sum49=0;
sum50=0;
     
sum51=0;
sum52=0;
sum53=0;
sum54=0;
sum55=0;
sum56=0;
sum57=0;
sum58=0;
sum59=0;
sum60=0;
     
sum61=0;
sum62=0;
sum63=0;

//thres=0;
//prevfifo_in=0;
prevfifo_in0=0;
prevfifo_in1=0;
prevfifo_in2=0;
prevfifo_in3=0;
prevfifo_in4=0;
prevfifo_in5=0;
prevfifo_in6=0;
prevfifo_in7=0;
prevfifo_in8=0;
prevfifo_in9=0;
prevfifo_in10=0;
         
prevfifo_in11=0;
prevfifo_in12=0;
prevfifo_in13=0;
prevfifo_in14=0;
prevfifo_in15=0;
prevfifo_in16=0;
prevfifo_in17=0;
prevfifo_in18=0;
prevfifo_in19=0;
prevfifo_in20=0;
         
prevfifo_in21=0;
prevfifo_in22=0;
prevfifo_in23=0;
prevfifo_in24=0;
prevfifo_in25=0;
prevfifo_in26=0;
prevfifo_in27=0;
prevfifo_in28=0;
prevfifo_in29=0;
prevfifo_in30=0;
         
prevfifo_in31=0;
prevfifo_in32=0;
prevfifo_in33=0;
prevfifo_in34=0;
prevfifo_in35=0;
prevfifo_in36=0;
prevfifo_in37=0;
prevfifo_in38=0;
prevfifo_in39=0;
prevfifo_in40=0;
         
prevfifo_in41=0;
prevfifo_in42=0;
prevfifo_in43=0;
prevfifo_in44=0;
prevfifo_in45=0;
prevfifo_in46=0;
prevfifo_in47=0;
prevfifo_in48=0;
prevfifo_in49=0;
prevfifo_in50=0;
         
prevfifo_in51=0;
prevfifo_in52=0;
prevfifo_in53=0;
prevfifo_in54=0;
prevfifo_in55=0;
prevfifo_in56=0;
prevfifo_in57=0;
prevfifo_in58=0;
prevfifo_in59=0;
prevfifo_in60=0;
         
prevfifo_in61=0;
prevfifo_in62=0;
prevfifo_in63=0;
//Threshold=464;
end


always@(posedge clk or negedge clk)
begin

        fork
            //push(d_op);
				    //pop(tempdata);
				   push0(d0);
					push0(d0);
					push0(d0);
					push0(d0);
					push0(d0);
					push0(d0);
					pop0(tempdata0);
					push1(d1);
					pop1(tempdata1);
					push2(d2);
					pop2(tempdata2);
					push3(d3);
					pop3(tempdata3);
//					push4(d4);
//					pop4(tempdata4);
//					push5(d5);
//					pop5(tempdata5);
//					push6(d6);
//					pop6(tempdata6);
//					push7(d7);
//					pop7(tempdata7);
//					push8(d8);
//					pop8(tempdata8);
//					push9(d9);
//					pop9(tempdata9);
//					push10(d10);
//					pop10(tempdata10);
//					push11(d11);
//					pop11(tempdata11);
//					push12(d12);
//					pop12(tempdata12);
//					push13(d13);
//					pop13(tempdata13);
//					push14(d14);
//					pop14(tempdata14);
//					push15(d15);
//					pop15(tempdata15);
//					push16(d16);
//					pop16(tempdata16);
//					push17(d17);
//					pop17(tempdata17);
//					push18(d18);
//					pop18(tempdata18);
//					push19(d19);
//					pop19(tempdata19);
//					push20(d20);
//					pop20(tempdata20);
//					push21(d21);
//					pop21(tempdata21);
//					push22(d22);
//					pop22(tempdata22);
//					push23(d23);
//					pop23(tempdata23);
//					push24(d24);
//					pop24(tempdata24);
//					push25(d25);
//					pop25(tempdata25);
//					push26(d26);
//					pop26(tempdata26);
//					push27(d27);
//					pop27(tempdata27);
//					push28(d28);
//					pop28(tempdata28);
//					push29(d29);
//					pop29(tempdata29);
//					push30(d30);
//					pop30(tempdata30);
//					push31(d31);
//					pop31(tempdata31);
//					push32(d32);
//					pop32(tempdata32);
//					push33(d33);
//					pop33(tempdata33);
//					push34(d34);
//					pop34(tempdata34);
//					push35(d35);
//					pop35(tempdata35);
//					push36(d36);
//					pop36(tempdata36);
//					push37(d37);
//					pop37(tempdata37);
//					push38(d38);
//					pop38(tempdata38);
//					push39(d39);
//					pop39(tempdata39);
//					push40(d40);
//					pop40(tempdata40);
//					push41(d41);
//					pop41(tempdata41);
//					push42(d42);
//					pop42(tempdata42);
//					push43(d43);
//					pop43(tempdata43);
//					push44(d44);
//					pop44(tempdata44);
//					push45(d45);
//					pop45(tempdata45);
//					push46(d46);
//					pop46(tempdata46);
//					push47(d47);
//					pop47(tempdata47);
//					push48(d48);
//					pop48(tempdata48);
//					push49(d49);
//					pop49(tempdata49);
//					push50(d50);
//					pop50(tempdata50);
//					push51(d51);
//					pop51(tempdata51);
//					push52(d52);
//					pop52(tempdata52);
//					push53(d53);
//					pop53(tempdata53);
//					push54(d54);
//					pop54(tempdata54);
//					push55(d55);
//					pop55(tempdata55);
//					push56(d56);
//					pop56(tempdata56);
//					push57(d57);
//					pop57(tempdata57);
//					push58(d58);
//					pop58(tempdata58);
//					push59(d59);
//					pop59(tempdata59);
//					push60(d60);
//					pop60(tempdata60);
//					push61(d61);
//					pop61(tempdata61);
//					push62(d62);
//					pop62(tempdata62);
//					push63(d63);
//					pop63(tempdata63);
//push and pop together			
        join	               
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
//r0=testvector[i];
//r1=testvector[i+1];
//r2=testvector[i+2];
//r3=testvector[i+3];
//r4=testvector[i+4];
//r5=testvector[i+5];
//r6=testvector[i+6];
//r7=testvector[i+7];
//r8=testvector[i+8];
//r9=testvector[i+9];
//r10=testvector[i+10];
//r11=testvector[i+11];
//r12=testvector[i+12];
//r13=testvector[i+13];
//r14=testvector[i+14];
//r15=testvector[i+15];
//
//{regA}={r0,r1,r2,r3,r4,r5,r6,r7};
//{regB}={r8,r9,r10,r11,r12,r13,r14,r15};

{regA}= testvector[i];
{regB}=testvector[i+1];

concat_data={regA,regB};
{ch_in,d_in}=concat_data;
$display(regA,regB,concat_data,ch_in,d_in,ch_op,d0,fifo_in0,fifo_out0);
//d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,d60,d61,d62,d63,
//average
//
//   do  
//      begin
//		//sum=fifo_in+prevfifo_in;
//     // $display("\tSum = %0d",sum);
//		prevfifo_in=fifo_in;
//		thres=510;
//		if(fifo_in>thres)
//		$display("\tPeak = %0d at time %t",fifo_in,$time);
//		else
//		$display("\tNo Peak");
//		//thres=sum/clogb2(DEPTH);
//		//$display("\tThreshold = %0d",thres);
//      fifo_in++;
//      end
//while(full);
 

   do  
      begin
		prevfifo_in0=fifo_in0;
		Threshold0=452;
		if(fifo_in0>Threshold0)
		$display("\tPeak = %0d at time %t",fifo_in0,$time);
		else
		$display("\tNo Peak");
		fifo_in0++;
      end
while(full0);
   do  
      begin
		prevfifo_in1=fifo_in1;
		Threshold1=510;
		if(fifo_in1>Threshold1)
		$display("\tPeak = %1d at time %t",fifo_in1,$time);
		else
		$display("\tNo Peak");
		fifo_in1++;
      end
while(full1);

   do  
      begin
		prevfifo_in2=fifo_in2;
		Threshold2=510;
		if(fifo_in2>Threshold2)
		$display("\tPeak = %2d at time %t",fifo_in2,$time);
		else
		$display("\tNo Peak");
		fifo_in2++;
      end
while(full2);

   do  
      begin
		prevfifo_in3=fifo_in3;
		Threshold3=510;
		if(fifo_in3>Threshold3)
		$display("\tPeak = %3d at time %t",fifo_in3,$time);
		else
		$display("\tNo Peak");
		fifo_in3++;
      end
while(full3);

   do  
      begin
		prevfifo_in4=fifo_in4;
		Threshold4=510;
		if(fifo_in4>Threshold4)
		$display("\tPeak = %4d at time %t",fifo_in4,$time);
		else
		$display("\tNo Peak");
		fifo_in4++;
      end
while(full4);

   do  
      begin
		prevfifo_in5=fifo_in5;
		Threshold5=510;
		if(fifo_in5>Threshold5)
		$display("\tPeak = %5d at time %t",fifo_in5,$time);
		else
		$display("\tNo Peak");
		fifo_in5++;
      end
while(full5);

   do  
      begin
		prevfifo_in6=fifo_in6;
		Threshold6=510;
		if(fifo_in6>Threshold6)
		$display("\tPeak = %6d at time %t",fifo_in6,$time);
		else
		$display("\tNo Peak");
		fifo_in6++;
      end
while(full6);

   do  
      begin
		prevfifo_in7=fifo_in7;
		Threshold7=510;
		if(fifo_in7>Threshold7)
		$display("\tPeak = %7d at time %t",fifo_in7,$time);
		else
		$display("\tNo Peak");
		fifo_in7++;
      end
while(full7);


   do  
      begin
		prevfifo_in8=fifo_in8;
		Threshold8=510;
		if(fifo_in8>Threshold8)
		$display("\tPeak = %8d at time %t",fifo_in8,$time);
		else
		$display("\tNo Peak");
		fifo_in8++;
      end
while(full8);


   do  
      begin
		prevfifo_in9=fifo_in9;
		Threshold9=510;
		if(fifo_in9>Threshold9)
		$display("\tPeak = %9d at time %t",fifo_in9,$time);
		else
		$display("\tNo Peak");
		fifo_in9++;
      end
while(full9);

   do  
      begin
		prevfifo_in10=fifo_in10;
		Threshold10=510;
		if(fifo_in10>Threshold10)
		$display("\tPeak = %10d at time %t",fifo_in10,$time);
		else
		$display("\tNo Peak");
		fifo_in10++;
      end
while(full10);

   do  
      begin
		prevfifo_in11=fifo_in11;
		Threshold11=510;
		if(fifo_in11>Threshold11)
		$display("\tPeak = %11d at time %t",fifo_in11,$time);
		else
		$display("\tNo Peak");
		fifo_in11++;
      end
while(full11);

   do  
      begin
		prevfifo_in12=fifo_in12;
		Threshold12=510;
		if(fifo_in12>Threshold12)
		$display("\tPeak = %12d at time %t",fifo_in12,$time);
		else
		$display("\tNo Peak");
		fifo_in12++;
      end
while(full12);

   do  
      begin
		prevfifo_in13=fifo_in13;
		Threshold13=510;
		if(fifo_in13>Threshold13)
		$display("\tPeak = %13d at time %t",fifo_in13,$time);
		else
		$display("\tNo Peak");
		fifo_in13++;
      end
while(full13);

   do  
      begin
		prevfifo_in14=fifo_in14;
		Threshold14=510;
		if(fifo_in14>Threshold14)
		$display("\tPeak = %14d at time %t",fifo_in14,$time);
		else
		$display("\tNo Peak");
		fifo_in14++;
      end
while(full14);

   do  
      begin
		prevfifo_in15=fifo_in15;
		Threshold15=510;
		if(fifo_in15>Threshold15)
		$display("\tPeak = %15d at time %t",fifo_in15,$time);
		else
		$display("\tNo Peak");
		fifo_in15++;
      end
while(full15);


   do  
      begin
		prevfifo_in16=fifo_in16;
		Threshold16=510;
		if(fifo_in16>Threshold16)
		$display("\tPeak = %16d at time %t",fifo_in16,$time);
		else
		$display("\tNo Peak");
		fifo_in16++;
      end
while(full16);

   do  
      begin
		prevfifo_in17=fifo_in17;
		Threshold17=510;
		if(fifo_in17>Threshold17)
		$display("\tPeak = %17d at time %t",fifo_in17,$time);
		else
		$display("\tNo Peak");
		fifo_in17++;
      end
while(full17);


   do  
      begin
		prevfifo_in18=fifo_in18;
		Threshold18=510;
		if(fifo_in18>Threshold18)
		$display("\tPeak = %18d at time %t",fifo_in18,$time);
		else
		$display("\tNo Peak");
		fifo_in18++;
      end
while(full18);


   do  
      begin
		prevfifo_in19=fifo_in19;
		Threshold19=510;
		if(fifo_in19>Threshold19)
		$display("\tPeak = %19d at time %t",fifo_in19,$time);
		else
		$display("\tNo Peak");
		fifo_in19++;
      end
while(full19);


   do  
      begin
		prevfifo_in20=fifo_in20;
		Threshold20=510;
		if(fifo_in20>Threshold20)
		$display("\tPeak = %20d at time %t",fifo_in20,$time);
		else
		$display("\tNo Peak");
		fifo_in20++;
      end
while(full20);


   do  
      begin
		prevfifo_in21=fifo_in21;
		Threshold21=510;
		if(fifo_in21>Threshold21)
		$display("\tPeak = %21d at time %t",fifo_in21,$time);
		else
		$display("\tNo Peak");
		fifo_in21++;
      end
while(full21);

   do  
      begin
		prevfifo_in22=fifo_in22;
		Threshold22=510;
		if(fifo_in22>Threshold22)
		$display("\tPeak = %22d at time %t",fifo_in22,$time);
		else
		$display("\tNo Peak");
		fifo_in22++;
      end
while(full22);

   do  
      begin
		prevfifo_in23=fifo_in23;
		Threshold23=510;
		if(fifo_in23>Threshold23)
		$display("\tPeak = %23d at time %t",fifo_in23,$time);
		else
		$display("\tNo Peak");
		fifo_in23++;
      end
while(full23);

   do  
      begin
		prevfifo_in24=fifo_in24;
		Threshold24=510;
		if(fifo_in24>Threshold24)
		$display("\tPeak = %24d at time %t",fifo_in24,$time);
		else
		$display("\tNo Peak");
		fifo_in24++;
      end
while(full24);

   do  
      begin
		prevfifo_in25=fifo_in25;
		Threshold25=510;
		if(fifo_in25>Threshold25)
		$display("\tPeak = %25d at time %t",fifo_in25,$time);
		else
		$display("\tNo Peak");
		fifo_in25++;
      end
while(full25);


   do  
      begin
		prevfifo_in26=fifo_in26;
		Threshold26=510;
		if(fifo_in26>Threshold26)
		$display("\tPeak = %26d at time %t",fifo_in26,$time);
		else
		$display("\tNo Peak");
		fifo_in26++;
      end
while(full26);

   do  
      begin
		prevfifo_in27=fifo_in27;
		Threshold27=510;
		if(fifo_in27>Threshold27)
		$display("\tPeak = %27d at time %t",fifo_in27,$time);
		else
		$display("\tNo Peak");
		fifo_in27++;
      end
while(full27);


   do  
      begin
		prevfifo_in28=fifo_in28;
		Threshold28=510;
		if(fifo_in28>Threshold28)
		$display("\tPeak = %28d at time %t",fifo_in28,$time);
		else
		$display("\tNo Peak");
		fifo_in28++;
      end
while(full28);


   do  
      begin
		prevfifo_in29=fifo_in29;
		Threshold29=510;
		if(fifo_in29>Threshold29)
		$display("\tPeak = %29d at time %t",fifo_in29,$time);
		else
		$display("\tNo Peak");
		fifo_in29++;
      end
while(full29);


   do  
      begin
		prevfifo_in30=fifo_in30;
		Threshold30=510;
		if(fifo_in30>Threshold30)
		$display("\tPeak = %30d at time %t",fifo_in30,$time);
		else
		$display("\tNo Peak");
		fifo_in30++;
      end
while(full30);


   do  
      begin
		prevfifo_in31=fifo_in31;
		Threshold31=510;
		if(fifo_in31>Threshold31)
		$display("\tPeak = %31d at time %t",fifo_in31,$time);
		else
		$display("\tNo Peak");
		fifo_in31++;
      end
while(full31);

   do  
      begin
		prevfifo_in32=fifo_in32;
		Threshold32=510;
		if(fifo_in32>Threshold32)
		$display("\tPeak = %32d at time %t",fifo_in32,$time);
		else
		$display("\tNo Peak");
		fifo_in32++;
      end
while(full32);

   do  
      begin
		prevfifo_in33=fifo_in33;
		Threshold33=510;
		if(fifo_in33>Threshold33)
		$display("\tPeak = %33d at time %t",fifo_in33,$time);
		else
		$display("\tNo Peak");
		fifo_in33++;
      end
while(full33);

   do  
      begin
		prevfifo_in34=fifo_in34;
		Threshold34=510;
		if(fifo_in34>Threshold34)
		$display("\tPeak = %34d at time %t",fifo_in34,$time);
		else
		$display("\tNo Peak");
		fifo_in34++;
      end
while(full34);

   do  
      begin
		prevfifo_in35=fifo_in35;
		Threshold35=510;
		if(fifo_in35>Threshold35)
		$display("\tPeak = %35d at time %t",fifo_in35,$time);
		else
		$display("\tNo Peak");
		fifo_in35++;
      end
while(full35);


   do  
      begin
		prevfifo_in36=fifo_in36;
		Threshold36=510;
		if(fifo_in36>Threshold36)
		$display("\tPeak = %36d at time %t",fifo_in36,$time);
		else
		$display("\tNo Peak");
		fifo_in36++;
      end
while(full36);

   do  
      begin
		prevfifo_in37=fifo_in37;
		Threshold37=510;
		if(fifo_in37>Threshold37)
		$display("\tPeak = %37d at time %t",fifo_in37,$time);
		else
		$display("\tNo Peak");
		fifo_in37++;
      end
while(full37);


   do  
      begin
		prevfifo_in38=fifo_in38;
		Threshold38=510;
		if(fifo_in38>Threshold38)
		$display("\tPeak = %38d at time %t",fifo_in38,$time);
		else
		$display("\tNo Peak");
		fifo_in38++;
      end
while(full38);


   do  
      begin
		prevfifo_in39=fifo_in39;
		Threshold39=510;
		if(fifo_in39>Threshold39)
		$display("\tPeak = %39d at time %t",fifo_in39,$time);
		else
		$display("\tNo Peak");
		fifo_in39++;
      end
while(full39);


   do  
      begin
		prevfifo_in40=fifo_in40;
		Threshold40=510;
		if(fifo_in40>Threshold40)
		$display("\tPeak = %40d at time %t",fifo_in40,$time);
		else
		$display("\tNo Peak");
		fifo_in40++;
      end
while(full40);


   do  
      begin
		prevfifo_in41=fifo_in41;
		Threshold41=510;
		if(fifo_in41>Threshold41)
		$display("\tPeak = %41d at time %t",fifo_in41,$time);
		else
		$display("\tNo Peak");
		fifo_in41++;
      end
while(full41);

   do  
      begin
		prevfifo_in42=fifo_in42;
		Threshold42=510;
		if(fifo_in42>Threshold42)
		$display("\tPeak = %42d at time %t",fifo_in42,$time);
		else
		$display("\tNo Peak");
		fifo_in42++;
      end
while(full42);

   do  
      begin
		prevfifo_in43=fifo_in43;
		Threshold43=510;
		if(fifo_in43>Threshold43)
		$display("\tPeak = %43d at time %t",fifo_in43,$time);
		else
		$display("\tNo Peak");
		fifo_in43++;
      end
while(full43);

   do  
      begin
		prevfifo_in44=fifo_in44;
		Threshold44=510;
		if(fifo_in44>Threshold44)
		$display("\tPeak = %44d at time %t",fifo_in44,$time);
		else
		$display("\tNo Peak");
		fifo_in44++;
      end
while(full44);

   do  
      begin
		prevfifo_in45=fifo_in45;
		Threshold45=510;
		if(fifo_in45>Threshold45)
		$display("\tPeak = %45d at time %t",fifo_in45,$time);
		else
		$display("\tNo Peak");
		fifo_in45++;
      end
while(full45);


   do  
      begin
		prevfifo_in46=fifo_in46;
		Threshold46=510;
		if(fifo_in46>Threshold46)
		$display("\tPeak = %46d at time %t",fifo_in46,$time);
		else
		$display("\tNo Peak");
		fifo_in46++;
      end
while(full46);

   do  
      begin
		prevfifo_in47=fifo_in47;
		Threshold47=510;
		if(fifo_in47>Threshold47)
		$display("\tPeak = %47d at time %t",fifo_in47,$time);
		else
		$display("\tNo Peak");
		fifo_in47++;
      end
while(full47);


   do  
      begin
		prevfifo_in48=fifo_in48;
		Threshold48=510;
		if(fifo_in48>Threshold48)
		$display("\tPeak = %48d at time %t",fifo_in48,$time);
		else
		$display("\tNo Peak");
		fifo_in48++;
      end
while(full48);


   do  
      begin
		prevfifo_in49=fifo_in49;
		Threshold49=510;
		if(fifo_in49>Threshold49)
		$display("\tPeak = %49d at time %t",fifo_in49,$time);
		else
		$display("\tNo Peak");
		fifo_in49++;
      end
while(full49);


   do  
      begin
		prevfifo_in50=fifo_in50;
		Threshold50=510;
		if(fifo_in50>Threshold50)
		$display("\tPeak = %50d at time %t",fifo_in50,$time);
		else
		$display("\tNo Peak");
		fifo_in50++;
      end
while(full50);


   do  
      begin
		prevfifo_in51=fifo_in51;
		Threshold51=510;
		if(fifo_in51>Threshold51)
		$display("\tPeak = %51d at time %t",fifo_in51,$time);
		else
		$display("\tNo Peak");
		fifo_in51++;
      end
while(full51);

   do  
      begin
		prevfifo_in52=fifo_in52;
		Threshold52=510;
		if(fifo_in52>Threshold52)
		$display("\tPeak = %52d at time %t",fifo_in52,$time);
		else
		$display("\tNo Peak");
		fifo_in52++;
      end
while(full52);

   do  
      begin
		prevfifo_in53=fifo_in53;
		Threshold53=510;
		if(fifo_in53>Threshold53)
		$display("\tPeak = %53d at time %t",fifo_in53,$time);
		else
		$display("\tNo Peak");
		fifo_in53++;
      end
while(full53);

   do  
      begin
		prevfifo_in54=fifo_in54;
		Threshold54=510;
		if(fifo_in54>Threshold54)
		$display("\tPeak = %54d at time %t",fifo_in54,$time);
		else
		$display("\tNo Peak");
		fifo_in54++;
      end
while(full54);

   do  
      begin
		prevfifo_in55=fifo_in55;
		Threshold55=510;
		if(fifo_in55>Threshold55)
		$display("\tPeak = %55d at time %t",fifo_in55,$time);
		else
		$display("\tNo Peak");
		fifo_in55++;
      end
while(full55);


   do  
      begin
		prevfifo_in56=fifo_in56;
		Threshold56=510;
		if(fifo_in56>Threshold56)
		$display("\tPeak = %56d at time %t",fifo_in56,$time);
		else
		$display("\tNo Peak");
		fifo_in56++;
      end
while(full56);

   do  
      begin
		prevfifo_in57=fifo_in57;
		Threshold57=510;
		if(fifo_in57>Threshold57)
		$display("\tPeak = %57d at time %t",fifo_in57,$time);
		else
		$display("\tNo Peak");
		fifo_in57++;
      end
while(full57);


   do  
      begin
		prevfifo_in58=fifo_in58;
		Threshold58=510;
		if(fifo_in58>Threshold58)
		$display("\tPeak = %58d at time %t",fifo_in58,$time);
		else
		$display("\tNo Peak");
		fifo_in58++;
      end
while(full58);


   do  
      begin
		prevfifo_in59=fifo_in59;
		Threshold59=510;
		if(fifo_in59>Threshold59)
		$display("\tPeak = %59d at time %t",fifo_in59,$time);
		else
		$display("\tNo Peak");
		fifo_in59++;
      end
while(full59);


   do  
      begin
		prevfifo_in60=fifo_in60;
		Threshold60=510;
		if(fifo_in60>Threshold60)
		$display("\tPeak = %60d at time %t",fifo_in60,$time);
		else
		$display("\tNo Peak");
		fifo_in60++;
      end
while(full60);



   do  
      begin
		prevfifo_in61=fifo_in61;
		Threshold61=510;
		if(fifo_in61>Threshold61)
		$display("\tPeak = %61d at time %t",fifo_in61,$time);
		else
		$display("\tNo Peak");
		fifo_in61++;
      end
while(full61);


   do  
      begin
		prevfifo_in62=fifo_in62;
		Threshold62=510;
		if(fifo_in62>Threshold62)
		$display("\tPeak = %62d at time %t",fifo_in62,$time);
		else
		$display("\tNo Peak");
		fifo_in62++;
      end
while(full62);


   do  
      begin
		prevfifo_in63=fifo_in63;
		Threshold63=510;
		if(fifo_in63>Threshold63)
		$display("\tPeak = %63d at time %t",fifo_in63,$time);
		else
		$display("\tNo Peak");
		fifo_in63++;
      end
while(full63);
 
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
//i=i+16;
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

//	 
//task push;
//input[(NUM_BITS-1):0] data;        
//if( full )
//$display("---Cannot push <%d>: Buffer Full at time %t",data,$time);
//else
//begin        
//fifo_in = data;
//wr_en1 = 1;
//@(posedge clk); 
//wr_en1 = 0;
//end    
//endtask
//    
//task pop;
//output [(NUM_BITS-1):0] data;    
//if( empty )
//$display("---Cannot Pop <%d>: Buffer Empty at time %t",data,$time);
//else
//begin    
//rd_en1 = 1;
//@(posedge clk);   
//rd_en1 = 0;
//data = fifo_out;    
//end
//endtask
//

task push0;
input[(NUM_BITS-1):0] data0;        
if( full0 )
$display("---Cannot push <%d>: Buffer Full at time %t",data0,$time);
else
begin        
fifo_in0 = data0;
wr_en0 = 1;
@(posedge clk); 
wr_en0 = 0;
end    
endtask

task push1;
input[(NUM_BITS-1):0] data1;        
if( full1 )
$display("---Cannot push <%d>: Buffer Full at time %t",data1,$time);
else
begin        
fifo_in1 = data1;
wr_en1 = 1;
@(posedge clk); 
wr_en1 = 0;
end    
endtask

task push2;
input[(NUM_BITS-1):0] data2;        
if( full2 )
$display("---Cannot push <%d>: Buffer Full at time %t",data2,$time);
else
begin        
fifo_in2 = data2;
wr_en2 = 1;
@(posedge clk); 
wr_en2 = 0;
end    
endtask

task push3;
input[(NUM_BITS-1):0] data3;        
if( full3 )
$display("---Cannot push <%d>: Buffer Full at time %t",data3,$time);
else
begin        
fifo_in3 = data3;
wr_en3 = 1;
@(posedge clk); 
wr_en3 = 0;
end    
endtask

task push4;
input[(NUM_BITS-1):0] data4;        
if(full4 )
$display("---Cannot push <%d>: Buffer Full at time %t",data4,$time);
else
begin        
fifo_in4 = data4;
wr_en4 = 1;
@(posedge clk); 
wr_en4 = 0;
end    
endtask

task push5;
input[(NUM_BITS-1):0] data5;        
if( full5 )
$display("---Cannot push <%d>: Buffer Full at time %t",data5,$time);
else
begin        
fifo_in0 = data5;
wr_en5 = 1;
@(posedge clk); 
wr_en5 = 0;
end    
endtask

task push6;
input[(NUM_BITS-1):0] data6;        
if( full6 )
$display("---Cannot push <%d>: Buffer Full at time %t",data6,$time);
else
begin        
fifo_in6 = data6;
wr_en6 = 1;
@(posedge clk); 
wr_en6 = 0;
end    
endtask

task push7;
input[(NUM_BITS-1):0] data7;        
if( full7 )
$display("---Cannot push <%d>: Buffer Full at time %t",data7,$time);
else
begin        
fifo_in7 = data7;
wr_en7 = 1;
@(posedge clk); 
wr_en7 = 0;
end    
endtask

task push8;
input[(NUM_BITS-1):0] data8;        
if( full8 )
$display("---Cannot push <%d>: Buffer Full at time %t",data8,$time);
else
begin        
fifo_in8 = data8;
wr_en8 = 1;
@(posedge clk); 
wr_en8 = 0;
end    
endtask

task push9;
input[(NUM_BITS-1):0] data9;        
if( full9 )
$display("---Cannot push <%d>: Buffer Full at time %t",data9,$time);
else
begin        
fifo_in9 = data9;
wr_en9 = 1;
@(posedge clk); 
wr_en9 = 0;
end    
endtask

task push10;
input[(NUM_BITS-1):0] data10;        
if( full10 )
$display("---Cannot push <%d>: Buffer Full at time %t",data10,$time);
else
begin        
fifo_in10 = data10;
wr_en10 = 1;
@(posedge clk); 
wr_en10 = 0;
end    
endtask

task push11;
input[(NUM_BITS-1):0] data11;        
if( full1 )
$display("---Cannot push <%d>: Buffer Full at time %t",data11,$time);
else
begin        
fifo_in11 = data11;
wr_en11 = 1;
@(posedge clk); 
wr_en11 = 0;
end    
endtask

task push12;
input[(NUM_BITS-1):0] data12;        
if( full12 )
$display("---Cannot push <%d>: Buffer Full at time %t",data12,$time);
else
begin        
fifo_in12 = data12;
wr_en12 = 1;
@(posedge clk); 
wr_en12 = 0;
end    
endtask


task push13;
input[(NUM_BITS-1):0] data13;        
if( full13 )
$display("---Cannot push <%d>: Buffer Full at time %t",data13,$time);
else
begin        
fifo_in13 = data13;
wr_en13 = 1;
@(posedge clk); 
wr_en13 = 0;
end    
endtask


task push14;
input[(NUM_BITS-1):0] data14;        
if( full14 )
$display("---Cannot push <%d>: Buffer Full at time %t",data14,$time);
else
begin        
fifo_in14 = data14;
wr_en14 = 1;
@(posedge clk); 
wr_en14 = 0;
end    
endtask


task push15;
input[(NUM_BITS-1):0] data15;        
if( full15 )
$display("---Cannot push <%d>: Buffer Full at time %t",data15,$time);
else
begin        
fifo_in15 = data15;
wr_en15 = 1;
@(posedge clk); 
wr_en15 = 0;
end    
endtask


task push16;
input[(NUM_BITS-1):0] data16;        
if( full16 )
$display("---Cannot push <%d>: Buffer Full at time %t",data16,$time);
else
begin        
fifo_in16 = data16;
wr_en16 = 1;
@(posedge clk); 
wr_en16 = 0;
end    
endtask


task push17;
input[(NUM_BITS-1):0] data17;        
if( full17 )
$display("---Cannot push <%d>: Buffer Full at time %t",data17,$time);
else
begin        
fifo_in17 = data17;
wr_en17 = 1;
@(posedge clk); 
wr_en17 = 0;
end    
endtask


task push18;
input[(NUM_BITS-1):0] data18;        
if( full18 )
$display("---Cannot push <%d>: Buffer Full at time %t",data18,$time);
else
begin        
fifo_in18 = data18;
wr_en18 = 1;
@(posedge clk); 
wr_en18 = 0;
end    
endtask


task push19;
input[(NUM_BITS-1):0] data19;        
if( full19 )
$display("---Cannot push <%d>: Buffer Full at time %t",data19,$time);
else
begin        
fifo_in19 = data19;
wr_en19 = 1;
@(posedge clk); 
wr_en9 = 0;
end    
endtask


task push20;
input[(NUM_BITS-1):0] data20;        
if( full20 )
$display("---Cannot push <%d>: Buffer Full at time %t",data20,$time);
else
begin        
fifo_in20 = data20;
wr_en20 = 1;
@(posedge clk); 
wr_en20 = 0;
end    
endtask


task push21;
input[(NUM_BITS-1):0] data21;        
if( full21 )
$display("---Cannot push <%d>: Buffer Full at time %t",data21,$time);
else
begin        
fifo_in21 = data21;
wr_en21 = 1;
@(posedge clk); 
wr_en21 = 0;
end    
endtask


task push22;
input[(NUM_BITS-1):0] data22;        
if( full22 )
$display("---Cannot push <%d>: Buffer Full at time %t",data22,$time);
else
begin        
fifo_in22 = data22;
wr_en22 = 1;
@(posedge clk); 
wr_en22 = 0;
end    
endtask


task push23;
input[(NUM_BITS-1):0] data23;        
if( full23 )
$display("---Cannot push <%d>: Buffer Full at time %t",data23,$time);
else
begin        
fifo_in23 = data23;
wr_en23 = 1;
@(posedge clk); 
wr_en23 = 0;
end    
endtask


task push24;
input[(NUM_BITS-1):0] data24;        
if( full24 )
$display("---Cannot push <%d>: Buffer Full at time %t",data24,$time);
else
begin        
fifo_in24 = data24;
wr_en24 = 1;
@(posedge clk); 
wr_en24 = 0;
end    
endtask


task push25;
input[(NUM_BITS-1):0] data25;        
if( full25 )
$display("---Cannot push <%d>: Buffer Full at time %t",data25,$time);
else
begin        
fifo_in25 = data25;
wr_en25 = 1;
@(posedge clk); 
wr_en25 = 0;
end    
endtask


task push26;
input[(NUM_BITS-1):0] data26;        
if( full26 )
$display("---Cannot push <%d>: Buffer Full at time %t",data26,$time);
else
begin        
fifo_in26 = data26;
wr_en6 = 1;
@(posedge clk); 
wr_en6 = 0;
end    
endtask


task push27;
input[(NUM_BITS-1):0] data27;        
if( full27 )
$display("---Cannot push <%d>: Buffer Full at time %t",data27,$time);
else
begin        
fifo_in27 = data27;
wr_en27 = 1;
@(posedge clk); 
wr_en27 = 0;
end    
endtask


task push28;
input[(NUM_BITS-1):0] data28;        
if( full28 )
$display("---Cannot push <%d>: Buffer Full at time %t",data28,$time);
else
begin        
fifo_in28 = data28;
wr_en28 = 1;
@(posedge clk); 
wr_en28 = 0;
end    
endtask

task push29;
input[(NUM_BITS-1):0] data29;        
if( full29 )
$display("---Cannot push <%d>: Buffer Full at time %t",data29,$time);
else
begin        
fifo_in29 = data29;
wr_en29 = 1;
@(posedge clk); 
wr_en29 = 0;
end    
endtask

task push30;
input[(NUM_BITS-1):0] data30;        
if( full30 )
$display("---Cannot push <%d>: Buffer Full at time %t",data30,$time);
else
begin        
fifo_in30 = data30;
wr_en30 = 1;
@(posedge clk); 
wr_en30 = 0;
end    
endtask

task push31;
input[(NUM_BITS-1):0] data31;        
if( full31 )
$display("---Cannot push <%d>: Buffer Full at time %t",data31,$time);
else
begin        
fifo_in31 = data31;
wr_en31 = 1;
@(posedge clk); 
wr_en31 = 0;
end    
endtask

task push32;
input[(NUM_BITS-1):0] data32;        
if( full32 )
$display("---Cannot push <%d>: Buffer Full at time %t",data32,$time);
else
begin        
fifo_in32 = data32;
wr_en32 = 1;
@(posedge clk); 
wr_en32 = 0;
end    
endtask

task push33;
input[(NUM_BITS-1):0] data33;        
if( full33 )
$display("---Cannot push <%d>: Buffer Full at time %t",data33,$time);
else
begin        
fifo_in33 = data33;
wr_en33 = 1;
@(posedge clk); 
wr_en33 = 0;
end    
endtask

task push34;
input[(NUM_BITS-1):0] data34;        
if( full34 )
$display("---Cannot push <%d>: Buffer Full at time %t",data34,$time);
else
begin        
fifo_in34 = data34;
wr_en34 = 1;
@(posedge clk); 
wr_en34 = 0;
end    
endtask

task push35;
input[(NUM_BITS-1):0] data35;        
if( full35 )
$display("---Cannot push <%d>: Buffer Full at time %t",data35,$time);
else
begin        
fifo_in35 = data35;
wr_en35 = 1;
@(posedge clk); 
wr_en35 = 0;
end    
endtask

task push36;
input[(NUM_BITS-1):0] data36;        
if( full36 )
$display("---Cannot push <%d>: Buffer Full at time %t",data36,$time);
else
begin        
fifo_in36 = data36;
wr_en36 = 1;
@(posedge clk); 
wr_en36 = 0;
end    
endtask

task push37;
input[(NUM_BITS-1):0] data37;        
if( full37 )
$display("---Cannot push <%d>: Buffer Full at time %t",data37,$time);
else
begin        
fifo_in37 = data37;
wr_en37 = 1;
@(posedge clk); 
wr_en37 = 0;
end    
endtask

task push38;
input[(NUM_BITS-1):0] data38;        
if( full38 )
$display("---Cannot push <%d>: Buffer Full at time %t",data38,$time);
else
begin        
fifo_in38 = data38;
wr_en38 = 1;
@(posedge clk); 
wr_en38 = 0;
end    
endtask

task push39;
input[(NUM_BITS-1):0] data39;        
if( full39 )
$display("---Cannot push <%d>: Buffer Full at time %t",data39,$time);
else
begin        
fifo_in39 = data39;
wr_en39 = 1;
@(posedge clk); 
wr_en39 = 0;
end    
endtask

task push40;
input[(NUM_BITS-1):0] data40;        
if( full40 )
$display("---Cannot push <%d>: Buffer Full at time %t",data40,$time);
else
begin        
fifo_in40 = data40;
wr_en40 = 1;
@(posedge clk); 
wr_en40 = 0;
end    
endtask

task push41;
input[(NUM_BITS-1):0] data41;        
if( full41 )
$display("---Cannot push <%d>: Buffer Full at time %t",data41,$time);
else
begin        
fifo_in41 = data41;
wr_en41 = 1;
@(posedge clk); 
wr_en41 = 0;
end    
endtask

task push42;
input[(NUM_BITS-1):0] data42;        
if( full42 )
$display("---Cannot push <%d>: Buffer Full at time %t",data42,$time);
else
begin        
fifo_in42 = data42;
wr_en42 = 1;
@(posedge clk); 
wr_en42 = 0;
end    
endtask

task push43;
input[(NUM_BITS-1):0] data43;        
if( full43 )
$display("---Cannot push <%d>: Buffer Full at time %t",data43,$time);
else
begin        
fifo_in43 = data43;
wr_en43 = 1;
@(posedge clk); 
wr_en43 = 0;
end    
endtask

task push44;
input[(NUM_BITS-1):0] data44;        
if( full44 )
$display("---Cannot push <%d>: Buffer Full at time %t",data44,$time);
else
begin        
fifo_in44 = data44;
wr_en44 = 1;
@(posedge clk); 
wr_en44 = 0;
end    
endtask

task push45;
input[(NUM_BITS-1):0] data45;        
if( full45 )
$display("---Cannot push <%d>: Buffer Full at time %t",data45,$time);
else
begin        
fifo_in45 = data45;
wr_en45 = 1;
@(posedge clk); 
wr_en45 = 0;
end    
endtask

task push46;
input[(NUM_BITS-1):0] data46;        
if( full46 )
$display("---Cannot push <%d>: Buffer Full at time %t",data46,$time);
else
begin        
fifo_in46 = data46;
wr_en46 = 1;
@(posedge clk); 
wr_en46 = 0;
end    
endtask

task push47;
input[(NUM_BITS-1):0] data47;        
if( full47 )
$display("---Cannot push <%d>: Buffer Full at time %t",data47,$time);
else
begin        
fifo_in47 = data47;
wr_en47 = 1;
@(posedge clk); 
wr_en47 = 0;
end    
endtask

task push48;
input[(NUM_BITS-1):0] data48;        
if( full48 )
$display("---Cannot push <%d>: Buffer Full at time %t",data48,$time);
else
begin        
fifo_in48 = data48;
wr_en48 = 1;
@(posedge clk); 
wr_en48 = 0;
end    
endtask

task push49;
input[(NUM_BITS-1):0] data49;        
if( full49 )
$display("---Cannot push <%d>: Buffer Full at time %t",data49,$time);
else
begin        
fifo_in49 = data49;
wr_en49 = 1;
@(posedge clk); 
wr_en49 = 0;
end    
endtask

task push50;
input[(NUM_BITS-1):0] data50;        
if( full50 )
$display("---Cannot push <%d>: Buffer Full at time %t",data50,$time);
else
begin        
fifo_in50 = data50;
wr_en50 = 1;
@(posedge clk); 
wr_en50 = 0;
end    
endtask

task push51;
input[(NUM_BITS-1):0] data51;        
if( full51 )
$display("---Cannot push <%d>: Buffer Full at time %t",data51,$time);
else
begin        
fifo_in51 = data51;
wr_en51 = 1;
@(posedge clk); 
wr_en51 = 0;
end    
endtask

task push52;
input[(NUM_BITS-1):0] data52;        
if( full52 )
$display("---Cannot push <%d>: Buffer Full at time %t",data52,$time);
else
begin        
fifo_in52 = data52;
wr_en52 = 1;
@(posedge clk); 
wr_en52 = 0;
end    
endtask

task push53;
input[(NUM_BITS-1):0] data53;        
if( full53 )
$display("---Cannot push <%d>: Buffer Full at time %t",data53,$time);
else
begin        
fifo_in53 = data53;
wr_en53 = 1;
@(posedge clk); 
wr_en53 = 0;
end    
endtask

task push54;
input[(NUM_BITS-1):0] data54;        
if( full54 )
$display("---Cannot push <%d>: Buffer Full at time %t",data54,$time);
else
begin        
fifo_in54 = data54;
wr_en54 = 1;
@(posedge clk); 
wr_en54 = 0;
end    
endtask

task push55;
input[(NUM_BITS-1):0] data55;        
if( full55 )
$display("---Cannot push <%d>: Buffer Full at time %t",data55,$time);
else
begin        
fifo_in55 = data55;
wr_en55 = 1;
@(posedge clk); 
wr_en55 = 0;
end    
endtask

task push56;
input[(NUM_BITS-1):0] data56;        
if( full56 )
$display("---Cannot push <%d>: Buffer Full at time %t",data56,$time);
else
begin        
fifo_in56 = data56;
wr_en56 = 1;
@(posedge clk); 
wr_en56 = 0;
end    
endtask

task push57;
input[(NUM_BITS-1):0] data57;        
if( full57 )
$display("---Cannot push <%d>: Buffer Full at time %t",data57,$time);
else
begin        
fifo_in57 = data57;
wr_en57 = 1;
@(posedge clk); 
wr_en57 = 0;
end    
endtask

task push58;
input[(NUM_BITS-1):0] data58;        
if( full58 )
$display("---Cannot push <%d>: Buffer Full at time %t",data58,$time);
else
begin        
fifo_in58 = data58;
wr_en58 = 1;
@(posedge clk); 
wr_en58 = 0;
end    
endtask

task push59;
input[(NUM_BITS-1):0] data59;        
if( full59 )
$display("---Cannot push <%d>: Buffer Full at time %t",data59,$time);
else
begin        
fifo_in59 = data59;
wr_en59 = 1;
@(posedge clk); 
wr_en59 = 0;
end    
endtask

task push60;
input[(NUM_BITS-1):0] data60;        
if( full60 )
$display("---Cannot push <%d>: Buffer Full at time %t",data60,$time);
else
begin        
fifo_in60 = data60;
wr_en60 = 1;
@(posedge clk); 
wr_en60 = 0;
end    
endtask

task push61;
input[(NUM_BITS-1):0] data61;        
if( full61 )
$display("---Cannot push <%d>: Buffer Full at time %t",data61,$time);
else
begin        
fifo_in61 = data61;
wr_en61 = 1;
@(posedge clk); 
wr_en61 = 0;
end    
endtask

task push62;
input[(NUM_BITS-1):0] data62;        
if( full62 )
$display("---Cannot push <%d>: Buffer Full at time %t",data62,$time);
else
begin        
fifo_in62 = data62;
wr_en62 = 1;
@(posedge clk); 
wr_en62 = 0;
end    
endtask

task push63;
input[(NUM_BITS-1):0] data63;        
if( full63 )
$display("---Cannot push <%d>: Buffer Full at time %t",data63,$time);
else
begin        
fifo_in63 = data63;
wr_en63 = 1;
@(posedge clk); 
wr_en63 = 0;
end    
endtask

task pop0;
output [(NUM_BITS-1):0] data0;    
if( empty0 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data0,$time);
else
begin    
rd_en0 = 1;
@(posedge clk);   
rd_en0 = 0;
data0 = fifo_out0;    
end
endtask


task pop1;
output [(NUM_BITS-1):0] data1;    
if( empty1 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data1,$time);
else
begin    
rd_en1 = 1;
@(posedge clk);   
rd_en1 = 0;
data1 = fifo_out1;    
end
endtask


task pop2;
output [(NUM_BITS-1):0] data2;    
if( empty2 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data2,$time);
else
begin    
rd_en2 = 1;
@(posedge clk);   
rd_en2 = 0;
data2 = fifo_out2;    
end
endtask


task pop3;
output [(NUM_BITS-1):0] data3;    
if( empty3 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data3,$time);
else
begin    
rd_en3 = 1;
@(posedge clk);   
rd_en3 = 0;
data3 = fifo_out3;    
end
endtask


task pop4;
output [(NUM_BITS-1):0] data4;    
if( empty4 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data4,$time);
else
begin    
rd_en4 = 1;
@(posedge clk);   
rd_en4 = 0;
data4 = fifo_out4;    
end
endtask


task pop5;
output [(NUM_BITS-1):0] data5;    
if( empty5 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data5,$time);
else
begin    
rd_en5 = 1;
@(posedge clk);   
rd_en5 = 0;
data5 = fifo_out5;    
end
endtask

task pop6;
output [(NUM_BITS-1):0] data6;    
if( empty6 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data6,$time);
else
begin    
rd_en6 = 1;
@(posedge clk);   
rd_en6 = 0;
data6 = fifo_out6;    
end
endtask

task pop7;
output [(NUM_BITS-1):0] data7;    
if( empty7 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data7,$time);
else
begin    
rd_en7 = 1;
@(posedge clk);   
rd_en7 = 0;
data7 = fifo_out7;    
end
endtask


task pop8;
output [(NUM_BITS-1):0] data8;    
if( empty8 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data8,$time);
else
begin    
rd_en8 = 1;
@(posedge clk);   
rd_en8 = 0;
data8 = fifo_out8;    
end
endtask


task pop9;
output [(NUM_BITS-1):0] data9;    
if( empty9 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data9,$time);
else
begin    
rd_en9 = 1;
@(posedge clk);   
rd_en9 = 0;
data9 = fifo_out9;    
end
endtask


task pop10;
output [(NUM_BITS-1):0] data10;    
if( empty10 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data10,$time);
else
begin    
rd_en10 = 1;
@(posedge clk);   
rd_en10 = 0;
data10 = fifo_out10;    
end
endtask


task pop11;
output [(NUM_BITS-1):0] data11;    
if( empty11 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data11,$time);
else
begin    
rd_en11 = 1;
@(posedge clk);   
rd_en11 = 0;
data11 = fifo_out11;    
end
endtask


task pop12;
output [(NUM_BITS-1):0] data12;    
if( empty12 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data12,$time);
else
begin    
rd_en12 = 1;
@(posedge clk);   
rd_en12 = 0;
data12 = fifo_out12;    
end
endtask


task pop13;
output [(NUM_BITS-1):0] data13;    
if( empty13 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data13,$time);
else
begin    
rd_en13 = 1;
@(posedge clk);   
rd_en13 = 0;
data13 = fifo_out13;    
end
endtask


task pop14;
output [(NUM_BITS-1):0] data14;    
if( empty14 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data14,$time);
else
begin    
rd_en14 = 1;
@(posedge clk);   
rd_en14 = 0;
data14 = fifo_out14;    
end
endtask


task pop15;
output [(NUM_BITS-1):0] data15;    
if( empty15 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data15,$time);
else
begin    
rd_en15 = 1;
@(posedge clk);   
rd_en15 = 0;
data15 = fifo_out15;    
end
endtask


task pop16;
output [(NUM_BITS-1):0] data16;    
if( empty16 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data16,$time);
else
begin    
rd_en16 = 1;
@(posedge clk);   
rd_en16 = 0;
data16 = fifo_out16;    
end
endtask


task pop17;
output [(NUM_BITS-1):0] data17;    
if( empty17 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data17,$time);
else
begin    
rd_en17 = 1;
@(posedge clk);   
rd_en17 = 0;
data17 = fifo_out17;    
end
endtask


task pop18;
output [(NUM_BITS-1):0] data18;    
if( empty18 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data18,$time);
else
begin    
rd_en18 = 1;
@(posedge clk);   
rd_en18 = 0;
data18 = fifo_out18;    
end
endtask


task pop19;
output [(NUM_BITS-1):0] data19;    
if( empty19 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data19,$time);
else
begin    
rd_en19 = 1;
@(posedge clk);   
rd_en19 = 0;
data19 = fifo_out19;    
end
endtask


task pop20;
output [(NUM_BITS-1):0] data20;    
if( empty20 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data20,$time);
else
begin    
rd_en20 = 1;
@(posedge clk);   
rd_en20 = 0;
data20 = fifo_out20;    
end
endtask


task pop21;
output [(NUM_BITS-1):0] data21;    
if( empty21 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data21,$time);
else
begin    
rd_en21 = 1;
@(posedge clk);   
rd_en21 = 0;
data21 = fifo_out21;    
end
endtask


task pop22;
output [(NUM_BITS-1):0] data22;    
if( empty22 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data22,$time);
else
begin    
rd_en22 = 1;
@(posedge clk);   
rd_en22 = 0;
data22 = fifo_out22;    
end
endtask


task pop23;
output [(NUM_BITS-1):0] data23;    
if( empty23 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data23,$time);
else
begin    
rd_en23 = 1;
@(posedge clk);   
rd_en23 = 0;
data23 = fifo_out23;    
end
endtask


task pop24;
output [(NUM_BITS-1):0] data24;    
if( empty24 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data24,$time);
else
begin    
rd_en24 = 1;
@(posedge clk);   
rd_en24 = 0;
data24 = fifo_out24;    
end
endtask


task pop25;
output [(NUM_BITS-1):0] data25;    
if( empty25 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data25,$time);
else
begin    
rd_en25 = 1;
@(posedge clk);   
rd_en25 = 0;
data25 = fifo_out25;    
end
endtask


task pop26;
output [(NUM_BITS-1):0] data26;    
if( empty26 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data26,$time);
else
begin    
rd_en26 = 1;
@(posedge clk);   
rd_en26 = 0;
data26 = fifo_out26;    
end
endtask


task pop27;
output [(NUM_BITS-1):0] data27;    
if( empty27 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data27,$time);
else
begin    
rd_en27 = 1;
@(posedge clk);   
rd_en27 = 0;
data27 = fifo_out27;    
end
endtask


task pop28;
output [(NUM_BITS-1):0] data28;    
if( empty28 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data28,$time);
else
begin    
rd_en28 = 1;
@(posedge clk);   
rd_en28 = 0;
data28 = fifo_out28;    
end
endtask


task pop29;
output [(NUM_BITS-1):0] data29;    
if( empty29 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data29,$time);
else
begin    
rd_en29 = 1;
@(posedge clk);   
rd_en29 = 0;
data29 = fifo_out29;    
end
endtask


task pop30;
output [(NUM_BITS-1):0] data30;    
if( empty30 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data30,$time);
else
begin    
rd_en30 = 1;
@(posedge clk);   
rd_en30 = 0;
data30 = fifo_out30;    
end
endtask


task pop31;
output [(NUM_BITS-1):0] data31;    
if( empty31 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data31,$time);
else
begin    
rd_en31 = 1;
@(posedge clk);   
rd_en31 = 0;
data31 = fifo_out31;    
end
endtask


task pop32;
output [(NUM_BITS-1):0] data32;    
if( empty32 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data32,$time);
else
begin    
rd_en32 = 1;
@(posedge clk);   
rd_en32 = 0;
data32 = fifo_out32;    
end
endtask


task pop33;
output [(NUM_BITS-1):0] data33;    
if( empty33 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data33,$time);
else
begin    
rd_en33 = 1;
@(posedge clk);   
rd_en33 = 0;
data33 = fifo_out33;    
end
endtask


task pop34;
output [(NUM_BITS-1):0] data34;    
if( empty34 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data34,$time);
else
begin    
rd_en34 = 1;
@(posedge clk);   
rd_en34 = 0;
data34 = fifo_out34;    
end
endtask


task pop35;
output [(NUM_BITS-1):0] data35;    
if( empty35 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data35,$time);
else
begin    
rd_en35 = 1;
@(posedge clk);   
rd_en35 = 0;
data35 = fifo_out35;    
end
endtask


task pop36;
output [(NUM_BITS-1):0] data36;    
if( empty36 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data36,$time);
else
begin    
rd_en36 = 1;
@(posedge clk);   
rd_en36 = 0;
data36 = fifo_out36;    
end
endtask


task pop37;
output [(NUM_BITS-1):0] data37;    
if( empty37 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data37,$time);
else
begin    
rd_en37 = 1;
@(posedge clk);   
rd_en37 = 0;
data37 = fifo_out37;    
end
endtask


task pop38;
output [(NUM_BITS-1):0] data38;    
if( empty38 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data38,$time);
else
begin    
rd_en38 = 1;
@(posedge clk);   
rd_en38 = 0;
data38 = fifo_out38;    
end
endtask


task pop39;
output [(NUM_BITS-1):0] data39;    
if( empty39 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data39,$time);
else
begin    
rd_en39 = 1;
@(posedge clk);   
rd_en39 = 0;
data39 = fifo_out39;    
end
endtask


task pop40;
output [(NUM_BITS-1):0] data40;    
if( empty40 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data40,$time);
else
begin    
rd_en40 = 1;
@(posedge clk);   
rd_en40 = 0;
data40 = fifo_out40;    
end
endtask

task pop41;
output [(NUM_BITS-1):0] data41;    
if( empty41 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data41,$time);
else
begin    
rd_en41 = 1;
@(posedge clk);   
rd_en41 = 0;
data41 = fifo_out41;    
end
endtask


task pop42;
output [(NUM_BITS-1):0] data42;    
if( empty42 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data42,$time);
else
begin    
rd_en42 = 1;
@(posedge clk);   
rd_en42 = 0;
data42 = fifo_out42;    
end
endtask


task pop43;
output [(NUM_BITS-1):0] data43;    
if( empty43 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data43,$time);
else
begin    
rd_en43 = 1;
@(posedge clk);   
rd_en43 = 0;
data43 = fifo_out43;    
end
endtask


task pop44;
output [(NUM_BITS-1):0] data44;    
if( empty44 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data44,$time);
else
begin    
rd_en44 = 1;
@(posedge clk);   
rd_en44 = 0;
data44 = fifo_out44;    
end
endtask


task pop45;
output [(NUM_BITS-1):0] data45;    
if( empty45 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data45,$time);
else
begin    
rd_en45 = 1;
@(posedge clk);   
rd_en45 = 0;
data45 = fifo_out45;    
end
endtask


task pop46;
output [(NUM_BITS-1):0] data46;    
if( empty46 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data46,$time);
else
begin    
rd_en46 = 1;
@(posedge clk);   
rd_en46 = 0;
data46 = fifo_out46;    
end
endtask


task pop47;
output [(NUM_BITS-1):0] data47;    
if( empty47 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data47,$time);
else
begin    
rd_en47 = 1;
@(posedge clk);   
rd_en47 = 0;
data47 = fifo_out47;    
end
endtask


task pop48;
output [(NUM_BITS-1):0] data48;    
if( empty48 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data48,$time);
else
begin    
rd_en48 = 1;
@(posedge clk);   
rd_en48 = 0;
data48 = fifo_out48;    
end
endtask


task pop49;
output [(NUM_BITS-1):0] data49;    
if( empty49 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data49,$time);
else
begin    
rd_en49 = 1;
@(posedge clk);   
rd_en49 = 0;
data49 = fifo_out49;    
end
endtask


task pop50;
output [(NUM_BITS-1):0] data50;    
if( empty50 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data50,$time);
else
begin    
rd_en50 = 1;
@(posedge clk);   
rd_en50 = 0;
data50 = fifo_out50;    
end
endtask

task pop51;
output [(NUM_BITS-1):0] data51;    
if( empty51 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data51,$time);
else
begin    
rd_en51 = 1;
@(posedge clk);   
rd_en51 = 0;
data51 = fifo_out51;    
end
endtask


task pop52;
output [(NUM_BITS-1):0] data52;    
if( empty52 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data52,$time);
else
begin    
rd_en52 = 1;
@(posedge clk);   
rd_en52 = 0;
data52 = fifo_out52;    
end
endtask


task pop53;
output [(NUM_BITS-1):0] data53;    
if( empty53 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data53,$time);
else
begin    
rd_en53 = 1;
@(posedge clk);   
rd_en53 = 0;
data53 = fifo_out53;    
end
endtask

task pop54;
output [(NUM_BITS-1):0] data54;    
if( empty54 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data54,$time);
else
begin    
rd_en54 = 1;
@(posedge clk);   
rd_en54 = 0;
data54 = fifo_out54;    
end
endtask

task pop55;
output [(NUM_BITS-1):0] data55;    
if( empty55 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data55,$time);
else
begin    
rd_en55 = 1;
@(posedge clk);   
rd_en55 = 0;
data55 = fifo_out55;    
end
endtask


task pop56;
output [(NUM_BITS-1):0] data56;    
if( empty56 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data56,$time);
else
begin    
rd_en56 = 1;
@(posedge clk);   
rd_en56 = 0;
data56 = fifo_out56;    
end
endtask


task pop57;
output [(NUM_BITS-1):0] data57;    
if( empty57 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data57,$time);
else
begin    
rd_en57 = 1;
@(posedge clk);   
rd_en57 = 0;
data57 = fifo_out57;    
end
endtask


task pop58;
output [(NUM_BITS-1):0] data58;    
if( empty58 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data58,$time);
else
begin    
rd_en58 = 1;
@(posedge clk);   
rd_en58 = 0;
data58 = fifo_out58;    
end
endtask


task pop59;
output [(NUM_BITS-1):0] data59;    
if( empty59 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data59,$time);
else
begin    
rd_en59 = 1;
@(posedge clk);   
rd_en59 = 0;
data59 = fifo_out59;    
end
endtask


task pop60;
output [(NUM_BITS-1):0] data60;    
if( empty60 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data60,$time);
else
begin    
rd_en60 = 1;
@(posedge clk);   
rd_en60 = 0;
data60 = fifo_out60;    
end
endtask

task pop61;
output [(NUM_BITS-1):0] data61;    
if( empty61 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data61,$time);
else
begin    
rd_en61 = 1;
@(posedge clk);   
rd_en61 = 0;
data61 = fifo_out61;    
end
endtask


task pop62;
output [(NUM_BITS-1):0] data62;    
if( empty62 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data62,$time);
else
begin    
rd_en62 = 1;
@(posedge clk);   
rd_en62 = 0;
data62 = fifo_out62;    
end
endtask



task pop63;
output [(NUM_BITS-1):0] data63;    
if( empty63 )
$display("---Cannot Pop <%d>: Buffer Empty at time %t",data63,$time);
else
begin    
rd_en63 = 1;
@(posedge clk);   
rd_en63 = 0;
data63 = fifo_out63;    
end
endtask


endmodule


