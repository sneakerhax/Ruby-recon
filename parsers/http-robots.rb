require 'nmap/xml'

report = ARGV[0]

Nmap::XML.new(report) do |xml|
  xml.each_host do |host|
    host.each_port do |port|
      ports = [80,443,8080]
        if ports.include?(port.number) && port.scripts.values != []
          puts "[#{host.ip}]"
          puts " Port: #{port.number}/#{port.protocol}\n State: #{port.state}\n Service: #{port.service}\t\n [robots.txt]:\n #{port.scripts.values[0]}\n\n"
      end
    end
  end
end
