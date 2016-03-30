require 'nmap/xml'

report = ARGV[0]

Nmap::XML.new(report) do |xml|
  xml.each_host do |host|
    puts "[#{host.ip}]"

    host.each_port do |port|
      puts "  #{port.number}/#{port.protocol}\t#{port.state}\t#{port.service}\t#{port.scripts}"
    end
  end
end
