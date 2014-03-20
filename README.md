Overriding server.xml in tomcat6-maven-plugin
=============================================

I've occasionally had to override the server.xml in the tomcat6-plugin to
specify global resources, add Valves and specify additional Contexts for
resources.

I've been unable to find good examples of how to do this, so I've documented 
some of use cases here.

The main problem is loading the project webapp in the new server.xml
configuration. I've used a VirtualWebappLoader in the Context configuration
for the webapp, with the classpath set to the Maven runtime classpath.

(Unfortunately the VirtualWebappLoader uses semi-colons as path separators, so
won't work correctly on non-Windows platforms. I've add some Ant scripting to
switch Unix separators with semi-colons.)
