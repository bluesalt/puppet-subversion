# Public: Install Subversion from homebrew.
#
# Examples
#
#   include subversion

class subversion{
  require homebrew

  homebrew::formula { 'subversion':
    before => Package['boxen/brews/subversion'],
  }

  package { 'boxen/brews/subversion':
    ensure => '1.7.8-boxen1',
  }
}
