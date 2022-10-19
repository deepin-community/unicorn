require 'rbconfig' unless defined?(RbConfig)

ruby = File.join(RbConfig::CONFIG['bindir'], RbConfig::CONFIG['ruby_install_name'])

Dir['test/unit/test_*.rb'].each do |test|
  exit($?.exitstatus) unless system("#{ruby} -I. -e \"require '#{test}'\"")
end
