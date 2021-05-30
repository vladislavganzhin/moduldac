# Constrain clock port i_clk with a 10-ns requirement

create_clock -period 10 [get_ports i_clk]


# Constrain the input I/O path

set_input_delay -clock i_clk -max 3 [all_inputs]

set_input_delay -clock i_clk -min 2 [all_inputs]

# Constrain the output I/O path

set_output_delay -clock i_clk -max 3 [all_inputs]

set_output_delay -clock i_clk -min 2 [all_inputs]




