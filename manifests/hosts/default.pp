node default {
  class { "java": stage => pre }
  class { "nginx": stage => main }
}