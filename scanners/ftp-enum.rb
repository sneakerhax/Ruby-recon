require 'nmap/program'

targets = ARGV[0]
time = Time.new
t = time.strftime("%Y-%m-%d-%H:%M:%S")
report = '../reports/nmapscan_' + t.to_s + '_ftp-enum' + '.xml'
puts "report name: #{report}"
ports = 21 #add port here. Use array when setting multiple ports

Nmap::Program.scan do |nmap|
  nmap.target_file = targets
  nmap.ports = ports
  nmap.connect_scan = true
  nmap.service_scan = true
  nmap.disable_dns = false
  nmap.aggressive_timing = true
  nmap.verbose = true
  nmap.script = 'ftp-anon,ftp-brute'
  nmap.xml = report
end
