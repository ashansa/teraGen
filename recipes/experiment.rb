#private_ip = my_private_ip()
#public_ip = my_public_ip()

script 'run_experiment' do
  cwd "/home/teraGen"
   user node['teraGen']['user']
  group node['teraGen']['group']
  interpreter "bash"
  code <<-EOM

/srv/hadoop/bin/hadoop jar /srv/hadoop-2.4.0/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.4.0.jar teragen 100 /srv/teragen
  EOM
end

