node default {
  class { "java": stage => pre }
  class { "firewall": stage => pre }
  class { "nginx": stage => main }
  class { "snmp": stage => main }
}