node default {
  class { "java": stage => pre }
  class { "firewall": stage => pre }
  class { "nginx": stage => main }
  class { "snmpd": stage => main }
}