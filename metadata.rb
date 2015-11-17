name             'teraGen'
maintainer       "teraGen"
maintainer_email "ashansa.perera@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs teraGen'
version          "0.1"

recipe            "teraGen::install", "Experiment setup for teraGen"
recipe            "teraGen::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"



%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end

attribute "teraGen/version",
:description => "Version of teraGen",
:type => 'string',
:default => "0.1"


attribute "teraGen/url",
:description => "Url to download binaries for teraGen",
:type => 'string',
:default => ""

attribute "teraGen/user",
:description => "Run teraGen as this user",
:type => 'string',
:default => "teraGen"

attribute "teraGen/group",
:description => "group parameter value",
:type => "string"

attribute "teraGen/user",
:description => "user parameter value",
:type => "string"


