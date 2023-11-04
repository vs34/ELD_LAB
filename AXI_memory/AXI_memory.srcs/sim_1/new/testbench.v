`timescale 1ns / 1ps

module testbench_axi_memory_mapped_memory;

  reg aclk;
  reg aresetn;
  reg [ADDR_WIDTH-1:0] awaddr;
  reg awvalid;
  wire awready;
  reg [DATA_WIDTH-1:0] wdata;
  reg [3:0] wstrb;
  reg wvalid;
  wire wready;
  wire bresp;
  wire bvalid;
  reg bready;
  reg [ADDR_WIDTH-1:0] araddr;
  reg arvalid;
  wire arready;
  wire [DATA_WIDTH-1:0] rdata;
  wire [2:0] rresp;
  wire rvalid;
  reg rready;

  integer i;
  integer num_tests;
  integer num_errors;

  initial begin
    aclk = 0;
    aresetn = 0;
    awaddr = 0;
    awvalid = 0;
    wdata = 0;
    wstrb = 0;
    wvalid = 0;
    bresp = 0;
    bvalid = 0;
    bready = 0;
    araddr = 0;
    arvalid = 0;
    rready = 0;

    // Initialize the memory array
    for (i = 0; i < 2**ADDR_WIDTH; i = i + 1) begin
      memory[i] = 0;
    end

    num_tests = 0;
    num_errors = 0;

    // Apply reset
    aresetn = 0;
    #10 aresetn = 1;

    // Test Write and Read
    // Write 0x55 to address 0x10
    awaddr = 8'h10;
    awvalid = 1;
    wdata = 8'h55;
    wstrb = 4'b1111;
    wvalid = 1;
    #20 awvalid = 0;
    wvalid = 0;
    // Expected response: OKAY (00)
    if (bresp !== 2'b00 || bvalid !== 1'b1)
      num_errors = num_errors + 1;
    
    // Read from address 0x10
    araddr = 8'h10;
    arvalid = 1;
    #20 arvalid = 0;
    // Expected response: OKAY (00), Read data: 8'h55
    if (rresp !== 3'b000 || rvalid !== 1'b1 || rdata !== 8'h55)
      num_errors = num_errors + 1;
    
    // Write to an unaligned address (0x11) with 8'hAA and strb = 4'b0110
    awaddr = 8'h11;
    awvalid = 1;
    wdata = 8'hAA;
    wstrb = 4'b0110;
    wvalid = 1;
    #20 awvalid = 0;
    wvalid = 0;
    // Expected response: OKAY (00)
    if (bresp !== 2'b00 || bvalid !== 1'b1)
      num_errors = num_errors + 1;

    // Read from address 0x10
    araddr = 8'h10;
    arvalid = 1;
    #20 arvalid = 0;
    // Expected response: OKAY (00), Read data: 8'hAA
    if (rresp !== 3'b000 || rvalid !== 1'b1 || rdata !== 8'hAA)
      num_errors = num_errors + 1;

    // Report the test results
    $display("Number of tests: %0d", num_tests);
    $display("Number of errors: %0d", num_errors);
    if (num_errors === 0)
      $display("All tests passed!");
    else
      $display("Some tests failed!");

    $finish;
  end

  always begin
    #5 aclk = ~aclk;
  end

endmodule
