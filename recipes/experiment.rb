#private_ip = my_private_ip()
#public_ip = my_public_ip()

script 'run_experiment' do
  cwd "/home/teraGen"
   user node['teraGen']['user']
  group node['teraGen']['group']
  interpreter "bash"
  code <<-EOM
rm -f /tmp/input.txt
base64 /dev/urandom | head -c 128000000 > /tmp/input.txt
/srv/hadoop/bin/hdfs dfs -mkdir -p /words
/srv/hadoop/bin/hdfs dfs -copyFromLocal /tmp/input.txt /words/#{node.name}
  EOM
end

