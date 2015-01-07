name             'rsc_java'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures rsc_java'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'rsc_java::default', 'Configure Java overrides'

attribute 'rsc_java/install_flavor',
  :description => 'Version of Java to be installed',
  :display     => 'rsc_java/install_flavor',
  :recipes     => ['rsc_java::default'],
  :type        => 'array',
  :choice      => ['oracle','oracle_rpm','openjdk','ibm','windows'],
  :default     => 'openjdk',
  :required    => 'required'

attribute 'rsc_java/jdk_version',
  :description => 'JDK version to install',
  :display     => 'rsc_java/jdk_version',
  :recipes     => ['rsc_java::default'],
  :type        => 'string',
  :default     => '6',
  :required    => 'recommended'

attribute 'rsc_java/oracle/accept_oracle_download_terms',
  :description => 'Do you agree to the Oracle download Terms of Service?',
  :display     => 'rsc_java/oracle/accept_oracle_download_terms',
  :recipes     => ['rsc_java::default'],
  :type        => 'array',
  :choice      => ['true', 'false'],
  :required    => 'required'
