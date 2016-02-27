# Ruby-recon
A recon tool using ruby-nmap

This tool was created with [ruby-nmap](https://github.com/sophsec/ruby-nmap) to automate the process of scanning with nmap and parsing out results.

More information about recon at scale can be found [here](http://sneakerhax.com/recon-at-scale/)

#Features
<ul>
  <li>Templates for different types of nmap scans with timestamped output
  <li>Parsers to parse out the information you are looking for
</ul>

#Basic Usage

###Scanner
`ruby nmap_ruby_<scanner_name> targets.txt`

###Parser
`ruby nmap_ruby_parser_<parser_name> <report.xml>`
