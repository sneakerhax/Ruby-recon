require 'nmap/xml'

report = ARGV[0]

Nmap::XML.new(report) do |xml|
  xml.each_host do |host|
    puts "[#{host.ip}]"

    host.each_port do |port|
      if port.number == 80
        puts " Port: #{port.number}/#{port.protocol}\t State: #{port.state}\t Service: #{port.service}\t http-title: #{port.scripts.values[1]}"
      end
    end
  end
end
