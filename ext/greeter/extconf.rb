require "mkmf-rice"
conf = RbConfig::MAKEFILE_CONFIG

# I'm working in a M4 Macbook
if conf['target_cpu'] == 'arm64' && conf['target_os'].start_with?('darwin')
  $CXXFLAGS << ' -Wall -Werror -std=c++17 '
end

create_makefile("greeter/greeter")