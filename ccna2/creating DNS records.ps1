# creating important zone

add-DnsServerResourceRecord -zonename ngcp21.com -A -name ns -ipv4address 10.21.1.10
add-DnsServerResourceRecord -zonename ngcp21.com -A -name "." -ipv4address 10.21.1.10
#
add-DnsServerResourceRecord -zonename ngcp21.com -Cname -name www -hostname ns.ngcp21.com
add-DnsServerResourceRecord -zonename ngcp21.com -Cname -name pop -hostname ns.ngcp21.com
add-DnsServerResourceRecord -zonename ngcp21.com -Cname -name imap -hostname ns.ngcp21.com
add-DnsServerResourceRecord -zonename ngcp21.com -Cname -name smtp -hostname ns.ngcp21.com
#
Add-DnsServerResourceRecordMX -Preference 10  -Name "." -MailExchange "ns.ngcp21.com" -ZoneName "ngcp21.com"