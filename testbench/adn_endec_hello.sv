module adn_endec_hello;

  `include "vip/adn_common_tb_headers.sv"

  initial begin
    $display("Hello, ADN!");
    note_case(1);
    $finish;
  end

endmodule
