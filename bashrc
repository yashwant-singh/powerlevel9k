export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"


export VS_HOME="/Applications/Visual Studio Code.app/Contents/Resources/app"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_221.jdk/Contents/Home/"
export PATH="/usr/local/Cellar/openssh/8.0p1_2/bin:$JAVA_HOME/bin:$HOME/bin:$PATH:$VS_HOME/bin"
export GROOVY_HOME="/Users/ykumar4/apps/groovy-2.5.7"


export M2_HOME="/Users/ykumar4/apps/build_tools/apache-maven-3.6.1"
export JBOSS_HOME="/Users/ykumar4/apps/server/jboss-eap-6.4"
export PATH="$M2_HOME/bin:$JBOSS_HOME/bin:$PATH:$GROOVY_HOME/bin"

export P4_HOME="/Users/ykumar4/apps/server/helix-core-server"
export PATH="$P4_HOME:$PATH"
#export MAVEN_OPTS=-Xms256m -Xmx512m

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Alias
alias mvn_test_d="mvn -Dmaven.surefire.debug test"
alias devmac="ssh devmac@devmac"

export PATH="/Users/ykumar4/Library/Python/3.7/bin:$PATH"

#for awscredentials

#alias getawskeys="eiamCli login; /Users/acheruvalath/eiamCli.sh"

export AWS_DEFAULT_REGION='us-west-2'

export AWS_DEFAULT_OUTPUT='table'

export AWS_PROFILE='prd'


