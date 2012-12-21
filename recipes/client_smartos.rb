# list of default checks for smartos
# df_inode if_err_net0 if_net0 io_busy_ramdisk io_busy_sd io_bytes_ramdisk io_bytes_sd io_ops_ramdisk io_ops_sd iostat   netstat ntp_offset paging_in paging_out postfix_mailqueue   users vmstat

checks_off = %w{ df_inode if_err_net0 if_net0 io_busy_ramdisk io_busy_sd io_bytes_ramdisk io_bytes_sd io_ops_ramdisk io_ops_sd iostat netstat ntp_offset paging_in paging_out postfix_mailqueue users vmstat }

checks_off.each do |c|
	munin_plugin c do
		enable false
	end
end

munin_plugin "sm_memory" do
  create_file true
  plugin "memory"
end

munin_plugin "sm_cpu" do
  create_file true
  plugin "sm_cpu"
end

