gem_package 'nokogiri'

munin_plugin "solr_" do
  plugin "solr_qps"
  create_file true
end

munin_plugin "solr_" do
  plugin "solr_tpr"
  create_file true
end
