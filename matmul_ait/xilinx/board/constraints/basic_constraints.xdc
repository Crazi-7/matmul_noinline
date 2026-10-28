# Set bitstream user ID
set_property BITSTREAM.CONFIG.USERID 0x32fd3362 [current_design]

# Enable bitstream compression
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

# Enable automatic over temperature shutdown
set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]
