munin_plugin "cpu" do
	enable false
end

munin_plugin "df_inode" do
  enable false
end

munin_plugin "sm_memory" do
  create_file true
  plugin "memory"
end

munin_plugin "sm_cpu" do
  create_file true
  plugin "sm_cpu"
end

