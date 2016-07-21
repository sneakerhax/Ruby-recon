# Ruby-recon
A recon tool using ruby-nmap

This tool was created with [ruby-nmap](https://github.com/sophsec/ruby-nmap) to automate the process of scanning with nmap and parsing out results.

More information about recon at scale can be found [here](http://sneakerhax.com/recon-at-scale/)

A list of options for ruby-nmap can be found [here](https://github.com/sophsec/ruby-nmap/blob/ad12f9d533ff3b5b3dc559922a8f19b4b9409f32/lib/nmap/task.rb)

#Features
<ul>
  <li>Templates for different types of nmap scans with timestamped output
  <li>Parsers to parse out the information you are looking for
</ul>

#Basic Usage

###Scanner
`ruby scanner-<scanner-name> targets.txt`

###Parser
`ruby parser-<parser-name> <report.xml>`
