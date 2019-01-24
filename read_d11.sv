

module read_d11 
#(parameter NUM_BITS=10, DEPTH=8, N=16)
(

input logic clk,
input logic reset,
input logic [15:10] channel,
input logic [9:0] data,

//parameter N=16;

input logic s_in,
output logic s_out,
reg [N-1:0] r_reg,
wire [N-1:0] r_next,

output logic [9:0] d0,
output logic [9:0] d1,
output logic [9:0] d2,
output logic [9:0] d3,
output logic [9:0] d4,
output logic [9:0] d5,
output logic [9:0] d6,
output logic [9:0] d7,
output logic [9:0] d8,
output logic [9:0] d9,
output logic [9:0] d10,
output logic [9:0] d11,
output logic [9:0] d12,
output logic [9:0] d13,
output logic [9:0] d14,
output logic [9:0] d15,
output logic [9:0] d16,
output logic [9:0] d17,
output logic [9:0] d18,
output logic [9:0] d19,
output logic [9:0] d20,
output logic [9:0] d21,
output logic [9:0] d22,
output logic [9:0] d23,
output logic [9:0] d24,
output logic [9:0] d25,
output logic [9:0] d26,
output logic [9:0] d27,
output logic [9:0] d28,
output logic [9:0] d29,
output logic [9:0] d30,
output logic [9:0] d31,
output logic [9:0] d32,
output logic [9:0] d33,
output logic [9:0] d34,
output logic [9:0] d35,
output logic [9:0] d36,
output logic [9:0] d37,
output logic [9:0] d38,
output logic [9:0] d39,
output logic [9:0] d40,
output logic [9:0] d41,
output logic [9:0] d42,
output logic [9:0] d43,
output logic [9:0] d44,
output logic [9:0] d45,
output logic [9:0] d46,
output logic [9:0] d47,
output logic [9:0] d48,
output logic [9:0] d49,
output logic [9:0] d50,
output logic [9:0] d51,
output logic [9:0] d52,
output logic [9:0] d53,
output logic [9:0] d54,
output logic [9:0] d55,
output logic [9:0] d56,
output logic [9:0] d57,
output logic [9:0] d58,
output logic [9:0] d59,
output logic [9:0] d60,
output logic [9:0] d61,
output logic [9:0] d62,
output logic [9:0] d63,

output logic [15:10] channel_op,
output logic [9:0] data_op,

//
//input logic r0,
//input logic r1,
//input logic r2,
//input logic r3,
//input logic r4,
//input logic r5,
//input logic r6,
//input logic r7,
//input logic r8,
//input logic r9,
//input logic r10,
//input logic r11,
//input logic r12,
//input logic r13,
//input logic r14,
//input logic r15,

input logic [7:0] regA,
input logic [7:0] regB,
input logic [15:0] concat_data1,

input rst_n,
//input clk1,

//input rd_en1,
input  rd_en0,
input  rd_en1,
input  rd_en2,
input  rd_en3,
input  rd_en4,
input  rd_en5,
input  rd_en6,
input  rd_en7,
input  rd_en8,
input  rd_en9,
input  rd_en10,

input  rd_en11,
input  rd_en12,
input  rd_en13,
input  rd_en14,
input  rd_en15,
input  rd_en16,
input  rd_en17,
input  rd_en18,
input  rd_en19,
input  rd_en20,

input  rd_en21,
input  rd_en22,
input  rd_en23,
input  rd_en24,
input  rd_en25,
input  rd_en26,
input  rd_en27,
input  rd_en28,
input  rd_en29,
input  rd_en30,

input  rd_en31,
input  rd_en32,
input  rd_en33,
input  rd_en34,
input  rd_en35,
input  rd_en36,
input  rd_en37,
input  rd_en38,
input  rd_en39,
input  rd_en40,

input  rd_en41,
input  rd_en42,
input  rd_en43,
input  rd_en44,
input  rd_en45,
input  rd_en46,
input  rd_en47,
input  rd_en48,
input  rd_en49,
input  rd_en50,

input  rd_en51,
input  rd_en52,
input  rd_en53,
input  rd_en54,
input  rd_en55,
input  rd_en56,
input  rd_en57,
input  rd_en58,
input  rd_en59,
input  rd_en60,

input  rd_en61,
input  rd_en62,
input  rd_en63,


//input wr_en1,
input  wr_en0,
input  wr_en1,
input  wr_en2,
input  wr_en3,
input  wr_en4,
input  wr_en5,
input  wr_en6,
input  wr_en7,
input  wr_en8,
input  wr_en9,
input  wr_en10,

input  wr_en11,
input  wr_en12,
input  wr_en13,
input  wr_en14,
input  wr_en15,
input  wr_en16,
input  wr_en17,
input  wr_en18,
input  wr_en19,
input  wr_en20,

input  wr_en21,
input  wr_en22,
input  wr_en23,
input  wr_en24,
input  wr_en25,
input  wr_en26,
input  wr_en27,
input  wr_en28,
input  wr_en29,
input  wr_en30,

input  wr_en31,
input  wr_en32,
input  wr_en33,
input  wr_en34,
input  wr_en35,
input  wr_en36,
input  wr_en37,
input  wr_en38,
input  wr_en39,
input  wr_en40,

input  wr_en41,
input  wr_en42,
input  wr_en43,
input  wr_en44,
input  wr_en45,
input  wr_en46,
input  wr_en47,
input  wr_en48,
input  wr_en49,
input  wr_en50,

input  wr_en51,
input  wr_en52,
input  wr_en53,
input  wr_en54,
input  wr_en55,
input  wr_en56,
input  wr_en57,
input  wr_en58,
input  wr_en59,
input  wr_en60,

input  wr_en61,
input  wr_en62,
input  wr_en63,

		  
//input [(NUM_BITS-1):0] fifo_in,		  
input [(NUM_BITS-1):0] fifo_in0,
input [(NUM_BITS-1):0] fifo_in1,
input [(NUM_BITS-1):0] fifo_in2,
input [(NUM_BITS-1):0] fifo_in3,
input [(NUM_BITS-1):0] fifo_in4,
input [(NUM_BITS-1):0] fifo_in5,
input [(NUM_BITS-1):0] fifo_in6,
input [(NUM_BITS-1):0] fifo_in7,
input [(NUM_BITS-1):0] fifo_in8,
input [(NUM_BITS-1):0] fifo_in9,
input [(NUM_BITS-1):0] fifo_in10,

input [(NUM_BITS-1):0] fifo_in11,
input [(NUM_BITS-1):0] fifo_in12,
input [(NUM_BITS-1):0] fifo_in13,
input [(NUM_BITS-1):0] fifo_in14,
input [(NUM_BITS-1):0] fifo_in15,
input [(NUM_BITS-1):0] fifo_in16,
input [(NUM_BITS-1):0] fifo_in17,
input [(NUM_BITS-1):0] fifo_in18,
input [(NUM_BITS-1):0] fifo_in19,
input [(NUM_BITS-1):0] fifo_in20,


input [(NUM_BITS-1):0] fifo_in21,
input [(NUM_BITS-1):0] fifo_in22,
input [(NUM_BITS-1):0] fifo_in23,
input [(NUM_BITS-1):0] fifo_in24,
input [(NUM_BITS-1):0] fifo_in25,
input [(NUM_BITS-1):0] fifo_in26,
input [(NUM_BITS-1):0] fifo_in27,
input [(NUM_BITS-1):0] fifo_in28,
input [(NUM_BITS-1):0] fifo_in29,
input [(NUM_BITS-1):0] fifo_in30,

input [(NUM_BITS-1):0] fifo_in31,
input [(NUM_BITS-1):0] fifo_in32,
input [(NUM_BITS-1):0] fifo_in33,
input [(NUM_BITS-1):0] fifo_in34,
input [(NUM_BITS-1):0] fifo_in35,
input [(NUM_BITS-1):0] fifo_in36,
input [(NUM_BITS-1):0] fifo_in37,
input [(NUM_BITS-1):0] fifo_in38,
input [(NUM_BITS-1):0] fifo_in39,
input [(NUM_BITS-1):0] fifo_in40,

input [(NUM_BITS-1):0] fifo_in41,
input [(NUM_BITS-1):0] fifo_in42,
input [(NUM_BITS-1):0] fifo_in43,
input [(NUM_BITS-1):0] fifo_in44,
input [(NUM_BITS-1):0] fifo_in45,
input [(NUM_BITS-1):0] fifo_in46,
input [(NUM_BITS-1):0] fifo_in47,
input [(NUM_BITS-1):0] fifo_in48,
input [(NUM_BITS-1):0] fifo_in49,
input [(NUM_BITS-1):0] fifo_in50,

input [(NUM_BITS-1):0] fifo_in51,
input [(NUM_BITS-1):0] fifo_in52,
input [(NUM_BITS-1):0] fifo_in53,
input [(NUM_BITS-1):0] fifo_in54,
input [(NUM_BITS-1):0] fifo_in55,
input [(NUM_BITS-1):0] fifo_in56,
input [(NUM_BITS-1):0] fifo_in57,
input [(NUM_BITS-1):0] fifo_in58,
input [(NUM_BITS-1):0] fifo_in59,
input [(NUM_BITS-1):0] fifo_in60,

input [(NUM_BITS-1):0] fifo_in61,
input [(NUM_BITS-1):0] fifo_in62,
input [(NUM_BITS-1):0] fifo_in63,



//output reg [(NUM_BITS-1):0] fifo_out,
output reg  [(NUM_BITS-1):0] fifo_out0,
output reg  [(NUM_BITS-1):0] fifo_out1,
output reg  [(NUM_BITS-1):0] fifo_out2,
output reg  [(NUM_BITS-1):0] fifo_out3,
output reg  [(NUM_BITS-1):0] fifo_out4,
output reg  [(NUM_BITS-1):0] fifo_out5,
output reg  [(NUM_BITS-1):0] fifo_out6,
output reg  [(NUM_BITS-1):0] fifo_out7,
output reg  [(NUM_BITS-1):0] fifo_out8,
output reg  [(NUM_BITS-1):0] fifo_out9,
output reg  [(NUM_BITS-1):0] fifo_out10,

output reg  [(NUM_BITS-1):0] fifo_out11,
output reg  [(NUM_BITS-1):0] fifo_out12,
output reg  [(NUM_BITS-1):0] fifo_out13,
output reg  [(NUM_BITS-1):0] fifo_out14,
output reg  [(NUM_BITS-1):0] fifo_out15,
output reg  [(NUM_BITS-1):0] fifo_out16,
output reg  [(NUM_BITS-1):0] fifo_out17,
output reg  [(NUM_BITS-1):0] fifo_out18,
output reg  [(NUM_BITS-1):0] fifo_out19,
output reg  [(NUM_BITS-1):0] fifo_out20,


output reg  [(NUM_BITS-1):0] fifo_out21,
output reg  [(NUM_BITS-1):0] fifo_out22,
output reg  [(NUM_BITS-1):0] fifo_out23,
output reg  [(NUM_BITS-1):0] fifo_out24,
output reg  [(NUM_BITS-1):0] fifo_out25,
output reg  [(NUM_BITS-1):0] fifo_out26,
output reg  [(NUM_BITS-1):0] fifo_out27,
output reg  [(NUM_BITS-1):0] fifo_out28,
output reg  [(NUM_BITS-1):0] fifo_out29,
output reg  [(NUM_BITS-1):0] fifo_out30,

output reg  [(NUM_BITS-1):0] fifo_out31,
output reg  [(NUM_BITS-1):0] fifo_out32,
output reg  [(NUM_BITS-1):0] fifo_out33,
output reg  [(NUM_BITS-1):0] fifo_out34,
output reg  [(NUM_BITS-1):0] fifo_out35,
output reg  [(NUM_BITS-1):0] fifo_out36,
output reg  [(NUM_BITS-1):0] fifo_out37,
output reg  [(NUM_BITS-1):0] fifo_out38,
output reg  [(NUM_BITS-1):0] fifo_out39,
output reg  [(NUM_BITS-1):0] fifo_out40,

output reg  [(NUM_BITS-1):0] fifo_out41,
output reg  [(NUM_BITS-1):0] fifo_out42,
output reg  [(NUM_BITS-1):0] fifo_out43,
output reg  [(NUM_BITS-1):0] fifo_out44,
output reg  [(NUM_BITS-1):0] fifo_out45,
output reg  [(NUM_BITS-1):0] fifo_out46,
output reg  [(NUM_BITS-1):0] fifo_out47,
output reg  [(NUM_BITS-1):0] fifo_out48,
output reg  [(NUM_BITS-1):0] fifo_out49,
output reg  [(NUM_BITS-1):0] fifo_out50,

output reg  [(NUM_BITS-1):0] fifo_out51,
output reg  [(NUM_BITS-1):0] fifo_out52,
output reg  [(NUM_BITS-1):0] fifo_out53,
output reg  [(NUM_BITS-1):0] fifo_out54,
output reg  [(NUM_BITS-1):0] fifo_out55,
output reg  [(NUM_BITS-1):0] fifo_out56,
output reg  [(NUM_BITS-1):0] fifo_out57,
output reg  [(NUM_BITS-1):0] fifo_out58,
output reg  [(NUM_BITS-1):0] fifo_out59,
output reg  [(NUM_BITS-1):0] fifo_out60,

output reg  [(NUM_BITS-1):0] fifo_out61,
output reg  [(NUM_BITS-1):0] fifo_out62,
output reg  [(NUM_BITS-1):0] fifo_out63,


//input logic [(NUM_BITS+6):0] prevfifo_in, //average
input logic [(NUM_BITS+6):0] prevfifo_in0,
input logic [(NUM_BITS+6):0] prevfifo_in1,
input logic [(NUM_BITS+6):0] prevfifo_in2,
input logic [(NUM_BITS+6):0] prevfifo_in3,
input logic [(NUM_BITS+6):0] prevfifo_in4,
input logic [(NUM_BITS+6):0] prevfifo_in5,
input logic [(NUM_BITS+6):0] prevfifo_in6,
input logic [(NUM_BITS+6):0] prevfifo_in7,
input logic [(NUM_BITS+6):0] prevfifo_in8,
input logic [(NUM_BITS+6):0] prevfifo_in9,
input logic [(NUM_BITS+6):0] prevfifo_in10,

input logic [(NUM_BITS+6):0] prevfifo_in11,
input logic [(NUM_BITS+6):0] prevfifo_in12,
input logic [(NUM_BITS+6):0] prevfifo_in13,
input logic [(NUM_BITS+6):0] prevfifo_in14,
input logic [(NUM_BITS+6):0] prevfifo_in15,
input logic [(NUM_BITS+6):0] prevfifo_in16,
input logic [(NUM_BITS+6):0] prevfifo_in17,
input logic [(NUM_BITS+6):0] prevfifo_in18,
input logic [(NUM_BITS+6):0] prevfifo_in19,
input logic [(NUM_BITS+6):0] prevfifo_in20,

input logic [(NUM_BITS+6):0] prevfifo_in21,
input logic [(NUM_BITS+6):0] prevfifo_in22,
input logic [(NUM_BITS+6):0] prevfifo_in23,
input logic [(NUM_BITS+6):0] prevfifo_in24,
input logic [(NUM_BITS+6):0] prevfifo_in25,
input logic [(NUM_BITS+6):0] prevfifo_in26,
input logic [(NUM_BITS+6):0] prevfifo_in27,
input logic [(NUM_BITS+6):0] prevfifo_in28,
input logic [(NUM_BITS+6):0] prevfifo_in29,
input logic [(NUM_BITS+6):0] prevfifo_in30,

input logic [(NUM_BITS+6):0] prevfifo_in31,
input logic [(NUM_BITS+6):0] prevfifo_in32,
input logic [(NUM_BITS+6):0] prevfifo_in33,
input logic [(NUM_BITS+6):0] prevfifo_in34,
input logic [(NUM_BITS+6):0] prevfifo_in35,
input logic [(NUM_BITS+6):0] prevfifo_in36,
input logic [(NUM_BITS+6):0] prevfifo_in37,
input logic [(NUM_BITS+6):0] prevfifo_in38,
input logic [(NUM_BITS+6):0] prevfifo_in39,
input logic [(NUM_BITS+6):0] prevfifo_in40,

input logic [(NUM_BITS+6):0] prevfifo_in41,
input logic [(NUM_BITS+6):0] prevfifo_in42,
input logic [(NUM_BITS+6):0] prevfifo_in43,
input logic [(NUM_BITS+6):0] prevfifo_in44,
input logic [(NUM_BITS+6):0] prevfifo_in45,
input logic [(NUM_BITS+6):0] prevfifo_in46,
input logic [(NUM_BITS+6):0] prevfifo_in47,
input logic [(NUM_BITS+6):0] prevfifo_in48,
input logic [(NUM_BITS+6):0] prevfifo_in49,
input logic [(NUM_BITS+6):0] prevfifo_in50,

input logic [(NUM_BITS+6):0] prevfifo_in51,
input logic [(NUM_BITS+6):0] prevfifo_in52,
input logic [(NUM_BITS+6):0] prevfifo_in53,
input logic [(NUM_BITS+6):0] prevfifo_in54,
input logic [(NUM_BITS+6):0] prevfifo_in55,
input logic [(NUM_BITS+6):0] prevfifo_in56,
input logic [(NUM_BITS+6):0] prevfifo_in57,
input logic [(NUM_BITS+6):0] prevfifo_in58,
input logic [(NUM_BITS+6):0] prevfifo_in59,
input logic [(NUM_BITS+6):0] prevfifo_in60,

input logic [(NUM_BITS+6):0] prevfifo_in61,
input logic [(NUM_BITS+6):0] prevfifo_in62,
input logic [(NUM_BITS+6):0] prevfifo_in63,



//input logic [(NUM_BITS+6):0] sum,
input logic [(NUM_BITS+6):0] sum0,
input logic [(NUM_BITS+6):0] sum1,
input logic [(NUM_BITS+6):0] sum2,
input logic [(NUM_BITS+6):0] sum3,
input logic [(NUM_BITS+6):0] sum4,
input logic [(NUM_BITS+6):0] sum5,
input logic [(NUM_BITS+6):0] sum6,
input logic [(NUM_BITS+6):0] sum7,
input logic [(NUM_BITS+6):0] sum8,
input logic [(NUM_BITS+6):0] sum9,
input logic [(NUM_BITS+6):0] sum10,

input logic [(NUM_BITS+6):0] sum11,
input logic [(NUM_BITS+6):0] sum12,
input logic [(NUM_BITS+6):0] sum13,
input logic [(NUM_BITS+6):0] sum14,
input logic [(NUM_BITS+6):0] sum15,
input logic [(NUM_BITS+6):0] sum16,
input logic [(NUM_BITS+6):0] sum17,
input logic [(NUM_BITS+6):0] sum18,
input logic [(NUM_BITS+6):0] sum19,
input logic [(NUM_BITS+6):0] sum20,


input logic [(NUM_BITS+6):0] sum21,
input logic [(NUM_BITS+6):0] sum22,
input logic [(NUM_BITS+6):0] sum23,
input logic [(NUM_BITS+6):0] sum24,
input logic [(NUM_BITS+6):0] sum25,
input logic [(NUM_BITS+6):0] sum26,
input logic [(NUM_BITS+6):0] sum27,
input logic [(NUM_BITS+6):0] sum28,
input logic [(NUM_BITS+6):0] sum29,
input logic [(NUM_BITS+6):0] sum30,

input logic [(NUM_BITS+6):0] sum31,
input logic [(NUM_BITS+6):0] sum32,
input logic [(NUM_BITS+6):0] sum33,
input logic [(NUM_BITS+6):0] sum34,
input logic [(NUM_BITS+6):0] sum35,
input logic [(NUM_BITS+6):0] sum36,
input logic [(NUM_BITS+6):0] sum37,
input logic [(NUM_BITS+6):0] sum38,
input logic [(NUM_BITS+6):0] sum39,
input logic [(NUM_BITS+6):0] sum40,

input logic [(NUM_BITS+6):0] sum41,
input logic [(NUM_BITS+6):0] sum42,
input logic [(NUM_BITS+6):0] sum43,
input logic [(NUM_BITS+6):0] sum44,
input logic [(NUM_BITS+6):0] sum45,
input logic [(NUM_BITS+6):0] sum46,
input logic [(NUM_BITS+6):0] sum47,
input logic [(NUM_BITS+6):0] sum48,
input logic [(NUM_BITS+6):0] sum49,
input logic [(NUM_BITS+6):0] sum50,

input logic [(NUM_BITS+6):0] sum51,
input logic [(NUM_BITS+6):0] sum52,
input logic [(NUM_BITS+6):0] sum53,
input logic [(NUM_BITS+6):0] sum54,
input logic [(NUM_BITS+6):0] sum55,
input logic [(NUM_BITS+6):0] sum56,
input logic [(NUM_BITS+6):0] sum57,
input logic [(NUM_BITS+6):0] sum58,
input logic [(NUM_BITS+6):0] sum59,
input logic [(NUM_BITS+6):0] sum60,

input logic [(NUM_BITS+6):0] sum61,
input logic [(NUM_BITS+6):0] sum62,
input logic [(NUM_BITS+6):0] sum63,


//input logic [(NUM_BITS+6):0] thres,
//input logic [(NUM_BITS-1):0] Threshold,
input logic [(NUM_BITS-1):0] Threshold0,
input logic [(NUM_BITS-1):0] Threshold1,
input logic [(NUM_BITS-1):0] Threshold2,
input logic [(NUM_BITS-1):0] Threshold3,
input logic [(NUM_BITS-1):0] Threshold4,
input logic [(NUM_BITS-1):0] Threshold5,
input logic [(NUM_BITS-1):0] Threshold6,
input logic [(NUM_BITS-1):0] Threshold7,
input logic [(NUM_BITS-1):0] Threshold8,
input logic [(NUM_BITS-1):0] Threshold9,
input logic [(NUM_BITS-1):0] Threshold10,

input logic [(NUM_BITS-1):0] Threshold11,
input logic [(NUM_BITS-1):0] Threshold12,
input logic [(NUM_BITS-1):0] Threshold13,
input logic [(NUM_BITS-1):0] Threshold14,
input logic [(NUM_BITS-1):0] Threshold15,
input logic [(NUM_BITS-1):0] Threshold16,
input logic [(NUM_BITS-1):0] Threshold17,
input logic [(NUM_BITS-1):0] Threshold18,
input logic [(NUM_BITS-1):0] Threshold19,
input logic [(NUM_BITS-1):0] Threshold20,

input logic [(NUM_BITS-1):0] Threshold21,
input logic [(NUM_BITS-1):0] Threshold22,
input logic [(NUM_BITS-1):0] Threshold23,
input logic [(NUM_BITS-1):0] Threshold24,
input logic [(NUM_BITS-1):0] Threshold25,
input logic [(NUM_BITS-1):0] Threshold26,
input logic [(NUM_BITS-1):0] Threshold27,
input logic [(NUM_BITS-1):0] Threshold28,
input logic [(NUM_BITS-1):0] Threshold29,
input logic [(NUM_BITS-1):0] Threshold30,

input logic [(NUM_BITS-1):0] Threshold31,
input logic [(NUM_BITS-1):0] Threshold32,
input logic [(NUM_BITS-1):0] Threshold33,
input logic [(NUM_BITS-1):0] Threshold34,
input logic [(NUM_BITS-1):0] Threshold35,
input logic [(NUM_BITS-1):0] Threshold36,
input logic [(NUM_BITS-1):0] Threshold37,
input logic [(NUM_BITS-1):0] Threshold38,
input logic [(NUM_BITS-1):0] Threshold39,
input logic [(NUM_BITS-1):0] Threshold40,

input logic [(NUM_BITS-1):0] Threshold41,
input logic [(NUM_BITS-1):0] Threshold42,
input logic [(NUM_BITS-1):0] Threshold43,
input logic [(NUM_BITS-1):0] Threshold44,
input logic [(NUM_BITS-1):0] Threshold45,
input logic [(NUM_BITS-1):0] Threshold46,
input logic [(NUM_BITS-1):0] Threshold47,
input logic [(NUM_BITS-1):0] Threshold48,
input logic [(NUM_BITS-1):0] Threshold49,
input logic [(NUM_BITS-1):0] Threshold50,

input logic [(NUM_BITS-1):0] Threshold51,
input logic [(NUM_BITS-1):0] Threshold52,
input logic [(NUM_BITS-1):0] Threshold53,
input logic [(NUM_BITS-1):0] Threshold54,
input logic [(NUM_BITS-1):0] Threshold55,
input logic [(NUM_BITS-1):0] Threshold56,
input logic [(NUM_BITS-1):0] Threshold57,
input logic [(NUM_BITS-1):0] Threshold58,
input logic [(NUM_BITS-1):0] Threshold59,
input logic [(NUM_BITS-1):0] Threshold60,

input logic [(NUM_BITS-1):0] Threshold61,
input logic [(NUM_BITS-1):0] Threshold62,
input logic [(NUM_BITS-1):0] Threshold63,


//output empty,
output empty0,
output empty1,
output empty2,
output empty3,
output empty4,
output empty5,
output empty6,
output empty7,
output empty8,
output empty9,
output empty10,

output empty11,
output empty12,
output empty13,
output empty14,
output empty15,
output empty16,
output empty17,
output empty18,
output empty19,
output empty20,

output empty21,
output empty22,
output empty23,
output empty24,
output empty25,
output empty26,
output empty27,
output empty28,
output empty29,
output empty30,

output empty31,
output empty32,
output empty33,
output empty34,
output empty35,
output empty36,
output empty37,
output empty38,
output empty39,
output empty40,

output empty41,
output empty42,
output empty43,
output empty44,
output empty45,
output empty46,
output empty47,
output empty48,
output empty49,
output empty50,

output empty51,
output empty52,
output empty53,
output empty54,
output empty55,
output empty56,
output empty57,
output empty58,
output empty59,
output empty60,

output empty61,
output empty62,
output empty63,



//output full,
output full0,
output full1,
output full2,
output full3,
output full4,
output full5,
output full6,
output full7,
output full8,
output full9,
output full10,

output full11,
output full12,
output full13,
output full14,
output full15,
output full16,
output full17,
output full18,
output full19,
output full20,

output full21,
output full22,
output full23,
output full24,
output full25,
output full26,
output full27,
output full28,
output full29,

output full30,
output full31,
output full32,
output full33,
output full34,
output full35,
output full36,
output full37,
output full38,
output full39,
output full40,

output full41,
output full42,
output full43,
output full44,
output full45,
output full46,
output full47,
output full48,
output full49,
output full50,

output full51,
output full52,
output full53,
output full54,
output full55,
output full56,
output full57,
output full58,
output full59,
output full60,

output full61,
output full62,
output full63,


//output reg [(clogb2(DEPTH)):0] fifo_counter // Able to count more than depth
output reg  [(clogb2(DEPTH)):0] fifo_counter0,
output reg  [(clogb2(DEPTH)):0] fifo_counter1,
output reg  [(clogb2(DEPTH)):0] fifo_counter2,
output reg  [(clogb2(DEPTH)):0] fifo_counter3,
output reg  [(clogb2(DEPTH)):0] fifo_counter4,
output reg  [(clogb2(DEPTH)):0] fifo_counter5,
output reg  [(clogb2(DEPTH)):0] fifo_counter6,
output reg  [(clogb2(DEPTH)):0] fifo_counter7,
output reg  [(clogb2(DEPTH)):0] fifo_counter8,
output reg  [(clogb2(DEPTH)):0] fifo_counter9,
output reg  [(clogb2(DEPTH)):0] fifo_counter10,

output reg  [(clogb2(DEPTH)):0] fifo_counter11,
output reg  [(clogb2(DEPTH)):0] fifo_counter12,
output reg  [(clogb2(DEPTH)):0] fifo_counter13,
output reg  [(clogb2(DEPTH)):0] fifo_counter14,
output reg  [(clogb2(DEPTH)):0] fifo_counter15,
output reg  [(clogb2(DEPTH)):0] fifo_counter16,
output reg  [(clogb2(DEPTH)):0] fifo_counter17,
output reg  [(clogb2(DEPTH)):0] fifo_counter18,
output reg  [(clogb2(DEPTH)):0] fifo_counter19,
output reg  [(clogb2(DEPTH)):0] fifo_counter20,

output reg  [(clogb2(DEPTH)):0] fifo_counter21,
output reg  [(clogb2(DEPTH)):0] fifo_counter22,
output reg  [(clogb2(DEPTH)):0] fifo_counter23,
output reg  [(clogb2(DEPTH)):0] fifo_counter24,
output reg  [(clogb2(DEPTH)):0] fifo_counter25,
output reg  [(clogb2(DEPTH)):0] fifo_counter26,
output reg  [(clogb2(DEPTH)):0] fifo_counter27,
output reg  [(clogb2(DEPTH)):0] fifo_counter28,
output reg  [(clogb2(DEPTH)):0] fifo_counter29,
output reg  [(clogb2(DEPTH)):0] fifo_counter30,

output reg  [(clogb2(DEPTH)):0] fifo_counter31,
output reg  [(clogb2(DEPTH)):0] fifo_counter32,
output reg  [(clogb2(DEPTH)):0] fifo_counter33,
output reg  [(clogb2(DEPTH)):0] fifo_counter34,
output reg  [(clogb2(DEPTH)):0] fifo_counter35,
output reg  [(clogb2(DEPTH)):0] fifo_counter36,
output reg  [(clogb2(DEPTH)):0] fifo_counter37,
output reg  [(clogb2(DEPTH)):0] fifo_counter38,
output reg  [(clogb2(DEPTH)):0] fifo_counter39,
output reg  [(clogb2(DEPTH)):0] fifo_counter40,

output reg  [(clogb2(DEPTH)):0] fifo_counter41,
output reg  [(clogb2(DEPTH)):0] fifo_counter42,
output reg  [(clogb2(DEPTH)):0] fifo_counter43,
output reg  [(clogb2(DEPTH)):0] fifo_counter44,
output reg  [(clogb2(DEPTH)):0] fifo_counter45,
output reg  [(clogb2(DEPTH)):0] fifo_counter46,
output reg  [(clogb2(DEPTH)):0] fifo_counter47,
output reg  [(clogb2(DEPTH)):0] fifo_counter48,
output reg  [(clogb2(DEPTH)):0] fifo_counter49,
output reg  [(clogb2(DEPTH)):0] fifo_counter50,

output reg  [(clogb2(DEPTH)):0] fifo_counter51,
output reg  [(clogb2(DEPTH)):0] fifo_counter52,
output reg  [(clogb2(DEPTH)):0] fifo_counter53,
output reg  [(clogb2(DEPTH)):0] fifo_counter54,
output reg  [(clogb2(DEPTH)):0] fifo_counter55,
output reg  [(clogb2(DEPTH)):0] fifo_counter56,
output reg  [(clogb2(DEPTH)):0] fifo_counter57,
output reg  [(clogb2(DEPTH)):0] fifo_counter58,
output reg  [(clogb2(DEPTH)):0] fifo_counter59,
output reg  [(clogb2(DEPTH)):0] fifo_counter60,

output reg  [(clogb2(DEPTH)):0] fifo_counter61,
output reg  [(clogb2(DEPTH)):0] fifo_counter62,
output reg  [(clogb2(DEPTH)):0] fifo_counter63
);


