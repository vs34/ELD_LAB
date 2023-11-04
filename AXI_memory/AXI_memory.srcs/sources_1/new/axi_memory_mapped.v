module axi_memory_mapped_memory
  #(parameter ADDR_WIDTH  = 10,  // Address width (e.g., 10 bits)
    parameter DATA_WIDTH  = 32)  // Data width (e.g., 32 bits)
  (
    input wire                   aclk,          // Clock
    input wire                   aresetn,       // Asynchronous reset (active low)
    
    // AXI4-Lite interface
    input wire [ADDR_WIDTH-1:0]  awaddr,        // Write address
    input wire                   awvalid,       // Write address valid
    output wire                  awready,       // Write address ready
    input wire [DATA_WIDTH-1:0]  wdata,         // Write data
    input wire [3:0]             wstrb,         // Write strobe
    input wire                   wvalid,        // Write data valid
    output wire                  wready,        // Write data ready
    output wire                  bresp,         // Write response
    output wire                  bvalid,        // Write response valid
    input wire                   bready,        // Write response ready
    input wire [ADDR_WIDTH-1:0]  araddr,        // Read address
    input wire                   arvalid,       // Read address valid
    output wire                  arready,       // Read address ready
    output wire [DATA_WIDTH-1:0] rdata,         // Read data
    output wire [2:0]            rresp,         // Read response
    output wire                  rvalid,        // Read response valid
    input wire                   rready         // Read response ready
  );
  
  reg [DATA_WIDTH-1:0] memory [2**ADDR_WIDTH-1:0];  // Define memory storage

    always @(posedge aclk or negedge aresetn) begin
      if (!aresetn) begin
        // Asynchronous reset
        for (int i = 0; i < 2**ADDR_WIDTH; i=i+1) begin
          memory[i] <= 32'h00000000;
        end
      end else if (awvalid && wvalid) begin
        // Write operation
        memory[awaddr] <= wdata;
      end else if (arvalid && arready) begin
        // Read operation
        rdata <= memory[araddr];
      end
    end


  assign awready = 1'b1;          // Always ready to accept write address
  assign wready = 1'b1;           // Always ready to accept write data
  assign bresp = 2'b00;           // Write response OKAY
  assign bvalid = 1'b0;           // Write response not valid (optional)
  assign arready = 1'b1;          // Always ready to accept read address
  assign rresp = 3'b000;          // Read response OKAY
  assign rvalid = 1'b0;           // Read response not valid (optional)

endmodule
