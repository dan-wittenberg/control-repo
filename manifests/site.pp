## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
#https://docs.puppet.com/pe/2015.3/release_notes.html#filebucket-resource-no-longer-created-by-default
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }

  # I make the assumption that a trusted classification should be first
  $role = lookup('role', Variant[Array[String], String], 'first', 'undefined')

  if($trusted['extensions']['pp_role']) {
    $pe_role = regsubst($trusted['extensions']['pp_role'],'role::','')
    if($pe_role == $trusted['extensions']['pp_role']) {
      include "::role::${trusted['extensions']['pp_role']}"
    } else {
      include $trusted['extensions']['pp_role']
    }
  } elsif ($role != 'undefined') {
    $pe_role = 'undefined'
    include $role
  } else {
    $pe_role = 'undefined'
    #notify { 'No role defined!': }
    # You could also define something generic here too
  }

}


