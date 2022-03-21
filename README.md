# Ruby-recon

* A recon tool written in Ruby(collection of scanners and parsers)
* This tool was created with [ruby-nmap](https://github.com/sophsec/ruby-nmap) to automate the process of scanning with Nmap and parsing out results.
* A list of options for ruby-nmap can be found [here](https://github.com/sophsec/ruby-nmap/blob/ad12f9d533ff3b5b3dc559922a8f19b4b9409f32/lib/nmap/task.rb)

[![Ruby](https://img.shields.io/badge/ruby-3+-9b111e?logo=ruby)](https://twitter.com/sneakerhax) [![Twitter](https://img.shields.io/badge/twitter-sneakerhax-38A1F3?logo=twitter)](https://twitter.com/sneakerhax)

## Features
<ul>
  <li>Templates for different scans with timestamped output
  <li>Parsers for parsing out specific information
  <li>Ability to scan and search for exploits</li>
</ul>

## Requirements

`
gem install ruby-nmap
`

## Basic Usage

### Scanner:
`ruby <scanner-name> targets.txt`

### Parser:
`ruby <parser-name> <report.xml>`

## Example Output

Simple Parser output example:

```
$ruby parser-template.rb ../reports/<report>

[sneakerhax.com][198.54.116.174]
  [80/tcp]
    [http-robots.txt]
      * 1 disallowed entry
      * /wp-admin/
    [http-server-header]
      * nginx/1.10.1
    [http-title]
      * Sneakerhax | Hacking in sneakers
```

Scanner output example:

```
$ruby exploit-search.rb targets.txt

############################
#        Ruby-recon        #
############################

Report name: ../reports/nmapscan_2017-02-02-00:45:18.xml

Starting Nmap 7.40 ( https://nmap.org ) at 2017-02-02 00:45 PST
NSE: Loaded 41 scripts for scanning.
NSE: Script Pre-scanning.
Initiating NSE at 00:45
Completed NSE at 00:45, 0.00s elapsed
Initiating NSE at 00:45
Completed NSE at 00:45, 0.00s elapsed
Initiating Ping Scan at 00:45
Scanning 192.168.1.1 [4 ports]
Completed Ping Scan at 00:45, 0.05s elapsed (1 total hosts)
Initiating Parallel DNS resolution of 1 host. at 00:45
Completed Parallel DNS resolution of 1 host. at 00:45, 0.01s elapsed
Initiating SYN Stealth Scan at 00:45
Scanning router.asus.com (192.168.1.1) [65534 ports]
Discovered open port 53/tcp on 192.168.1.1
Discovered open port 3394/tcp on 192.168.1.1
RTTVAR has grown to over 2.3 seconds, decreasing to 2.0
RTTVAR has grown to over 2.3 seconds, decreasing to 2.0
Discovered open port 4443/tcp on 192.168.1.1
Discovered open port 18017/tcp on 192.168.1.1
Discovered open port 5473/tcp on 192.168.1.1
Discovered open port 50764/tcp on 192.168.1.1
Completed SYN Stealth Scan at 00:45, 35.16s elapsed (65534 total ports)
Initiating Service scan at 00:45
Scanning 6 services on router.asus.com (192.168.1.1)
Completed Service scan at 00:48, 141.28s elapsed (6 services on 1 host)
NSE: Script scanning 192.168.1.1.
Initiating NSE at 00:48
Completed NSE at 00:48, 20.12s elapsed
Initiating NSE at 00:48
Completed NSE at 00:48, 1.01s elapsed
Nmap scan report for router.asus.com (192.168.1.1)
Host is up (0.041s latency).
Not shown: 65528 closed ports
PORT      STATE SERVICE        VERSION
53/tcp    open  domain         dnsmasq 2.72test3
3394/tcp  open  d2k-tapestry2?
4443/tcp  open  ssl/http       Asus RT-AC53U WAP http config
5473/tcp  open  apsolab-tags?
18017/tcp open  http           Asus wanduck WAN monitor httpd
|_http-server-header: wanduck
50764/tcp open  upnp           MiniUPnP 1.4 (Asus; UPnP 1.0)
Service Info: Devices: WAP, broadband router; CPE: cpe:/h:asus:rt-ac53u

NSE: Script Post-scanning.
Initiating NSE at 00:48
Completed NSE at 00:48, 0.00s elapsed
Initiating NSE at 00:48
Completed NSE at 00:48, 0.00s elapsed
Read data files from: /usr/bin/../share/nmap
Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 198.05 seconds
           Raw packets sent: 66845 (2.941MB) | Rcvd: 66842 (2.674MB)

################################
#    Searching for exploits    #
################################

Running: searchsploit --nmap ../reports/nmapscan_2017-02-02-00:45:18.xml
[i] SearchSploit's XML mode (without verbose enabled)
[i] Reading: '../reports/nmapscan_2017-02-02-00:45:18.xml'

[i] /usr/bin/searchsploit -t dnsmasq 2 72test3
[i] /usr/bin/searchsploit -t d2k tapestry2
[i] /usr/bin/searchsploit -t asus rt ac53u wap http config
[i] /usr/bin/searchsploit -t apsolab tags
[i] /usr/bin/searchsploit -t asus wanduck wan monitor httpd
[i] /usr/bin/searchsploit -t miniupnp 1 4
--------------------------------------------------------------------------------------------------------- ----------------------------------
 Exploit Title                                                                                           |  Path
                                                                                                         | (/usr/share/exploitdb/platforms)
--------------------------------------------------------------------------------------------------------- ----------------------------------
MiniUPnP 1.4 - Multiple Denial of Service Vulnerabilities                                                | /multiple/dos/38249.txt
--------------------------------------------------------------------------------------------------------- ----------------------------------
```
