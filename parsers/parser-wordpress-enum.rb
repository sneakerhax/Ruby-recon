require 'nmap/xml'

report = ARGV[0]

Nmap::XML.new(report) do |xml|
  xml.each_host do |host|
    host.each_port do |port|
      ports = [80,443,8080]
      if ports.include?(port.number) && port.scripts.values != []
        puts "[#{host.hostname}][#{host.ip}]"
        puts "\s\s[#{port.number}/#{port.protocol}]"
        port.scripts.each do |name,output|
        puts "\s\s\s\s[#{name}]"
        output.each_line { |line| puts "\s\s\s\s\s\s* #{line}" }
      end
     end
    end
  end
end