typedef enum logic [63:0] {ch0, ch1, ch2, ch3, ch4 ,ch5, ch6, ch7, ch8, ch9, ch10, ch11, ch12, ch13, ch14, ch15, ch16, ch17, ch18, ch19, ch20, ch21, ch22, ch23, ch24, ch25, ch26, ch27, ch28, ch29, ch30, ch31, ch32, ch33, ch34, ch35, ch36, ch37, ch38, ch39, ch40, ch41, ch42, ch43, ch44, ch45, ch46, ch47, ch48, ch49, ch50, ch51, ch52, ch53, ch54, ch55, ch56,ch57, ch58, ch59, ch60, ch61, ch62, ch63} State;
State currentState, nextState;


always_ff @(posedge clk)
if (reset)
currentState<=ch0;
else currentState<=nextState;

always_comb

case(currentState)

ch0: 
if (channel == 6'b000000) nextState=ch0;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch1:if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch2:if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch3:if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;



ch4:if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;



ch5:if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;



ch6:if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;



ch7:if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;



ch8:if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;



ch9:if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch10:if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch11:if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch12:if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch13:if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch14:if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch15:if (channel==6'b001111) nextState=ch15;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch16:if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch17:if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch18:if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch19:if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch20:if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch21:if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch22:if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch23:if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch24:if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch25:if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch26:if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch27:if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch28:if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch29:if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch30:if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;


ch31:if (channel ==5'b11111) nextState=ch31;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel == 6'b000000) nextState=ch0;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch32: 
if (channel == 6'b100000) nextState=ch32;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch33: 
if (channel == 6'b100001) nextState=ch33;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch34: 
if (channel == 6'b100010) nextState=ch34;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch35: 
if (channel == 6'b100011) nextState=ch35;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch36: 
if (channel == 6'b100100) nextState=ch36;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch37: 
if (channel == 6'b100101) nextState=ch37;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch38: 
if (channel == 6'b100110) nextState=ch38;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch39: 
if (channel == 6'b100111) nextState=ch39;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch40: 
if (channel == 6'b101000) nextState=ch40;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch41: 
if (channel == 6'b101001) nextState=ch41;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch42: 
if (channel == 6'b101010) nextState=ch42;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch43: 
if (channel == 6'b101011) nextState=ch43;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch44: 
if (channel == 6'b101100) nextState=ch44;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch45: 
if (channel == 6'b101101) nextState=ch45;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b000000) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch46: 
if (channel == 6'b101110) nextState=ch46;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch47: 
if (channel == 6'b101111) nextState=ch47;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch48: 
if (channel == 6'b110000) nextState=ch48;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch49: 
if (channel == 6'b110001) nextState=ch49;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch50: 
if (channel == 6'b110010) nextState=ch50;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch51: 
if (channel == 6'b110011) nextState=ch51;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch52: 
if (channel == 6'b110100) nextState=ch52;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch53: 
if (channel == 6'b110101) nextState=ch53;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch54: 
if (channel == 6'b110110) nextState=ch54;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch55: 
if (channel == 6'b110111) nextState=ch55;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch56: 
if (channel == 6'b111000) nextState=ch56;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch57: 
if (channel == 6'b111001) nextState=ch57;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch58: 
if (channel == 6'b111010) nextState=ch58;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch59: 
if (channel == 6'b111011) nextState=ch59;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch60: 
if (channel == 6'b111100) nextState=ch60;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch61: 
if (channel == 6'b111101) nextState=ch61;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b000000) nextState=ch0;
else if (channel ==6'b111110) nextState=ch62;
else nextState=ch63;

ch62: 
if (channel == 6'b111110) nextState=ch62;
else if (channel ==6'b000001) nextState=ch1;
else if (channel ==6'b000010) nextState=ch2;
else if (channel ==6'b000011) nextState=ch3;
else if (channel ==6'b000100) nextState=ch4;
else if (channel ==6'b000101) nextState=ch5;
else if (channel ==6'b000110) nextState=ch6;
else if (channel ==6'b000111) nextState=ch7;
else if (channel ==6'b001000) nextState=ch8;
else if (channel ==6'b001001) nextState=ch9;
else if (channel ==6'b001010) nextState=ch10;
else if (channel ==6'b001011) nextState=ch11;
else if (channel ==6'b001100) nextState=ch12;
else if (channel ==6'b001101) nextState=ch13;
else if (channel ==6'b001110) nextState=ch14;
else if (channel ==6'b001111) nextState=ch15;
else if (channel ==6'b010000) nextState=ch16;
else if (channel ==6'b010001) nextState=ch17;
else if (channel ==6'b010010) nextState=ch18;
else if (channel ==6'b010011) nextState=ch19;
else if (channel ==6'b010100) nextState=ch20;
else if (channel ==6'b010101) nextState=ch21;
else if (channel ==6'b010110) nextState=ch22;
else if (channel ==6'b010111) nextState=ch23;
else if (channel ==6'b011000) nextState=ch24;
else if (channel ==6'b011001) nextState=ch25;
else if (channel ==6'b011010) nextState=ch26;
else if (channel ==6'b011011) nextState=ch27;
else if (channel ==6'b011100) nextState=ch28;
else if (channel ==6'b011101) nextState=ch29;
else if (channel ==6'b011110) nextState=ch30;
else if (channel ==6'b011111) nextState=ch31;
else if (channel ==6'b100000) nextState=ch32;
else if (channel ==6'b100001) nextState=ch33;
else if (channel ==6'b100010) nextState=ch34;
else if (channel ==6'b100011) nextState=ch35;
else if (channel ==6'b100100) nextState=ch36;
else if (channel ==6'b100101) nextState=ch37;
else if (channel ==6'b100110) nextState=ch38;
else if (channel ==6'b100111) nextState=ch39;
else if (channel ==6'b101000) nextState=ch40;
else if (channel ==6'b101001) nextState=ch41;
else if (channel ==6'b101010) nextState=ch42;
else if (channel ==6'b101011) nextState=ch43;
else if (channel ==6'b101100) nextState=ch44;
else if (channel ==6'b101101) nextState=ch45;
else if (channel ==6'b101110) nextState=ch46;
else if (channel ==6'b101111) nextState=ch47;
else if (channel ==6'b110000) nextState=ch48;
else if (channel ==6'b110001) nextState=ch49;
else if (channel ==6'b110010) nextState=ch50;
else if (channel ==6'b110011) nextState=ch51;
else if (channel ==6'b110100) nextState=ch52;
else if (channel ==6'b110101) nextState=ch53;
else if (channel ==6'b110110) nextState=ch54;
else if (channel ==6'b110111) nextState=ch55;
else if (channel ==6'b111000) nextState=ch56;
else if (channel ==6'b111001) nextState=ch57;
else if (channel ==6'b111010) nextState=ch58;
else if (channel ==6'b111011) nextState=ch59;
else if (channel ==6'b111100) nextState=ch60;
else if (channel ==6'b111101) nextState=ch61;
else if (channel ==6'b000000) nextState=ch0;
else nextState=ch63;


ch63:if (channel ==6'b111111) nextState=ch63;
else nextState = ch0;

default: nextState = ch0;
endcase

//typedef enum logic [63:0] {d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d36,d38,d39,d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,d60,d61,d62,d63} State1;
//State1 currentState1, nextstate1;

//always_ff @(posedge clk)
//if (reset)
//currentState1<=d0;
//else currentState<=nextState1;

always_ff @(posedge clk)
if(channel==6'b000000) d0=data;
else if (channel ==6'b000001) d1=data;
else if (channel ==6'b000010) d2=data;
else if (channel ==6'b000011) d3=data;
else if (channel ==6'b000100) d4=data;
else if (channel ==6'b000101) d5=data;
else if (channel ==6'b000110) d6=data;
else if (channel ==6'b000111) d7=data;
else if (channel ==6'b001000) d8=data;
else if (channel ==6'b001001) d9=data;
else if (channel ==6'b001010) d10=data;
else if (channel ==6'b001011) d11=data;
else if (channel ==6'b001100) d12=data;
else if (channel ==6'b001101) d13=data;
else if (channel ==6'b001110) d14=data;
else if (channel ==6'b001111) d15=data;
else if (channel ==6'b010000) d16=data;
else if (channel ==6'b010001) d17=data;
else if (channel ==6'b010010) d18=data;
else if (channel ==6'b010011) d19=data;
else if (channel ==6'b010100) d20=data;
else if (channel ==6'b010101) d21=data;
else if (channel ==6'b010110) d22=data;
else if (channel ==6'b010111) d23=data;
else if (channel ==6'b011000) d24=data;
else if (channel ==6'b011001) d25=data;
else if (channel ==6'b011010) d26=data;
else if (channel ==6'b011011) d27=data;
else if (channel ==6'b011100) d28=data;
else if (channel ==6'b011101) d29=data;
else if (channel ==6'b011110) d30=data;
else if (channel ==6'b011111) d31=data;
else if (channel ==6'b100000) d32=data;
else if (channel ==6'b100001) d33=data;
else if (channel ==6'b100010) d34=data;
else if (channel ==6'b100011) d35=data;
else if (channel ==6'b100100) d36=data;
else if (channel ==6'b100101) d37=data;
else if (channel ==6'b100110) d38=data;
else if (channel ==6'b100111) d39=data;
else if (channel ==6'b101000) d40=data;
else if (channel ==6'b101001) d41=data;
else if (channel ==6'b101010) d42=data;
else if (channel ==6'b101011) d43=data;
else if (channel ==6'b101100) d44=data;
else if (channel ==6'b101101) d45=data;
else if (channel ==6'b101110) d46=data;
else if (channel ==6'b101111) d47=data;
else if (channel ==6'b110000) d48=data;
else if (channel ==6'b110001) d49=data;
else if (channel ==6'b110010) d50=data;
else if (channel ==6'b110011) d51=data;
else if (channel ==6'b110100) d52=data;
else if (channel ==6'b110101) d53=data;
else if (channel ==6'b110110) d54=data;
else if (channel ==6'b110111) d55=data;
else if (channel ==6'b111000) d56=data;
else if (channel ==6'b111001) d57=data;
else if (channel ==6'b111010) d58=data;
else if (channel ==6'b111011) d59=data;
else if (channel ==6'b111100) d60=data;
else if (channel ==6'b111101) d61=data;
else if (channel ==6'b111110) d62=data;
else d63=data;


assign channel_op = channel;
//(currentState==ch0 | currentState==ch1 |currentState==ch2 | currentState==ch3 |currentState==ch4 | currentState==ch5 | currentState==ch6 | currentState==ch7 | currentState==ch8 | currentState==ch9 | currentState==ch10 | currentState==ch11 | currentState==ch12 | currentState==ch13 | currentState==ch14 | currentState==ch15 | currentState==ch16 | currentState==ch17 | currentState==ch18 | currentState==ch19 | currentState==ch20 | currentState==ch21 | currentState==ch22 | currentState==ch23 | currentState==ch24 | currentState==ch25 | currentState==ch26 | currentState==ch27 | currentState==ch28 | currentState==ch29 | currentState==ch30 | currentState==ch31);
//assign data_op = data;
//
//assign regA=r0+r1+r2+r3+r4+r5+r6+r7;
//assign regB=r8+r9+r10+r11+r12+r13+r14+r15;

assign concat_data1=regA+regB;

// Read and write fifo pointers (We put -2, because on the case of DEPTH=8
    // clog2(DEPTH) = 3, then 1:0, 2 bits, we count from 0 to 3

//reg [(clogb2(DEPTH)-1):0] rd_ptr, wr_ptr;

reg [(clogb2(DEPTH)-1):0] rd_ptr0, wr_ptr0;
reg [(clogb2(DEPTH)-1):0] rd_ptr1, wr_ptr1;
reg [(clogb2(DEPTH)-1):0] rd_ptr2, wr_ptr2;
reg [(clogb2(DEPTH)-1):0] rd_ptr3, wr_ptr3;
reg [(clogb2(DEPTH)-1):0] rd_ptr4, wr_ptr4;
reg [(clogb2(DEPTH)-1):0] rd_ptr5, wr_ptr5;
reg [(clogb2(DEPTH)-1):0] rd_ptr6, wr_ptr6;
reg [(clogb2(DEPTH)-1):0] rd_ptr7, wr_ptr7;
reg [(clogb2(DEPTH)-1):0] rd_ptr8, wr_ptr8;
reg [(clogb2(DEPTH)-1):0] rd_ptr9, wr_ptr9;

reg [(clogb2(DEPTH)-1):0] rd_ptr10, wr_ptr10;
reg [(clogb2(DEPTH)-1):0] rd_ptr11, wr_ptr11;
reg [(clogb2(DEPTH)-1):0] rd_ptr12, wr_ptr12;
reg [(clogb2(DEPTH)-1):0] rd_ptr13, wr_ptr13;
reg [(clogb2(DEPTH)-1):0] rd_ptr14, wr_ptr14;
reg [(clogb2(DEPTH)-1):0] rd_ptr15, wr_ptr15;
reg [(clogb2(DEPTH)-1):0] rd_ptr16, wr_ptr16;
reg [(clogb2(DEPTH)-1):0] rd_ptr17, wr_ptr17;
reg [(clogb2(DEPTH)-1):0] rd_ptr18, wr_ptr18;
reg [(clogb2(DEPTH)-1):0] rd_ptr19, wr_ptr19;
reg [(clogb2(DEPTH)-1):0] rd_ptr20, wr_ptr20;

reg [(clogb2(DEPTH)-1):0] rd_ptr21, wr_ptr21;
reg [(clogb2(DEPTH)-1):0] rd_ptr22, wr_ptr22;
reg [(clogb2(DEPTH)-1):0] rd_ptr23, wr_ptr23;
reg [(clogb2(DEPTH)-1):0] rd_ptr24, wr_ptr24;
reg [(clogb2(DEPTH)-1):0] rd_ptr25, wr_ptr25;
reg [(clogb2(DEPTH)-1):0] rd_ptr26, wr_ptr26;
reg [(clogb2(DEPTH)-1):0] rd_ptr27, wr_ptr27;
reg [(clogb2(DEPTH)-1):0] rd_ptr28, wr_ptr28;
reg [(clogb2(DEPTH)-1):0] rd_ptr29, wr_ptr29;
reg [(clogb2(DEPTH)-1):0] rd_ptr30, wr_ptr30;

reg [(clogb2(DEPTH)-1):0] rd_ptr31, wr_ptr31;
reg [(clogb2(DEPTH)-1):0] rd_ptr32, wr_ptr32;
reg [(clogb2(DEPTH)-1):0] rd_ptr33, wr_ptr33;
reg [(clogb2(DEPTH)-1):0] rd_ptr34, wr_ptr34;
reg [(clogb2(DEPTH)-1):0] rd_ptr35, wr_ptr35;
reg [(clogb2(DEPTH)-1):0] rd_ptr36, wr_ptr36;
reg [(clogb2(DEPTH)-1):0] rd_ptr37, wr_ptr37;
reg [(clogb2(DEPTH)-1):0] rd_ptr38, wr_ptr38;
reg [(clogb2(DEPTH)-1):0] rd_ptr39, wr_ptr39;
reg [(clogb2(DEPTH)-1):0] rd_ptr40, wr_ptr40;

reg [(clogb2(DEPTH)-1):0] rd_ptr41, wr_ptr41;
reg [(clogb2(DEPTH)-1):0] rd_ptr42, wr_ptr42;
reg [(clogb2(DEPTH)-1):0] rd_ptr43, wr_ptr43;
reg [(clogb2(DEPTH)-1):0] rd_ptr44, wr_ptr44;
reg [(clogb2(DEPTH)-1):0] rd_ptr45, wr_ptr45;
reg [(clogb2(DEPTH)-1):0] rd_ptr46, wr_ptr46;
reg [(clogb2(DEPTH)-1):0] rd_ptr47, wr_ptr47;
reg [(clogb2(DEPTH)-1):0] rd_ptr48, wr_ptr48;
reg [(clogb2(DEPTH)-1):0] rd_ptr49, wr_ptr49;
reg [(clogb2(DEPTH)-1):0] rd_ptr50, wr_ptr50;

reg [(clogb2(DEPTH)-1):0] rd_ptr51, wr_ptr51;
reg [(clogb2(DEPTH)-1):0] rd_ptr52, wr_ptr52;
reg [(clogb2(DEPTH)-1):0] rd_ptr53, wr_ptr53;
reg [(clogb2(DEPTH)-1):0] rd_ptr54, wr_ptr54;
reg [(clogb2(DEPTH)-1):0] rd_ptr55, wr_ptr55;
reg [(clogb2(DEPTH)-1):0] rd_ptr56, wr_ptr56;
reg [(clogb2(DEPTH)-1):0] rd_ptr57, wr_ptr57;
reg [(clogb2(DEPTH)-1):0] rd_ptr58, wr_ptr58;
reg [(clogb2(DEPTH)-1):0] rd_ptr59, wr_ptr59;
reg [(clogb2(DEPTH)-1):0] rd_ptr60, wr_ptr60;

reg [(clogb2(DEPTH)-1):0] rd_ptr61, wr_ptr61;
reg [(clogb2(DEPTH)-1):0] rd_ptr62, wr_ptr62;
reg [(clogb2(DEPTH)-1):0] rd_ptr63, wr_ptr63;
  
	  
    // Declare the fifo memory (RAM that allow read and write at the same time)
    // reg [7:0] [3:0], create an array of 4 elements of 8 bits

//reg [(NUM_BITS-1):0] fifo_mem[(DEPTH-1):0];

reg [(NUM_BITS-1):0] fifo_mem0[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem1[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem2[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem3[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem4[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem5[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem6[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem7[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem8[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem9[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem10[(DEPTH-1):0];

reg [(NUM_BITS-1):0] fifo_mem11[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem12[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem13[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem14[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem15[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem16[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem17[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem18[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem19[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem20[(DEPTH-1):0];


reg [(NUM_BITS-1):0] fifo_mem21[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem22[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem23[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem24[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem25[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem26[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem27[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem28[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem29[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem30[(DEPTH-1):0];

reg [(NUM_BITS-1):0] fifo_mem31[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem32[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem33[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem34[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem35[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem36[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem37[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem38[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem39[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem40[(DEPTH-1):0];

reg [(NUM_BITS-1):0] fifo_mem41[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem42[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem43[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem44[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem45[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem46[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem47[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem48[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem49[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem50[(DEPTH-1):0];

reg [(NUM_BITS-1):0] fifo_mem51[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem52[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem53[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem54[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem55[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem56[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem57[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem58[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem59[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem60[(DEPTH-1):0];

reg [(NUM_BITS-1):0] fifo_mem61[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem62[(DEPTH-1):0];
reg [(NUM_BITS-1):0] fifo_mem63[(DEPTH-1):0];

    
    
    // Combinational part that calculate the empty/full flags
//assign empty = (fifo_counter==0);

assign empty0 = (fifo_counter0==0);
assign empty1 = (fifo_counter1==0);
assign empty2 = (fifo_counter2==0);
assign empty3 = (fifo_counter3==0);
assign empty4 = (fifo_counter4==0);
assign empty5 = (fifo_counter5==0);
assign empty6 = (fifo_counter6==0);
assign empty7 = (fifo_counter7==0);
assign empty8 = (fifo_counter8==0);
assign empty9 = (fifo_counter9==0);
assign empty10 = (fifo_counter10==0);

assign empty11 = (fifo_counter11==0);
assign empty12 = (fifo_counter12==0);
assign empty13 = (fifo_counter13==0);
assign empty14 = (fifo_counter14==0);
assign empty15 = (fifo_counter15==0);
assign empty16 = (fifo_counter16==0);
assign empty17 = (fifo_counter17==0);
assign empty18 = (fifo_counter18==0);
assign empty19 = (fifo_counter19==0);
assign empty20 = (fifo_counter20==0);

assign empty21 = (fifo_counter21==0);
assign empty22 = (fifo_counter22==0);
assign empty23 = (fifo_counter23==0);
assign empty24 = (fifo_counter24==0);
assign empty25 = (fifo_counter25==0);
assign empty26 = (fifo_counter26==0);
assign empty27 = (fifo_counter27==0);
assign empty28 = (fifo_counter28==0);
assign empty29 = (fifo_counter29==0);
assign empty30 = (fifo_counter30==0);

assign empty31 = (fifo_counter31==0);
assign empty32 = (fifo_counter32==0);
assign empty33 = (fifo_counter33==0);
assign empty34 = (fifo_counter34==0);
assign empty35 = (fifo_counter35==0);
assign empty36 = (fifo_counter36==0);
assign empty37 = (fifo_counter37==0);
assign empty38 = (fifo_counter38==0);
assign empty39 = (fifo_counter39==0);
assign empty40 = (fifo_counter40==0);

assign empty41 = (fifo_counter41==0);
assign empty42 = (fifo_counter42==0);
assign empty43 = (fifo_counter43==0);
assign empty44 = (fifo_counter44==0);
assign empty45 = (fifo_counter45==0);
assign empty46 = (fifo_counter46==0);
assign empty47 = (fifo_counter47==0);
assign empty48 = (fifo_counter48==0);
assign empty49 = (fifo_counter49==0);
assign empty50 = (fifo_counter50==0);

assign empty51 = (fifo_counter51==0);
assign empty52 = (fifo_counter52==0);
assign empty53 = (fifo_counter53==0);
assign empty54 = (fifo_counter54==0);
assign empty55 = (fifo_counter55==0);
assign empty56 = (fifo_counter56==0);
assign empty57 = (fifo_counter57==0);
assign empty58 = (fifo_counter58==0);
assign empty59 = (fifo_counter59==0);
assign empty60 = (fifo_counter60==0);

assign empty61 = (fifo_counter61==0);
assign empty62 = (fifo_counter62==0);
assign empty63 = (fifo_counter63==0);

//assign full = (fifo_counter==DEPTH);


assign full0 = (fifo_counter0==DEPTH);
assign full1 = (fifo_counter1==DEPTH);
assign full2 = (fifo_counter2==DEPTH);
assign full3 = (fifo_counter3==DEPTH);
assign full4 = (fifo_counter4==DEPTH);
assign full5 = (fifo_counter5==DEPTH);
assign full6 = (fifo_counter6==DEPTH);
assign full7 = (fifo_counter7==DEPTH);
assign full8 = (fifo_counter8==DEPTH);
assign full9 = (fifo_counter9==DEPTH);
assign full10 = (fifo_counter10==DEPTH);

assign full11 = (fifo_counter11==DEPTH);
assign full12 = (fifo_counter12==DEPTH);
assign full13 = (fifo_counter13==DEPTH);
assign full14 = (fifo_counter14==DEPTH);
assign full15 = (fifo_counter15==DEPTH);
assign full16 = (fifo_counter16==DEPTH);
assign full17 = (fifo_counter17==DEPTH);
assign full18 = (fifo_counter18==DEPTH);
assign full19 = (fifo_counter19==DEPTH);
assign full20 = (fifo_counter20==DEPTH);

assign full21 = (fifo_counter21==DEPTH);
assign full22 = (fifo_counter22==DEPTH);
assign full23 = (fifo_counter23==DEPTH);
assign full24 = (fifo_counter24==DEPTH);
assign full25 = (fifo_counter25==DEPTH);
assign full26 = (fifo_counter26==DEPTH);
assign full27 = (fifo_counter27==DEPTH);
assign full28 = (fifo_counter28==DEPTH);
assign full29 = (fifo_counter29==DEPTH);
assign full30 = (fifo_counter30==DEPTH);

assign full31 = (fifo_counter31==DEPTH);
assign full32 = (fifo_counter32==DEPTH);
assign full33 = (fifo_counter33==DEPTH);
assign full34 = (fifo_counter34==DEPTH);
assign full35 = (fifo_counter35==DEPTH);
assign full36 = (fifo_counter36==DEPTH);
assign full37 = (fifo_counter37==DEPTH);
assign full38 = (fifo_counter38==DEPTH);
assign full39 = (fifo_counter39==DEPTH);
assign full40 = (fifo_counter40==DEPTH);

assign full41 = (fifo_counter41==DEPTH);
assign full42 = (fifo_counter42==DEPTH);
assign full43 = (fifo_counter43==DEPTH);
assign full44 = (fifo_counter44==DEPTH);
assign full45 = (fifo_counter45==DEPTH);
assign full46 = (fifo_counter46==DEPTH);
assign full47 = (fifo_counter47==DEPTH);
assign full48 = (fifo_counter48==DEPTH);
assign full49 = (fifo_counter49==DEPTH);
assign full50 = (fifo_counter50==DEPTH);

assign full51 = (fifo_counter51==DEPTH);
assign full52 = (fifo_counter52==DEPTH);
assign full53 = (fifo_counter53==DEPTH);
assign full54 = (fifo_counter54==DEPTH);
assign full55 = (fifo_counter55==DEPTH);
assign full56 = (fifo_counter56==DEPTH);
assign full57 = (fifo_counter57==DEPTH);
assign full58 = (fifo_counter58==DEPTH);
assign full59 = (fifo_counter59==DEPTH);
assign full60 = (fifo_counter60==DEPTH);

assign full61 = (fifo_counter61==DEPTH);
assign full62 = (fifo_counter62==DEPTH);
assign full63 = (fifo_counter63==DEPTH);


    
    // Sequential circuit that will handle the fifo_counter, which is used to 
    // detect if the fifo is empty or full.
//    always @(posedge clk or negedge rst_n)
//    begin
//
//        if (~rst_n)
//            fifo_counter = 0;
//        else if( (!full && wr_en1) && ( !empty && rd_en1 ) ) 
//            fifo_counter = fifo_counter;     // If read and write don't change counter          
//        else if (!full && wr_en1)  
//            fifo_counter = fifo_counter + 1; // Only write increment            
//        else if (!empty && rd_en1)  
//            fifo_counter = fifo_counter - 1; // Only read decrement                                          
//    end
//    


always@(posedge clk, negedge reset)
begin
if (~reset)
r_reg <= 0;
else
r_reg <= r_next;
end 

assign r_next = {s_in, r_reg[N-1:1]};
assign s_out = r_reg[0];


always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter0 = 0;
        else if( (!full0 && wr_en0) && ( !empty0 && rd_en0 ) ) 
            fifo_counter0 = fifo_counter0;     // If read and write don't change counter          
        else if (!full0 && wr_en0)  
            fifo_counter0 = fifo_counter0 + 1; // Only write increment            
        else if (!empty0 && rd_en0)  
            fifo_counter0 = fifo_counter0 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter1 = 0;
        else if( (!full1 && wr_en1) && ( !empty1 && rd_en1 ) ) 
            fifo_counter1 = fifo_counter1;     // If read and write don't change counter          
        else if (!full1 && wr_en1)  
            fifo_counter1 = fifo_counter1 + 1; // Only write increment            
        else if (!empty1 && rd_en1)  
            fifo_counter1 = fifo_counter1 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter2 = 0;
        else if( (!full2 && wr_en2) && ( !empty2 && rd_en2 ) ) 
            fifo_counter2 = fifo_counter2;     // If read and write don't change counter          
        else if (!full2 && wr_en2)  
            fifo_counter2 = fifo_counter2 + 1; // Only write increment            
        else if (!empty2 && rd_en2)  
            fifo_counter2 = fifo_counter2 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter3 = 0;
        else if( (!full3 && wr_en3) && ( !empty3 && rd_en3 ) ) 
            fifo_counter3 = fifo_counter3;     // If read and write don't change counter          
        else if (!full3 && wr_en3)  
            fifo_counter3 = fifo_counter3 + 1; // Only write increment            
        else if (!empty3 && rd_en3)  
            fifo_counter3 = fifo_counter3 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter4 = 0;
        else if( (!full4 && wr_en4) && ( !empty4 && rd_en4 ) ) 
            fifo_counter4 = fifo_counter4;     // If read and write don't change counter          
        else if (!full4 && wr_en4)  
            fifo_counter4 = fifo_counter4 + 1; // Only write increment            
        else if (!empty4 && rd_en4)  
            fifo_counter4 = fifo_counter4 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter5 = 0;
        else if( (!full5 && wr_en5) && ( !empty5 && rd_en5 ) ) 
            fifo_counter5 = fifo_counter5;     // If read and write don't change counter          
        else if (!full5 && wr_en5)  
            fifo_counter5 = fifo_counter5 + 1; // Only write increment            
        else if (!empty5 && rd_en5)  
            fifo_counter5 = fifo_counter5 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter6 = 0;
        else if( (!full6 && wr_en6) && ( !empty6 && rd_en6 ) ) 
            fifo_counter6 = fifo_counter6;     // If read and write don't change counter          
        else if (!full6 && wr_en6)  
            fifo_counter6 = fifo_counter6 + 1; // Only write increment            
        else if (!empty6 && rd_en6)  
            fifo_counter6 = fifo_counter6 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter7 = 0;
        else if( (!full7 && wr_en7) && ( !empty7 && rd_en7 ) ) 
            fifo_counter7 = fifo_counter7;     // If read and write don't change counter          
        else if (!full7 && wr_en7)  
            fifo_counter7 = fifo_counter7 + 1; // Only write increment            
        else if (!empty7 && rd_en7)  
            fifo_counter7 = fifo_counter7 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter8 = 0;
        else if( (!full8 && wr_en8) && ( !empty8 && rd_en8 ) ) 
            fifo_counter8 = fifo_counter8;     // If read and write don't change counter          
        else if (!full8 && wr_en8)  
            fifo_counter8 = fifo_counter8 + 1; // Only write increment            
        else if (!empty8 && rd_en8)  
            fifo_counter8 = fifo_counter8 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter9 = 0;
        else if( (!full9 && wr_en9) && ( !empty9 && rd_en9 ) ) 
            fifo_counter9 = fifo_counter9;     // If read and write don't change counter          
        else if (!full9 && wr_en9)  
            fifo_counter9 = fifo_counter9 + 1; // Only write increment            
        else if (!empty9 && rd_en9)  
            fifo_counter9 = fifo_counter9 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter10 = 0;
        else if( (!full10 && wr_en10) && ( !empty10 && rd_en10 ) ) 
            fifo_counter10 = fifo_counter10;     // If read and write don't change counter          
        else if (!full10 && wr_en10)  
            fifo_counter10 = fifo_counter10 + 1; // Only write increment            
        else if (!empty10 && rd_en10)  
            fifo_counter10 = fifo_counter10 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter11 = 0;
        else if( (!full11 && wr_en11) && ( !empty11 && rd_en11 ) ) 
            fifo_counter11 = fifo_counter11;     // If read and write don't change counter          
        else if (!full11 && wr_en11)  
            fifo_counter11 = fifo_counter11 + 1; // Only write increment            
        else if (!empty11 && rd_en11)  
            fifo_counter11 = fifo_counter11 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter12 = 0;
        else if( (!full12 && wr_en12) && ( !empty12 && rd_en12 ) ) 
            fifo_counter12 = fifo_counter12;     // If read and write don't change counter          
        else if (!full12 && wr_en12)  
            fifo_counter12 = fifo_counter12 + 1; // Only write increment            
        else if (!empty12 && rd_en12)  
            fifo_counter12 = fifo_counter12 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter13 = 0;
        else if( (!full13 && wr_en13) && ( !empty13 && rd_en13 ) ) 
            fifo_counter13 = fifo_counter13;     // If read and write don't change counter          
        else if (!full13 && wr_en13)  
            fifo_counter13 = fifo_counter13 + 1; // Only write increment            
        else if (!empty13 && rd_en13)  
            fifo_counter13 = fifo_counter13 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter14 = 0;
        else if( (!full14 && wr_en14) && ( !empty14 && rd_en14 ) ) 
            fifo_counter14 = fifo_counter14;     // If read and write don't change counter          
        else if (!full14 && wr_en14)  
            fifo_counter14 = fifo_counter14 + 1; // Only write increment            
        else if (!empty14 && rd_en14)  
            fifo_counter14 = fifo_counter14 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter15 = 0;
        else if( (!full15 && wr_en15) && ( !empty15 && rd_en15 ) ) 
            fifo_counter15 = fifo_counter15;     // If read and write don't change counter          
        else if (!full15 && wr_en15)  
            fifo_counter15 = fifo_counter15 + 1; // Only write increment            
        else if (!empty15 && rd_en15)  
            fifo_counter15 = fifo_counter15 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter16 = 0;
        else if( (!full16 && wr_en16) && ( !empty16 && rd_en16 ) ) 
            fifo_counter16 = fifo_counter16;     // If read and write don't change counter          
        else if (!full16 && wr_en16)  
            fifo_counter16 = fifo_counter16 + 1; // Only write increment            
        else if (!empty16 && rd_en16)  
            fifo_counter16 = fifo_counter16 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter17 = 0;
        else if( (!full17 && wr_en17) && ( !empty17 && rd_en17 ) ) 
            fifo_counter17 = fifo_counter17;     // If read and write don't change counter          
        else if (!full17 && wr_en17)  
            fifo_counter17 = fifo_counter17 + 1; // Only write increment            
        else if (!empty17 && rd_en17)  
            fifo_counter17 = fifo_counter17 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter18 = 0;
        else if( (!full18 && wr_en18) && ( !empty18 && rd_en18 ) ) 
            fifo_counter18 = fifo_counter18;     // If read and write don't change counter          
        else if (!full18 && wr_en18)  
            fifo_counter18 = fifo_counter18 + 1; // Only write increment            
        else if (!empty18 && rd_en18)  
            fifo_counter18 = fifo_counter18 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter19 = 0;
        else if( (!full19 && wr_en19) && ( !empty19 && rd_en19 ) ) 
            fifo_counter19 = fifo_counter19;     // If read and write don't change counter          
        else if (!full19 && wr_en19)  
            fifo_counter19 = fifo_counter19 + 1; // Only write increment            
        else if (!empty19 && rd_en19)  
            fifo_counter19 = fifo_counter19 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter20 = 0;
        else if( (!full20 && wr_en20) && ( !empty20 && rd_en20 ) ) 
            fifo_counter20 = fifo_counter20;     // If read and write don't change counter          
        else if (!full20 && wr_en20)  
            fifo_counter20 = fifo_counter20 + 1; // Only write increment            
        else if (!empty20 && rd_en20)  
            fifo_counter20 = fifo_counter20 - 1; // Only read decrement                                          
    end
 
  
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter21 = 0;
        else if( (!full21 && wr_en21) && ( !empty21 && rd_en21 ) ) 
            fifo_counter21 = fifo_counter21;     // If read and write don't change counter          
        else if (!full21 && wr_en21)  
            fifo_counter21 = fifo_counter21 + 1; // Only write increment            
        else if (!empty21 && rd_en21)  
            fifo_counter21 = fifo_counter21 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter22 = 0;
        else if( (!full22 && wr_en22) && ( !empty22 && rd_en22 ) ) 
            fifo_counter22 = fifo_counter22;     // If read and write don't change counter          
        else if (!full22 && wr_en22)  
            fifo_counter22 = fifo_counter22 + 1; // Only write increment            
        else if (!empty22 && rd_en22)  
            fifo_counter22 = fifo_counter22 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter23 = 0;
        else if( (!full23 && wr_en23) && ( !empty23 && rd_en23 ) ) 
            fifo_counter23 = fifo_counter23;     // If read and write don't change counter          
        else if (!full23 && wr_en23)  
            fifo_counter23 = fifo_counter23 + 1; // Only write increment            
        else if (!empty23 && rd_en23)  
            fifo_counter23 = fifo_counter23 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter24 = 0;
        else if( (!full24 && wr_en24) && ( !empty24 && rd_en24 ) ) 
            fifo_counter24 = fifo_counter24;     // If read and write don't change counter          
        else if (!full24 && wr_en24)  
            fifo_counter24 = fifo_counter24 + 1; // Only write increment            
        else if (!empty24 && rd_en24)  
            fifo_counter24 = fifo_counter24 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter25 = 0;
        else if( (!full25 && wr_en25) && ( !empty25 && rd_en25 ) ) 
            fifo_counter25 = fifo_counter25;     // If read and write don't change counter          
        else if (!full25 && wr_en25)  
            fifo_counter25 = fifo_counter25 + 1; // Only write increment            
        else if (!empty25 && rd_en25)  
            fifo_counter25 = fifo_counter25 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter26 = 0;
        else if( (!full26 && wr_en26) && ( !empty26 && rd_en26 ) ) 
            fifo_counter26 = fifo_counter26;     // If read and write don't change counter          
        else if (!full26 && wr_en26)  
            fifo_counter26 = fifo_counter26 + 1; // Only write increment            
        else if (!empty26 && rd_en26)  
            fifo_counter26 = fifo_counter26 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter27 = 0;
        else if( (!full27 && wr_en27) && ( !empty27 && rd_en27 ) ) 
            fifo_counter27 = fifo_counter27;     // If read and write don't change counter          
        else if (!full27 && wr_en27)  
            fifo_counter27 = fifo_counter27 + 1; // Only write increment            
        else if (!empty27 && rd_en27)  
            fifo_counter27 = fifo_counter27 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter28 = 0;
        else if( (!full28 && wr_en28) && ( !empty28 && rd_en28 ) ) 
            fifo_counter28 = fifo_counter28;     // If read and write don't change counter          
        else if (!full28 && wr_en28)  
            fifo_counter28 = fifo_counter28 + 1; // Only write increment            
        else if (!empty28 && rd_en28)  
            fifo_counter28 = fifo_counter28 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter29 = 0;
        else if( (!full29 && wr_en29) && ( !empty29 && rd_en29 ) ) 
            fifo_counter29 = fifo_counter29;     // If read and write don't change counter          
        else if (!full29 && wr_en29)  
            fifo_counter29 = fifo_counter29 + 1; // Only write increment            
        else if (!empty29 && rd_en29)  
            fifo_counter29 = fifo_counter29 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter30 = 0;
        else if( (!full30 && wr_en30) && ( !empty30 && rd_en30 ) ) 
            fifo_counter30 = fifo_counter30;     // If read and write don't change counter          
        else if (!full30 && wr_en30)  
            fifo_counter30 = fifo_counter30 + 1; // Only write increment            
        else if (!empty30 && rd_en30)  
            fifo_counter30 = fifo_counter30 - 1; // Only read decrement                                          
    end
 
  
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter31 = 0;
        else if( (!full31 && wr_en31) && ( !empty31 && rd_en31 ) ) 
            fifo_counter31 = fifo_counter31;     // If read and write don't change counter          
        else if (!full31 && wr_en31)  
            fifo_counter31 = fifo_counter31 + 1; // Only write increment            
        else if (!empty31 && rd_en31)  
            fifo_counter31 = fifo_counter31 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter32 = 0;
        else if( (!full32 && wr_en32) && ( !empty32 && rd_en32 ) ) 
            fifo_counter32 = fifo_counter32;     // If read and write don't change counter          
        else if (!full32 && wr_en32)  
            fifo_counter32 = fifo_counter32 + 1; // Only write increment            
        else if (!empty32 && rd_en32)  
            fifo_counter32 = fifo_counter32 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter33 = 0;
        else if( (!full33 && wr_en33) && ( !empty33 && rd_en33 ) ) 
            fifo_counter33 = fifo_counter33;     // If read and write don't change counter          
        else if (!full33 && wr_en33)  
            fifo_counter33 = fifo_counter33 + 1; // Only write increment            
        else if (!empty33 && rd_en33)  
            fifo_counter33 = fifo_counter33 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter34 = 0;
        else if( (!full34 && wr_en34) && ( !empty34 && rd_en34 ) ) 
            fifo_counter34 = fifo_counter34;     // If read and write don't change counter          
        else if (!full34 && wr_en34)  
            fifo_counter34 = fifo_counter34 + 1; // Only write increment            
        else if (!empty34 && rd_en34)  
            fifo_counter34 = fifo_counter34 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter35 = 0;
        else if( (!full35 && wr_en35) && ( !empty35 && rd_en35 ) ) 
            fifo_counter35 = fifo_counter35;     // If read and write don't change counter          
        else if (!full35 && wr_en35)  
            fifo_counter35 = fifo_counter35 + 1; // Only write increment            
        else if (!empty35 && rd_en35)  
            fifo_counter35 = fifo_counter35 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter36 = 0;
        else if( (!full36 && wr_en36) && ( !empty36 && rd_en36 ) ) 
            fifo_counter36 = fifo_counter36;     // If read and write don't change counter          
        else if (!full36 && wr_en36)  
            fifo_counter36 = fifo_counter36 + 1; // Only write increment            
        else if (!empty36 && rd_en36)  
            fifo_counter36 = fifo_counter36 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter37 = 0;
        else if( (!full37 && wr_en37) && ( !empty37 && rd_en37 ) ) 
            fifo_counter37 = fifo_counter37;     // If read and write don't change counter          
        else if (!full37 && wr_en37)  
            fifo_counter37 = fifo_counter37 + 1; // Only write increment            
        else if (!empty37 && rd_en37)  
            fifo_counter37 = fifo_counter37 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter38 = 0;
        else if( (!full38 && wr_en38) && ( !empty38 && rd_en38 ) ) 
            fifo_counter38 = fifo_counter38;     // If read and write don't change counter          
        else if (!full38 && wr_en38)  
            fifo_counter38 = fifo_counter38 + 1; // Only write increment            
        else if (!empty38 && rd_en38)  
            fifo_counter38 = fifo_counter38 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter39 = 0;
        else if( (!full39 && wr_en39) && ( !empty39 && rd_en39 ) ) 
            fifo_counter39 = fifo_counter39;     // If read and write don't change counter          
        else if (!full39 && wr_en39)  
            fifo_counter39 = fifo_counter39 + 1; // Only write increment            
        else if (!empty39 && rd_en39)  
            fifo_counter39 = fifo_counter39 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter40 = 0;
        else if( (!full40 && wr_en40) && ( !empty40 && rd_en40 ) ) 
            fifo_counter40 = fifo_counter40;     // If read and write don't change counter          
        else if (!full40 && wr_en40)  
            fifo_counter40 = fifo_counter40 + 1; // Only write increment            
        else if (!empty40 && rd_en40)  
            fifo_counter40 = fifo_counter40 - 1; // Only read decrement                                          
    end
 
 
  
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter41 = 0;
        else if( (!full41 && wr_en41) && ( !empty41 && rd_en41 ) ) 
            fifo_counter41 = fifo_counter41;     // If read and write don't change counter          
        else if (!full41 && wr_en41)  
            fifo_counter41 = fifo_counter41 + 1; // Only write increment            
        else if (!empty41 && rd_en41)  
            fifo_counter41 = fifo_counter41 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter42 = 0;
        else if( (!full42 && wr_en42) && ( !empty42 && rd_en42 ) ) 
            fifo_counter42 = fifo_counter42;     // If read and write don't change counter          
        else if (!full42 && wr_en42)  
            fifo_counter42 = fifo_counter42 + 1; // Only write increment            
        else if (!empty42 && rd_en42)  
            fifo_counter42 = fifo_counter42 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter43 = 0;
        else if( (!full43 && wr_en43) && ( !empty43 && rd_en43 ) ) 
            fifo_counter43 = fifo_counter43;     // If read and write don't change counter          
        else if (!full43 && wr_en43)  
            fifo_counter43 = fifo_counter43 + 1; // Only write increment            
        else if (!empty43 && rd_en43)  
            fifo_counter43 = fifo_counter43 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter44 = 0;
        else if( (!full44 && wr_en44) && ( !empty44 && rd_en44 ) ) 
            fifo_counter44 = fifo_counter44;     // If read and write don't change counter          
        else if (!full44 && wr_en44)  
            fifo_counter44 = fifo_counter44 + 1; // Only write increment            
        else if (!empty44 && rd_en44)  
            fifo_counter44 = fifo_counter44 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter45 = 0;
        else if( (!full45 && wr_en45) && ( !empty45 && rd_en45 ) ) 
            fifo_counter45 = fifo_counter45;     // If read and write don't change counter          
        else if (!full45 && wr_en45)  
            fifo_counter45 = fifo_counter45 + 1; // Only write increment            
        else if (!empty45 && rd_en45)  
            fifo_counter45 = fifo_counter45 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter46 = 0;
        else if( (!full46 && wr_en46) && ( !empty46 && rd_en46 ) ) 
            fifo_counter46 = fifo_counter46;     // If read and write don't change counter          
        else if (!full46 && wr_en46)  
            fifo_counter46 = fifo_counter46 + 1; // Only write increment            
        else if (!empty46 && rd_en46)  
            fifo_counter46 = fifo_counter46 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter47 = 0;
        else if( (!full47 && wr_en47) && ( !empty47 && rd_en47 ) ) 
            fifo_counter47 = fifo_counter47;     // If read and write don't change counter          
        else if (!full47 && wr_en47)  
            fifo_counter47 = fifo_counter47 + 1; // Only write increment            
        else if (!empty47 && rd_en47)  
            fifo_counter47 = fifo_counter47 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter48 = 0;
        else if( (!full48 && wr_en48) && ( !empty48 && rd_en48 ) ) 
            fifo_counter48 = fifo_counter48;     // If read and write don't change counter          
        else if (!full48 && wr_en48)  
            fifo_counter48 = fifo_counter48 + 1; // Only write increment            
        else if (!empty48 && rd_en48)  
            fifo_counter48 = fifo_counter48 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter49 = 0;
        else if( (!full49 && wr_en49) && ( !empty49 && rd_en49 ) ) 
            fifo_counter49 = fifo_counter49;     // If read and write don't change counter          
        else if (!full49 && wr_en49)  
            fifo_counter49 = fifo_counter49 + 1; // Only write increment            
        else if (!empty49 && rd_en49)  
            fifo_counter49 = fifo_counter49 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter50 = 0;
        else if( (!full50 && wr_en50) && ( !empty50 && rd_en50 ) ) 
            fifo_counter50 = fifo_counter50;     // If read and write don't change counter          
        else if (!full50 && wr_en50)  
            fifo_counter50 = fifo_counter50 + 1; // Only write increment            
        else if (!empty50 && rd_en50)  
            fifo_counter50 = fifo_counter50 - 1; // Only read decrement                                          
    end
 
 
  
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter51 = 0;
        else if( (!full51 && wr_en51) && ( !empty51 && rd_en51 ) ) 
            fifo_counter51 = fifo_counter51;     // If read and write don't change counter          
        else if (!full51 && wr_en51)  
            fifo_counter51 = fifo_counter51 + 1; // Only write increment            
        else if (!empty51 && rd_en51)  
            fifo_counter51 = fifo_counter51 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter52 = 0;
        else if( (!full52 && wr_en52) && ( !empty52 && rd_en52 ) ) 
            fifo_counter52 = fifo_counter52;     // If read and write don't change counter          
        else if (!full52 && wr_en52)  
            fifo_counter52 = fifo_counter52 + 1; // Only write increment            
        else if (!empty52 && rd_en52)  
            fifo_counter52 = fifo_counter52 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter53 = 0;
        else if( (!full53 && wr_en53) && ( !empty53 && rd_en53 ) ) 
            fifo_counter53 = fifo_counter53;     // If read and write don't change counter          
        else if (!full53 && wr_en53)  
            fifo_counter53 = fifo_counter53 + 1; // Only write increment            
        else if (!empty53 && rd_en53)  
            fifo_counter53 = fifo_counter53 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter54 = 0;
        else if( (!full54 && wr_en54) && ( !empty54 && rd_en54 ) ) 
            fifo_counter54 = fifo_counter54;     // If read and write don't change counter          
        else if (!full54 && wr_en54)  
            fifo_counter54 = fifo_counter54 + 1; // Only write increment            
        else if (!empty54 && rd_en54)  
            fifo_counter54 = fifo_counter54 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter55 = 0;
        else if( (!full55 && wr_en55) && ( !empty55 && rd_en55 ) ) 
            fifo_counter55 = fifo_counter55;     // If read and write don't change counter          
        else if (!full55 && wr_en55)  
            fifo_counter55 = fifo_counter55 + 1; // Only write increment            
        else if (!empty55 && rd_en55)  
            fifo_counter55 = fifo_counter55 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter56 = 0;
        else if( (!full56 && wr_en56) && ( !empty56 && rd_en56 ) ) 
            fifo_counter56 = fifo_counter56;     // If read and write don't change counter          
        else if (!full56 && wr_en56)  
            fifo_counter56 = fifo_counter56 + 1; // Only write increment            
        else if (!empty56 && rd_en56)  
            fifo_counter56 = fifo_counter56 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter57 = 0;
        else if( (!full57 && wr_en57) && ( !empty57 && rd_en57 ) ) 
            fifo_counter57 = fifo_counter57;     // If read and write don't change counter          
        else if (!full57 && wr_en57)  
            fifo_counter57 = fifo_counter57 + 1; // Only write increment            
        else if (!empty57 && rd_en57)  
            fifo_counter57 = fifo_counter57 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter58 = 0;
        else if( (!full58 && wr_en58) && ( !empty58 && rd_en58 ) ) 
            fifo_counter58 = fifo_counter58;     // If read and write don't change counter          
        else if (!full58 && wr_en58)  
            fifo_counter58 = fifo_counter58 + 1; // Only write increment            
        else if (!empty58 && rd_en58)  
            fifo_counter58 = fifo_counter58 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter59 = 0;
        else if( (!full59 && wr_en59) && ( !empty59 && rd_en59 ) ) 
            fifo_counter59 = fifo_counter59;     // If read and write don't change counter          
        else if (!full59 && wr_en59)  
            fifo_counter59 = fifo_counter59 + 1; // Only write increment            
        else if (!empty59 && rd_en59)  
            fifo_counter59 = fifo_counter59 - 1; // Only read decrement                                          
    end
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter60 = 0;
        else if( (!full60 && wr_en60) && ( !empty60 && rd_en60 ) ) 
            fifo_counter60 = fifo_counter60;     // If read and write don't change counter          
        else if (!full60 && wr_en60)  
            fifo_counter60 = fifo_counter60 + 1; // Only write increment            
        else if (!empty60 && rd_en60)  
            fifo_counter60 = fifo_counter60 - 1; // Only read decrement                                          
    end
 
 
  
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter61 = 0;
        else if( (!full61 && wr_en61) && ( !empty61 && rd_en61 ) ) 
            fifo_counter61 = fifo_counter61;     // If read and write don't change counter          
        else if (!full61 && wr_en61)  
            fifo_counter61 = fifo_counter61 + 1; // Only write increment            
        else if (!empty61 && rd_en61)  
            fifo_counter61 = fifo_counter61 - 1; // Only read decrement                                          
    end
 
 
 always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter62 = 0;
        else if( (!full62 && wr_en62) && ( !empty62 && rd_en62 ) ) 
            fifo_counter62 = fifo_counter62;     // If read and write don't change counter          
        else if (!full62 && wr_en62)  
            fifo_counter62 = fifo_counter62 + 1; // Only write increment            
        else if (!empty62 && rd_en62)  
            fifo_counter62 = fifo_counter62 - 1; // Only read decrement                                          
    end
 
 
always @(posedge clk or negedge rst_n)
    begin

        if (~rst_n)
            fifo_counter63 = 0;
        else if( (!full63 && wr_en63) && ( !empty63 && rd_en63 ) ) 
            fifo_counter63 = fifo_counter63;     // If read and write don't change counter          
        else if (!full63 && wr_en63)  
            fifo_counter63 = fifo_counter63 + 1; // Only write increment            
        else if (!empty63 && rd_en63)  
            fifo_counter63 = fifo_counter63 - 1; // Only read decrement                                          
    end
 


//
//    // Sequential circuit to handle reading on the fifo
//    always @( posedge clk or negedge rst_n)
//    begin
//        if( ~rst_n )
//            fifo_out = 0;
//        else
//            begin
//              // Give some data if not empty and we want to read
//              if ( !empty && rd_en1 )
//                begin
//                    fifo_out = fifo_mem[rd_ptr];
//                    // synthesis translate_off                    
//                    $display("Popping value: %d at %t",fifo_mem[rd_ptr],$time);                    
//                    // synthesis translate_on
//                end                    
//                                 
//                                                       
//            end
//    end
//    

    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out0 = 0;
        else
            begin
              // Give some data if not empty0 and we want to read
              if ( !empty0 && rd_en0 )
                begin
                    fifo_out0 = fifo_mem0[rd_ptr0];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem0[rd_ptr0],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	

    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out1 = 0;
        else
            begin
              // Give some data if not empty1 and we want to read
              if ( !empty1 && rd_en1 )
                begin
                    fifo_out1 = fifo_mem1[rd_ptr1];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem1[rd_ptr1],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out2 = 0;
        else
            begin
              // Give some data if not empty2 and we want to read
              if ( !empty2 && rd_en2 )
                begin
                    fifo_out2 = fifo_mem2[rd_ptr2];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem2[rd_ptr2],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out3 = 0;
        else
            begin
              // Give some data if not empty3 and we want to read
              if ( !empty3 && rd_en3 )
                begin
                    fifo_out3 = fifo_mem3[rd_ptr3];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem3[rd_ptr3],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out4 = 0;
        else
            begin
              // Give some data if not empty4 and we want to read
              if ( !empty4 && rd_en4 )
                begin
                    fifo_out4 = fifo_mem4[rd_ptr4];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem4[rd_ptr4],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out5 = 0;
        else
            begin
              // Give some data if not empty5 and we want to read
              if ( !empty5 && rd_en5 )
                begin
                    fifo_out5 = fifo_mem5[rd_ptr5];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem5[rd_ptr5],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out6 = 0;
        else
            begin
              // Give some data if not empty6 and we want to read
              if ( !empty6 && rd_en6 )
                begin
                    fifo_out6 = fifo_mem6[rd_ptr6];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem6[rd_ptr6],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out7 = 0;
        else
            begin
              // Give some data if not empty7 and we want to read
              if ( !empty7 && rd_en7 )
                begin
                    fifo_out7 = fifo_mem7[rd_ptr7];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem7[rd_ptr7],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out8 = 0;
        else
            begin
              // Give some data if not empty8 and we want to read
              if ( !empty8 && rd_en8 )
                begin
                    fifo_out8 = fifo_mem8[rd_ptr8];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem8[rd_ptr8],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out9 = 0;
        else
            begin
              // Give some data if not empty9 and we want to read
              if ( !empty9 && rd_en9 )
                begin
                    fifo_out9 = fifo_mem9[rd_ptr9];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem9[rd_ptr9],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out10 = 0;
        else
            begin
              // Give some data if not empty10 and we want to read
              if ( !empty10 && rd_en10 )
                begin
                    fifo_out10 = fifo_mem10[rd_ptr10];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem10[rd_ptr10],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out11 = 0;
        else
            begin
              // Give some data if not empty11 and we want to read
              if ( !empty11 && rd_en11 )
                begin
                    fifo_out11 = fifo_mem11[rd_ptr11];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem11[rd_ptr11],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	// Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out12 = 0;
        else
            begin
              // Give some data if not empty12 and we want to read
              if ( !empty12 && rd_en12 )
                begin
                    fifo_out12 = fifo_mem12[rd_ptr12];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem12[rd_ptr12],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out13 = 0;
        else
            begin
              // Give some data if not empty13 and we want to read
              if ( !empty13 && rd_en13 )
                begin
                    fifo_out13 = fifo_mem13[rd_ptr13];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem13[rd_ptr13],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out14 = 0;
        else
            begin
              // Give some data if not empty14 and we want to read
              if ( !empty14 && rd_en14 )
                begin
                    fifo_out14 = fifo_mem14[rd_ptr14];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem14[rd_ptr14],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out15 = 0;
        else
            begin
              // Give some data if not empty15 and we want to read
              if ( !empty15 && rd_en15 )
                begin
                    fifo_out15 = fifo_mem15[rd_ptr15];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem15[rd_ptr15],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out16 = 0;
        else
            begin
              // Give some data if not empty16 and we want to read
              if ( !empty16 && rd_en16 )
                begin
                    fifo_out16 = fifo_mem16[rd_ptr16];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem16[rd_ptr16],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out17 = 0;
        else
            begin
              // Give some data if not empty17 and we want to read
              if ( !empty17 && rd_en17 )
                begin
                    fifo_out17 = fifo_mem17[rd_ptr17];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem17[rd_ptr17],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out18 = 0;
        else
            begin
              // Give some data if not empty18 and we want to read
              if ( !empty18 && rd_en18 )
                begin
                    fifo_out18 = fifo_mem18[rd_ptr18];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem18[rd_ptr18],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out19 = 0;
        else
            begin
              // Give some data if not empty19 and we want to read
              if ( !empty19 && rd_en19 )
                begin
                    fifo_out19 = fifo_mem19[rd_ptr19];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem19[rd_ptr19],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out20 = 0;
        else
            begin
              // Give some data if not empty20 and we want to read
              if ( !empty20 && rd_en20 )
                begin
                    fifo_out20 = fifo_mem20[rd_ptr20];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem20[rd_ptr20],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out21 = 0;
        else
            begin
              // Give some data if not empty21 and we want to read
              if ( !empty21 && rd_en21 )
                begin
                    fifo_out21 = fifo_mem21[rd_ptr21];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem21[rd_ptr21],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	// Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out22 = 0;
        else
            begin
              // Give some data if not empty22 and we want to read
              if ( !empty22 && rd_en22 )
                begin
                    fifo_out22 = fifo_mem22[rd_ptr22];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem22[rd_ptr22],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out23 = 0;
        else
            begin
              // Give some data if not empty23 and we want to read
              if ( !empty23 && rd_en23 )
                begin
                    fifo_out23 = fifo_mem23[rd_ptr23];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem23[rd_ptr23],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out24 = 0;
        else
            begin
              // Give some data if not empty24 and we want to read
              if ( !empty24 && rd_en24 )
                begin
                    fifo_out24 = fifo_mem24[rd_ptr24];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem24[rd_ptr24],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out25 = 0;
        else
            begin
              // Give some data if not empty25 and we want to read
              if ( !empty25 && rd_en25 )
                begin
                    fifo_out25 = fifo_mem25[rd_ptr25];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem25[rd_ptr25],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out26 = 0;
        else
            begin
              // Give some data if not empty26 and we want to read
              if ( !empty26 && rd_en26 )
                begin
                    fifo_out26 = fifo_mem26[rd_ptr26];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem26[rd_ptr26],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out27 = 0;
        else
            begin
              // Give some data if not empty27 and we want to read
              if ( !empty27 && rd_en27 )
                begin
                    fifo_out27 = fifo_mem27[rd_ptr27];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem27[rd_ptr27],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out28 = 0;
        else
            begin
              // Give some data if not empty28 and we want to read
              if ( !empty28 && rd_en28 )
                begin
                    fifo_out28 = fifo_mem28[rd_ptr28];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem28[rd_ptr28],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out29 = 0;
        else
            begin
              // Give some data if not empty29 and we want to read
              if ( !empty29 && rd_en29 )
                begin
                    fifo_out29 = fifo_mem29[rd_ptr29];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem29[rd_ptr29],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out30 = 0;
        else
            begin
              // Give some data if not empty30 and we want to read
              if ( !empty30 && rd_en30 )
                begin
                    fifo_out30 = fifo_mem30[rd_ptr30];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem30[rd_ptr30],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out31 = 0;
        else
            begin
              // Give some data if not empty31 and we want to read
              if ( !empty31 && rd_en31 )
                begin
                    fifo_out31 = fifo_mem31[rd_ptr31];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem31[rd_ptr31],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	// Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out32 = 0;
        else
            begin
              // Give some data if not empty32 and we want to read
              if ( !empty32 && rd_en32 )
                begin
                    fifo_out32 = fifo_mem32[rd_ptr32];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem32[rd_ptr32],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out33 = 0;
        else
            begin
              // Give some data if not empty33 and we want to read
              if ( !empty33 && rd_en33 )
                begin
                    fifo_out33 = fifo_mem33[rd_ptr33];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem33[rd_ptr33],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out34 = 0;
        else
            begin
              // Give some data if not empty34 and we want to read
              if ( !empty34 && rd_en34 )
                begin
                    fifo_out34 = fifo_mem34[rd_ptr34];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem34[rd_ptr34],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out35 = 0;
        else
            begin
              // Give some data if not empty35 and we want to read
              if ( !empty35 && rd_en35 )
                begin
                    fifo_out35 = fifo_mem35[rd_ptr35];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem35[rd_ptr35],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out36 = 0;
        else
            begin
              // Give some data if not empty36 and we want to read
              if ( !empty36 && rd_en36 )
                begin
                    fifo_out36 = fifo_mem36[rd_ptr36];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem36[rd_ptr36],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out37 = 0;
        else
            begin
              // Give some data if not empty37 and we want to read
              if ( !empty37 && rd_en37 )
                begin
                    fifo_out37 = fifo_mem37[rd_ptr37];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem37[rd_ptr37],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out38 = 0;
        else
            begin
              // Give some data if not empty38 and we want to read
              if ( !empty38 && rd_en38 )
                begin
                    fifo_out38 = fifo_mem38[rd_ptr38];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem38[rd_ptr38],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out39 = 0;
        else
            begin
              // Give some data if not empty39 and we want to read
              if ( !empty39 && rd_en39 )
                begin
                    fifo_out39 = fifo_mem39[rd_ptr39];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem39[rd_ptr39],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out40 = 0;
        else
            begin
              // Give some data if not empty40 and we want to read
              if ( !empty40 && rd_en40 )
                begin
                    fifo_out40 = fifo_mem40[rd_ptr40];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem40[rd_ptr40],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out41 = 0;
        else
            begin
              // Give some data if not empty41 and we want to read
              if ( !empty41 && rd_en41 )
                begin
                    fifo_out41 = fifo_mem41[rd_ptr41];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem41[rd_ptr41],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	// Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out42 = 0;
        else
            begin
              // Give some data if not empty42 and we want to read
              if ( !empty42 && rd_en42 )
                begin
                    fifo_out42 = fifo_mem42[rd_ptr42];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem42[rd_ptr42],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out43 = 0;
        else
            begin
              // Give some data if not empty43 and we want to read
              if ( !empty43 && rd_en43 )
                begin
                    fifo_out43 = fifo_mem43[rd_ptr43];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem43[rd_ptr43],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out44 = 0;
        else
            begin
              // Give some data if not empty44 and we want to read
              if ( !empty44 && rd_en44 )
                begin
                    fifo_out44 = fifo_mem44[rd_ptr44];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem44[rd_ptr44],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out45 = 0;
        else
            begin
              // Give some data if not empty45 and we want to read
              if ( !empty45 && rd_en45 )
                begin
                    fifo_out45 = fifo_mem45[rd_ptr45];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem45[rd_ptr45],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out46 = 0;
        else
            begin
              // Give some data if not empty46 and we want to read
              if ( !empty46 && rd_en46 )
                begin
                    fifo_out46 = fifo_mem46[rd_ptr46];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem46[rd_ptr46],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out47 = 0;
        else
            begin
              // Give some data if not empty47 and we want to read
              if ( !empty47 && rd_en47 )
                begin
                    fifo_out47 = fifo_mem47[rd_ptr47];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem47[rd_ptr47],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out48 = 0;
        else
            begin
              // Give some data if not empty48 and we want to read
              if ( !empty48 && rd_en48 )
                begin
                    fifo_out48 = fifo_mem48[rd_ptr48];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem48[rd_ptr48],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out49 = 0;
        else
            begin
              // Give some data if not empty49 and we want to read
              if ( !empty49 && rd_en49 )
                begin
                    fifo_out49 = fifo_mem49[rd_ptr49];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem49[rd_ptr49],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out50 = 0;
        else
            begin
              // Give some data if not empty50 and we want to read
              if ( !empty50 && rd_en50 )
                begin
                    fifo_out50 = fifo_mem50[rd_ptr50];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem50[rd_ptr50],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out51 = 0;
        else
            begin
              // Give some data if not empty51 and we want to read
              if ( !empty51 && rd_en51 )
                begin
                    fifo_out51 = fifo_mem51[rd_ptr51];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem51[rd_ptr51],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	// Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out52 = 0;
        else
            begin
              // Give some data if not empty52 and we want to read
              if ( !empty52 && rd_en52 )
                begin
                    fifo_out52 = fifo_mem52[rd_ptr52];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem52[rd_ptr52],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out53 = 0;
        else
            begin
              // Give some data if not empty53 and we want to read
              if ( !empty53 && rd_en53 )
                begin
                    fifo_out53 = fifo_mem53[rd_ptr53];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem53[rd_ptr53],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out54 = 0;
        else
            begin
              // Give some data if not empty54 and we want to read
              if ( !empty54 && rd_en54 )
                begin
                    fifo_out54 = fifo_mem54[rd_ptr54];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem54[rd_ptr54],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out55 = 0;
        else
            begin
              // Give some data if not empty55 and we want to read
              if ( !empty55 && rd_en55 )
                begin
                    fifo_out55 = fifo_mem55[rd_ptr55];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem55[rd_ptr55],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out56 = 0;
        else
            begin
              // Give some data if not empty56 and we want to read
              if ( !empty56 && rd_en56 )
                begin
                    fifo_out56 = fifo_mem56[rd_ptr56];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem56[rd_ptr56],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out57 = 0;
        else
            begin
              // Give some data if not empty57 and we want to read
              if ( !empty57 && rd_en57 )
                begin
                    fifo_out57 = fifo_mem57[rd_ptr57];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem57[rd_ptr57],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out58 = 0;
        else
            begin
              // Give some data if not empty58 and we want to read
              if ( !empty58 && rd_en58 )
                begin
                    fifo_out58 = fifo_mem58[rd_ptr58];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem58[rd_ptr58],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out59 = 0;
        else
            begin
              // Give some data if not empty59 and we want to read
              if ( !empty59 && rd_en59 )
                begin
                    fifo_out59 = fifo_mem59[rd_ptr59];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem59[rd_ptr59],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out60 = 0;
        else
            begin
              // Give some data if not empty60 and we want to read
              if ( !empty60 && rd_en60 )
                begin
                    fifo_out60 = fifo_mem60[rd_ptr60];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem60[rd_ptr60],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out61 = 0;
        else
            begin
              // Give some data if not empty61 and we want to read
              if ( !empty61 && rd_en61 )
                begin
                    fifo_out61 = fifo_mem61[rd_ptr61];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem61[rd_ptr61],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	// Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out62 = 0;
        else
            begin
              // Give some data if not empty62 and we want to read
              if ( !empty62 && rd_en62 )
                begin
                    fifo_out62 = fifo_mem62[rd_ptr62];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem62[rd_ptr62],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	
	
    // Sequential circuit to handle reading on the fifo
    always @( posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
            fifo_out63 = 0;
        else
            begin
              // Give some data if not empty63 and we want to read
              if ( !empty63 && rd_en63 )
                begin
                    fifo_out63 = fifo_mem63[rd_ptr63];
                    // synthesis translate_off                    
                    $display("Popping value: %d at %t",fifo_mem63[rd_ptr63],$time);                    
                    // synthesis translate_on
                end                    
                                 
                                                       
            end
    end
	


    // Sequential circuit to handle writing to the fifo
//    always @(posedge clk)
//    begin    
//       if (!full && wr_en1)
//        begin
//            fifo_mem[ wr_ptr ] = fifo_in;
//            // synthesis translate_off                    
//            $display("Pushing value: %d at %t",fifo_in,$time);                    
//            // synthesis translate_on
//        end                            
//    end
//

always @(posedge clk)
    begin    
       if (!full0 && wr_en0)
        begin
            fifo_mem0[ wr_ptr0 ] = fifo_in0;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in0,$time);                    
            // synthesis translate_on
        end                            
    end
	
always @(posedge clk)
    begin    
       if (!full1 && wr_en1)
        begin
            fifo_mem1[ wr_ptr1 ] = fifo_in1;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in1,$time);                    
            // synthesis translate_on
        end                            
    end  		 
     
always @(posedge clk)
    begin    
       if (!full2 && wr_en2)
        begin
            fifo_mem2[ wr_ptr2 ] = fifo_in2;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in2,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full3 && wr_en3)
        begin
            fifo_mem3[ wr_ptr3 ] = fifo_in3;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in3,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full4 && wr_en4)
        begin
            fifo_mem4[ wr_ptr4 ] = fifo_in4;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in4,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full5 && wr_en5)
        begin
            fifo_mem5[ wr_ptr5 ] = fifo_in5;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in5,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full6 && wr_en6)
        begin
            fifo_mem6[ wr_ptr6 ] = fifo_in6;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in6,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full7 && wr_en7)
        begin
            fifo_mem7[ wr_ptr7 ] = fifo_in7;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in7,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full8 && wr_en8)
        begin
            fifo_mem8[ wr_ptr8 ] = fifo_in8;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in8,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full9 && wr_en9)
        begin
            fifo_mem9[ wr_ptr9 ] = fifo_in9;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in9,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full10 && wr_en10)
        begin
            fifo_mem10[ wr_ptr10 ] = fifo_in10;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in10,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full11 && wr_en11)
        begin
            fifo_mem11[ wr_ptr11 ] = fifo_in11;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in11,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full12 && wr_en12)
        begin
            fifo_mem12[ wr_ptr12 ] = fifo_in12;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in12,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full13 && wr_en13)
        begin
            fifo_mem13[ wr_ptr13 ] = fifo_in13;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in13,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full14 && wr_en14)
        begin
            fifo_mem14[ wr_ptr14 ] = fifo_in14;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in14,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full15 && wr_en15)
        begin
            fifo_mem15[ wr_ptr15 ] = fifo_in15;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in15,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full16 && wr_en16)
        begin
            fifo_mem16[ wr_ptr16 ] = fifo_in16;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in16,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full17 && wr_en17)
        begin
            fifo_mem17[ wr_ptr17 ] = fifo_in17;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in17,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full18 && wr_en18)
        begin
            fifo_mem18[ wr_ptr18 ] = fifo_in18;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in18,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full19 && wr_en19)
        begin
            fifo_mem19[ wr_ptr19 ] = fifo_in19;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in19,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full20 && wr_en20)
        begin
            fifo_mem20[ wr_ptr20 ] = fifo_in20;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in20,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full22 && wr_en21)
        begin
            fifo_mem21[ wr_ptr21 ] = fifo_in21;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in21,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full22 && wr_en22)
        begin
            fifo_mem22[ wr_ptr22 ] = fifo_in22;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in22,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full23 && wr_en23)
        begin
            fifo_mem23[ wr_ptr23 ] = fifo_in23;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in23,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full24 && wr_en24)
        begin
            fifo_mem24[ wr_ptr24 ] = fifo_in24;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in24,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full25 && wr_en25)
        begin
            fifo_mem25[ wr_ptr25 ] = fifo_in25;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in25,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full26 && wr_en26)
        begin
            fifo_mem26[ wr_ptr26 ] = fifo_in26;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in26,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full27 && wr_en27)
        begin
            fifo_mem27[ wr_ptr27 ] = fifo_in27;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in27,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full28 && wr_en28)
        begin
            fifo_mem28[ wr_ptr28 ] = fifo_in28;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in28,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full29 && wr_en29)
        begin
            fifo_mem29[ wr_ptr29 ] = fifo_in29;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in29,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full30 && wr_en30)
        begin
            fifo_mem30[ wr_ptr30 ] = fifo_in30;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in30,$time);                    
            // synthesis translate_on
        end                            
    end
always @(posedge clk)
    begin    
       if (!full33 && wr_en31)
        begin
            fifo_mem31[ wr_ptr31 ] = fifo_in31;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in31,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full32 && wr_en32)
        begin
            fifo_mem32[ wr_ptr32 ] = fifo_in32;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in32,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full33 && wr_en33)
        begin
            fifo_mem33[ wr_ptr33 ] = fifo_in33;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in33,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full34 && wr_en34)
        begin
            fifo_mem34[ wr_ptr34 ] = fifo_in34;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in34,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full35 && wr_en35)
        begin
            fifo_mem35[ wr_ptr35 ] = fifo_in35;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in35,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full36 && wr_en36)
        begin
            fifo_mem36[ wr_ptr36 ] = fifo_in36;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in36,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full37 && wr_en37)
        begin
            fifo_mem37[ wr_ptr37 ] = fifo_in37;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in37,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full38 && wr_en38)
        begin
            fifo_mem38[ wr_ptr38 ] = fifo_in38;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in38,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full39 && wr_en39)
        begin
            fifo_mem39[ wr_ptr39 ] = fifo_in39;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in39,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full40 && wr_en40)
        begin
            fifo_mem40[ wr_ptr40 ] = fifo_in40;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in40,$time);                    
            // synthesis translate_on
        end                            
    end
always @(posedge clk)
    begin    
       if (!full44 && wr_en41)
        begin
            fifo_mem41[ wr_ptr41 ] = fifo_in41;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in41,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full42 && wr_en42)
        begin
            fifo_mem42[ wr_ptr42 ] = fifo_in42;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in42,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full43 && wr_en43)
        begin
            fifo_mem43[ wr_ptr43 ] = fifo_in43;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in43,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full44 && wr_en44)
        begin
            fifo_mem44[ wr_ptr44 ] = fifo_in44;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in44,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full45 && wr_en45)
        begin
            fifo_mem45[ wr_ptr45 ] = fifo_in45;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in45,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full46 && wr_en46)
        begin
            fifo_mem46[ wr_ptr46 ] = fifo_in46;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in46,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full47 && wr_en47)
        begin
            fifo_mem47[ wr_ptr47 ] = fifo_in47;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in47,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full48 && wr_en48)
        begin
            fifo_mem48[ wr_ptr48 ] = fifo_in48;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in48,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full49 && wr_en49)
        begin
            fifo_mem49[ wr_ptr49 ] = fifo_in49;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in49,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full50 && wr_en50)
        begin
            fifo_mem50[ wr_ptr50 ] = fifo_in50;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in50,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full55 && wr_en51)
        begin
            fifo_mem51[ wr_ptr51 ] = fifo_in51;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in51,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full52 && wr_en52)
        begin
            fifo_mem52[ wr_ptr52 ] = fifo_in52;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in52,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full53 && wr_en53)
        begin
            fifo_mem53[ wr_ptr53 ] = fifo_in53;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in53,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full54 && wr_en54)
        begin
            fifo_mem54[ wr_ptr54 ] = fifo_in54;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in54,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full55 && wr_en55)
        begin
            fifo_mem55[ wr_ptr55 ] = fifo_in55;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in55,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full56 && wr_en56)
        begin
            fifo_mem56[ wr_ptr56 ] = fifo_in56;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in56,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full57 && wr_en57)
        begin
            fifo_mem57[ wr_ptr57 ] = fifo_in57;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in57,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full58 && wr_en58)
        begin
            fifo_mem58[ wr_ptr58 ] = fifo_in58;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in58,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full59 && wr_en59)
        begin
            fifo_mem59[ wr_ptr59 ] = fifo_in59;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in59,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full60 && wr_en60)
        begin
            fifo_mem60[ wr_ptr60 ] = fifo_in60;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in60,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full61 && wr_en61)
        begin
            fifo_mem61[ wr_ptr61 ] = fifo_in61;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in61,$time);                    
            // synthesis translate_on
end
end

always @(posedge clk)
    begin    
       if (!full62 && wr_en62)
        begin
            fifo_mem62[ wr_ptr62 ] = fifo_in62;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in62,$time);                    
            // synthesis translate_on
        end                            
    end

always @(posedge clk)
    begin    
       if (!full63 && wr_en63)
        begin
            fifo_mem63[ wr_ptr63 ] = fifo_in63;
            // synthesis translate_off                    
            $display("Pushing value: %d at %t",fifo_in63,$time);                    
            // synthesis translate_on
        end                            
    end

   
    // Sequential circut to handle the read/write pointers
//    always@(posedge clk or negedge rst_n)
//    begin
//        if( ~rst_n )
//        begin
//            // In the beginning the pointers are the same
//            wr_ptr = 0;
//            rd_ptr = 0;
//        end
//        else
//        begin
//            // We're not full and someone want to write, so we increment the write pointer
//            if( !full && wr_en1 )
//                wr_ptr = wr_ptr + 1;              
//            
//            // We're not empty and someone want to read, so we decrement the read pointer
//            if( !empty && rd_en1 )
//                rd_ptr = rd_ptr + 1;          
//        end    
//    end    	 


    always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr0 = 0;
            rd_ptr0 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full0 && wr_en0 )
                wr_ptr0 = wr_ptr0 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty0 && rd_en0 )
                rd_ptr0 = rd_ptr0 + 1;          
        end    
    end   

    always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr1 = 0;
            rd_ptr1 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full1 && wr_en1 )
                wr_ptr1 = wr_ptr1 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty1 && rd_en1 )
                rd_ptr1 = rd_ptr1 + 1;          
        end    
    end   

    always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr2 = 0;
            rd_ptr2 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full2 && wr_en2 )
                wr_ptr2 = wr_ptr2 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty2 && rd_en2 )
                rd_ptr2 = rd_ptr2 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr3 = 0;
            rd_ptr3 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full3 && wr_en3 )
                wr_ptr3 = wr_ptr3 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty3 && rd_en3 )
                rd_ptr3 = rd_ptr3 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr4 = 0;
            rd_ptr4 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full4 && wr_en4 )
                wr_ptr4 = wr_ptr4 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty4 && rd_en4 )
                rd_ptr4 = rd_ptr4 + 1;          
        end    
    end 
  
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr5 = 0;
            rd_ptr5 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full5 && wr_en5 )
                wr_ptr5 = wr_ptr5 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty5 && rd_en5 )
                rd_ptr5 = rd_ptr5 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr6 = 0;
            rd_ptr6 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full6 && wr_en6 )
                wr_ptr6 = wr_ptr6 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty6 && rd_en6 )
                rd_ptr6 = rd_ptr6 + 1;          
        end    
    end   

always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr7 = 0;
            rd_ptr7 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full7 && wr_en7 )
                wr_ptr7 = wr_ptr7 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty7 && rd_en7 )
                rd_ptr7 = rd_ptr7 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr8 = 0;
            rd_ptr8 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full8 && wr_en8 )
                wr_ptr8 = wr_ptr8 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty8 && rd_en8 )
                rd_ptr8 = rd_ptr8 + 1;          
        end    
    end   

always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr9 = 0;
            rd_ptr9 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full9 && wr_en9 )
                wr_ptr9 = wr_ptr9 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty9 && rd_en9 )
                rd_ptr9 = rd_ptr9 + 1;          
        end    
    end   

always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr10 = 0;
            rd_ptr10 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full10 && wr_en10 )
                wr_ptr10 = wr_ptr10 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty10 && rd_en10 )
                rd_ptr10 = rd_ptr10 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr11 = 0;
            rd_ptr11 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full11 && wr_en11 )
                wr_ptr11 = wr_ptr11 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty11 && rd_en11 )
                rd_ptr11 = rd_ptr11 + 1;          
        end    
    end   
	
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr12 = 0;
            rd_ptr12 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full12 && wr_en12 )
                wr_ptr12 = wr_ptr12 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty12 && rd_en12 )
                rd_ptr12 = rd_ptr12 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr13 = 0;
            rd_ptr13 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full13 && wr_en13 )
                wr_ptr13 = wr_ptr13 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty13 && rd_en13 )
                rd_ptr13 = rd_ptr13 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr14 = 0;
            rd_ptr14 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full14 && wr_en14 )
                wr_ptr14 = wr_ptr14 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty14 && rd_en14 )
                rd_ptr14 = rd_ptr14 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr15 = 0;
            rd_ptr15 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full15 && wr_en15 )
                wr_ptr15 = wr_ptr15 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty15 && rd_en15 )
                rd_ptr15 = rd_ptr15 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr16 = 0;
            rd_ptr16 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full16 && wr_en16 )
                wr_ptr16 = wr_ptr16 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty16 && rd_en16 )
                rd_ptr16 = rd_ptr16 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr17 = 0;
            rd_ptr17 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full17 && wr_en17 )
                wr_ptr17 = wr_ptr17 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty17 && rd_en17 )
                rd_ptr17 = rd_ptr17 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr18 = 0;
            rd_ptr18 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full18 && wr_en18 )
                wr_ptr18 = wr_ptr18 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty18 && rd_en18 )
                rd_ptr18 = rd_ptr18 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr19 = 0;
            rd_ptr19 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full19 && wr_en19 )
                wr_ptr19 = wr_ptr19 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty19 && rd_en19 )
                rd_ptr19 = rd_ptr19 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr20 = 0;
            rd_ptr20 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full20 && wr_en20 )
                wr_ptr20 = wr_ptr20 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty20 && rd_en20 )
                rd_ptr20 = rd_ptr20 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr21 = 0;
            rd_ptr21 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full21 && wr_en21 )
                wr_ptr21 = wr_ptr21 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty21 && rd_en21 )
                rd_ptr21 = rd_ptr21 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr22 = 0;
            rd_ptr22 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full22 && wr_en22 )
                wr_ptr22 = wr_ptr22 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty22 && rd_en22 )
                rd_ptr22 = rd_ptr22 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr23 = 0;
            rd_ptr23 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full23 && wr_en23 )
                wr_ptr23 = wr_ptr23 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty23 && rd_en23 )
                rd_ptr23 = rd_ptr23 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr24 = 0;
            rd_ptr24 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full24 && wr_en24 )
                wr_ptr24 = wr_ptr24 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty24 && rd_en24 )
                rd_ptr24 = rd_ptr24 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr25 = 0;
            rd_ptr25 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full25 && wr_en25 )
                wr_ptr25 = wr_ptr25 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty25 && rd_en25 )
                rd_ptr25 = rd_ptr25 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr26 = 0;
            rd_ptr26 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full26 && wr_en26 )
                wr_ptr26 = wr_ptr26 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty26 && rd_en26 )
                rd_ptr26 = rd_ptr26 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr27 = 0;
            rd_ptr27 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full27 && wr_en27 )
                wr_ptr27 = wr_ptr27 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty27 && rd_en27 )
                rd_ptr27 = rd_ptr27 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr28 = 0;
            rd_ptr28 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full28 && wr_en28 )
                wr_ptr28 = wr_ptr28 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty28 && rd_en28 )
                rd_ptr28 = rd_ptr28 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr29 = 0;
            rd_ptr29 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full29 && wr_en29 )
                wr_ptr29 = wr_ptr29 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty29 && rd_en29 )
                rd_ptr29 = rd_ptr29 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr30 = 0;
            rd_ptr30 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full30 && wr_en30 )
                wr_ptr30 = wr_ptr30 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty30 && rd_en30 )
                rd_ptr30 = rd_ptr30 + 1;          
        end    
    end
   
always@(posedge clk or negedge rst_n)	
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr31 = 0;
            rd_ptr31 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full31 && wr_en31 )
                wr_ptr31 = wr_ptr31 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty31 && rd_en31 )
                rd_ptr31 = rd_ptr31 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr32 = 0;
            rd_ptr32 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full32 && wr_en32 )
                wr_ptr32 = wr_ptr32 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty32 && rd_en32 )
                rd_ptr32 = rd_ptr32 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr33 = 0;
            rd_ptr33 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full33 && wr_en33 )
                wr_ptr33 = wr_ptr33 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty33 && rd_en33 )
                rd_ptr33 = rd_ptr33 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr34 = 0;
            rd_ptr34 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full34 && wr_en34 )
                wr_ptr34 = wr_ptr34 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty34 && rd_en34 )
                rd_ptr34 = rd_ptr34 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr35 = 0;
            rd_ptr35 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full35 && wr_en35 )
                wr_ptr35 = wr_ptr35 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty35 && rd_en35 )
                rd_ptr35 = rd_ptr35 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr36 = 0;
            rd_ptr36 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full36 && wr_en36 )
                wr_ptr36 = wr_ptr36 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty36 && rd_en36 )
                rd_ptr36 = rd_ptr36 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr37 = 0;
            rd_ptr37 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full37 && wr_en37 )
                wr_ptr37 = wr_ptr37 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty37 && rd_en37 )
                rd_ptr37 = rd_ptr37 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr38 = 0;
            rd_ptr38 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full38 && wr_en38 )
                wr_ptr38 = wr_ptr38 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty38 && rd_en38 )
                rd_ptr38 = rd_ptr38 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr39 = 0;
            rd_ptr39 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full39 && wr_en39 )
                wr_ptr39 = wr_ptr39 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty39 && rd_en39 )
                rd_ptr39 = rd_ptr39 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr40 = 0;
            rd_ptr40 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full40 && wr_en40 )
                wr_ptr40 = wr_ptr40 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty40 && rd_en40 )
                rd_ptr40 = rd_ptr40 + 1;          
        end    
    end   
	  
always@(posedge clk or negedge rst_n)
  begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr41 = 0;
            rd_ptr41 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full41 && wr_en41 )
                wr_ptr41 = wr_ptr41 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty41 && rd_en41 )
                rd_ptr41 = rd_ptr41 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr42 = 0;
            rd_ptr42 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full42 && wr_en42 )
                wr_ptr42 = wr_ptr42 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty42 && rd_en42 )
                rd_ptr42 = rd_ptr42 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr43 = 0;
            rd_ptr43 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full43 && wr_en43 )
                wr_ptr43 = wr_ptr43 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty43 && rd_en43 )
                rd_ptr43 = rd_ptr43 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr44 = 0;
            rd_ptr44 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full44 && wr_en44 )
                wr_ptr44 = wr_ptr44 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty44 && rd_en44 )
                rd_ptr44 = rd_ptr44 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr45 = 0;
            rd_ptr45 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full45 && wr_en45 )
                wr_ptr45 = wr_ptr45 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty45 && rd_en45 )
                rd_ptr45 = rd_ptr45 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr46 = 0;
            rd_ptr46 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full46 && wr_en46 )
                wr_ptr46 = wr_ptr46 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty46 && rd_en46 )
                rd_ptr46 = rd_ptr46 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr47 = 0;
            rd_ptr47 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full47 && wr_en47 )
                wr_ptr47 = wr_ptr47 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty47 && rd_en47 )
                rd_ptr47 = rd_ptr47 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr48 = 0;
            rd_ptr48 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full48 && wr_en48 )
                wr_ptr48 = wr_ptr48 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty48 && rd_en48 )
                rd_ptr48 = rd_ptr48 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr49 = 0;
            rd_ptr49 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full49 && wr_en49 )
                wr_ptr49 = wr_ptr49 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty49 && rd_en49 )
                rd_ptr49 = rd_ptr49 + 1;          
        end    
    end   
	

always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr50 = 0;
            rd_ptr50 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full50 && wr_en50 )
                wr_ptr50 = wr_ptr50 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty50 && rd_en50 )
                rd_ptr50 = rd_ptr50 + 1;          
        end    
    end   
	  
always@(posedge clk or negedge rst_n)
  begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr51 = 0;
            rd_ptr51 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full51 && wr_en51 )
                wr_ptr51 = wr_ptr51 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty51 && rd_en51 )
                rd_ptr51 = rd_ptr51 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr52 = 0;
            rd_ptr52 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full52 && wr_en52 )
                wr_ptr52 = wr_ptr52 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty52 && rd_en52 )
                rd_ptr52 = rd_ptr52 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr53 = 0;
            rd_ptr53 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full53 && wr_en53 )
                wr_ptr53 = wr_ptr53 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty53 && rd_en53 )
                rd_ptr53 = rd_ptr53 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr54 = 0;
            rd_ptr54 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full54 && wr_en54 )
                wr_ptr54 = wr_ptr54 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty54 && rd_en54 )
                rd_ptr54 = rd_ptr54 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr55 = 0;
            rd_ptr55 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full55 && wr_en55 )
                wr_ptr55 = wr_ptr55 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty55 && rd_en55 )
                rd_ptr55 = rd_ptr55 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr56 = 0;
            rd_ptr56 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full56 && wr_en56 )
                wr_ptr56 = wr_ptr56 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty56 && rd_en56 )
                rd_ptr56 = rd_ptr56 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr57 = 0;
            rd_ptr57 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full57 && wr_en57 )
                wr_ptr57 = wr_ptr57 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty57 && rd_en57 )
                rd_ptr57 = rd_ptr57 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr58 = 0;
            rd_ptr58 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full58 && wr_en58 )
                wr_ptr58 = wr_ptr58 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty58 && rd_en58 )
                rd_ptr58 = rd_ptr58 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr59 = 0;
            rd_ptr59 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full59 && wr_en59 )
                wr_ptr59 = wr_ptr59 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty59 && rd_en59 )
                rd_ptr59 = rd_ptr59 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr60 = 0;
            rd_ptr60 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full60 && wr_en60 )
                wr_ptr60 = wr_ptr60 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty60 && rd_en60 )
                rd_ptr60 = rd_ptr60 + 1;          
        end    
    end   
	  
always@(posedge clk or negedge rst_n)
  begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr61 = 0;
            rd_ptr61 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full61 && wr_en61 )
                wr_ptr61 = wr_ptr61 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty61 && rd_en61 )
                rd_ptr61 = rd_ptr61 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr62 = 0;
            rd_ptr62 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full62 && wr_en62 )
                wr_ptr62 = wr_ptr62 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty62 && rd_en62 )
                rd_ptr62 = rd_ptr62 + 1;          
        end    
    end   
	
always@(posedge clk or negedge rst_n)
    begin
        if( ~rst_n )
        begin
            // In the beginning the pointers are the same
            wr_ptr63 = 0;
            rd_ptr63 = 0;
        end
        else
        begin
            // We're not full and someone want to write, so we increment the write pointer
            if( !full63 && wr_en63 )
                wr_ptr63 = wr_ptr63 + 1;              
            
            // We're not empty and someone want to read, so we decrement the read pointer
            if( !empty63 && rd_en63 )
                rd_ptr63 = rd_ptr63 + 1;          
        end    
    end   



	 function integer clogb2;
    input [31:0] depth;
        begin
            depth = depth - 1;
            for(clogb2=0; depth>0; clogb2=clogb2+1)
                depth = depth >> 1;
        end
    endfunction
	 
endmodule


