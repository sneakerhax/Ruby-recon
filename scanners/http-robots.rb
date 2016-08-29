require 'nmap/program'

targets = ARGV[0]
time = Time.new
t = time.strftime("%Y-%m-%d-%H:%M:%S")
report = '../reports/nmapscan_' + t.to_s + '_robots' + '.xml'
puts "report name: #{report}"
ports = 80,443,8080 #add port here. Use array when setting multiple ports

Nmap::Program.scan do |nmap|
  nmap.target_file = targets
  nmap.ports = ports
  nmap.connect_scan = true
  nmap.service_scan = false
  nmap.disable_dns = false
  nmap.aggressive_timing = true
  nmap.verbose = true
  nmap.script = 'http-robots.txt'
  nmap.xml = report
end
