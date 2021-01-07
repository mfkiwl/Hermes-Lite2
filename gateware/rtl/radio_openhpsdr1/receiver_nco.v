/*
--------------------------------------------------------------------------------
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Library General Public
License as published by the Free Software Foundation; either
version 2 of the License, or (at your option) any later version.
This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Library General Public License for more details.
You should have received a copy of the GNU Library General Public
License along with this library; if not, write to the
Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
Boston, MA  02110-1301, USA.
--------------------------------------------------------------------------------
*/


//------------------------------------------------------------------------------
//           Copyright (c) 2008 Alex Shovkoplyas, VE3NEA
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
//           Copyright (c) 2013 Phil Harman, VK6APH 
//------------------------------------------------------------------------------

// 2013 Jan 26 - varcic now accepts 2...40 as decimation and CFIR
//               replaced with Polyphase FIR - VK6APH

// 2015 Jan 31 - updated for Hermes-Lite 12bit Steve Haynal KF7O

module receiver_nco(
  input rst_all,
  input clock,                  //61.44 MHz
  input clock_2x,
  input [5:0] rate,             //48k....384k
  input signed [17:0] mixdata_I,
  input signed [17:0] mixdata_Q,  
  output out_strobe,
  output reg [23:0] out_data_I,
  output reg [23:0] out_data_Q,
  output [33:0] debug
  );

  parameter CICRATE = 5;

  parameter REGISTER_OUTPUT = 0;

// gain adjustment, Hermes reduced by 6dB to match previous receiver code.
// Hermes-Lite gain reduced to calibrate QtRadio
wire signed [23:0] out_data_I2;
wire signed [23:0] out_data_Q2;
  
// Receive CIC filters followed by FIR filter
wire decimA_avail, decimB_avail;
wire signed [15:0] decimA_real, decimA_imag;
wire signed [15:0] decimB_real, decimB_imag;

localparam VARCICWIDTH = (CICRATE == 10) ? 36 : (CICRATE == 13) ? 36 : (CICRATE == 5) ? 43 : 39; // Last is default rate of 8
localparam ACCWIDTH = (CICRATE == 10) ? 28 : (CICRATE == 13) ? 30 : (CICRATE == 5) ? 25 : 27; // Last is default rate of 8

assign debug = {decimA_avail,decimA_real,decimB_avail,decimB_real};


// CIC filter 
//I channel
cic #(.STAGES(3), .DECIMATION(CICRATE), .IN_WIDTH(18), .ACC_WIDTH(ACCWIDTH), .OUT_WIDTH(16))      
  cic_inst_I2(
    .rst_all(rst_all),
    .clock(clock),
    .in_strobe(1'b1),
    .out_strobe(decimA_avail),
    .in_data(mixdata_I),
    .out_data(decimA_real)
    );

//Q channel
cic #(.STAGES(3), .DECIMATION(CICRATE), .IN_WIDTH(18), .ACC_WIDTH(ACCWIDTH), .OUT_WIDTH(16))  
  cic_inst_Q2(
    .rst_all(rst_all),
    .clock(clock),
    .in_strobe(1'b1),
    .out_strobe(),
    .in_data(mixdata_Q),
    .out_data(decimA_imag)
    );


//  Variable CIC filter - in width = out width = 14 bits, decimation rate = 2 to 16 
//I channel
varcic #(.STAGES(5), .IN_WIDTH(16), .ACC_WIDTH(VARCICWIDTH), .OUT_WIDTH(16), .CICRATE(CICRATE))
  varcic_inst_I1(
    .rst_all(rst_all),
    .clock(clock),
    .in_strobe(decimA_avail),
    .decimation(rate),
    .out_strobe(decimB_avail),
    .in_data(decimA_real),
    .out_data(decimB_real)
    );

//Q channel
varcic #(.STAGES(5), .IN_WIDTH(16), .ACC_WIDTH(VARCICWIDTH), .OUT_WIDTH(16), .CICRATE(CICRATE))
  varcic_inst_Q1(
    .rst_all(rst_all),
    .clock(clock),
    .in_strobe(decimA_avail),
    .decimation(rate),
    .out_strobe(),
    .in_data(decimA_imag),
    .out_data(decimB_imag)
    );

firX8R8 fir2 (
  .rst_all(rst_all),
  .clock(clock),
  .clock_2x(clock_2x),
  .x_avail(decimB_avail),
  .x_real({{2{decimB_real[15]}},decimB_real}),
  .x_imag({{2{decimB_imag[15]}},decimB_imag}),
  .y_avail(out_strobe),
  .y_real(out_data_I2),
  .y_imag(out_data_Q2)
  );

generate

//assign out_data_I = out_data_I2; //>>> 3);
//assign out_data_Q = out_data_Q2; //>>> 3);

if (REGISTER_OUTPUT == 1) begin

  always @(posedge clock) begin
    out_data_I <= out_data_I2;
    out_data_Q <= out_data_Q2;
  end

end else begin

  always @(*) begin
    out_data_I = out_data_I2;
    out_data_Q = out_data_Q2;
  end

end

endgenerate



endmodule
