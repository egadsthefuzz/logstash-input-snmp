Gem::Specification.new do |s|
  s.name          = 'logstash-input-snmp'
  s.version       = '0.9.1'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'Poll snmp data from devices'
  s.description   = 'This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program'
  s.homepage      = 'https://github.com/egadsthefuzz/logstash-input-snmp'
  s.authors       = ['Konrad Lother', 'William Reynolds']
  s.email         = 'konrad@corpex.de', 'william.g.reynolds@egadsthefuzz.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud', '>= 0.0.22'
  s.add_development_dependency 'logstash-devutils', '>= 0.0.16'
  s.add_runtime_dependency 'snmpjr', '~> 0'
end
