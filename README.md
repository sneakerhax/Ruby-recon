# Ruby-recon
* A recon tool(collection of scanners and parsers)

* This tool was created with [ruby-nmap](https://github.com/sophsec/ruby-nmap) to automate the process of scanning with Nmap and parsing out results.

* More information can be found [here](http://sneakerhax.com/recon-at-scale/)

* A list of options for ruby-nmap can be found [here](https://github.com/sophsec/ruby-nmap/blob/ad12f9d533ff3b5b3dc559922a8f19b4b9409f32/lib/nmap/task.rb)

# Features
<ul>
  <li>Templates for different types of Nmap scans with timestamped output
  <li>Parsers for parsing out specific information
</ul>

# Basic Usage

### Scanner:
`ruby <scanner-name> targets.txt`

### Parser:
`ruby <parser-name> <report.xml>`

### Example output:
```
[sneakerhax.com][66.147.244.61]
  [80/tcp]
    [http-robots.txt]
      * 1 disallowed entry
      * /wp-admin/
    [http-server-header]
      * nginx/1.10.1
    [http-title]
      * Sneakerhax | Hacking in sneakers
```
