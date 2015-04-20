rsc_java Cookbook
=================
Provides an interface to install JAVA using inputs for the RightScale ServerTemplets.   


### Requirements
* java cookbook - https://github.com/agileorbit-cookbooks/java

### Attributes
* rsc_java/install_flavor - flavor of java to install.  see java cookbook for available flavors
* rsc_java/jdk_version - 6,7,8 etc
* rsc_java/oracle/accept_oracle_download_terms - true or false.  


### Usage
Add the recipe to your run list, or include it in another recipe.
