# Vungle Nexus Credentials (legacy)
export VUNGLE_MAVEN_USERNAME="adrian.castillejos"
export VUNGLE_MAVEN_PASSWORD=";JB]i9N2XH4%mjUv9fbqs(WU"

# git branch in prompt.
parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
#export PS1=" > "
export PS1="\e[33m\\T\e[m Theseus \W\[\e[32m\]\$(parse_git_branch)\[\e[00m\] > "
export PATH="$PATH:/Users/adrian.castillejos/Library/Android/sdk/platform-tools/"
export PATH="~/bin:$PATH"
# ANDROID BUILD TOOLS
export PATH="/Users/adrian.castillejos/Library/Android/sdk/build-tools/25.0.2:$PATH"
# ANDROID SDK TOOLS
export PATH="/Users/adrian.castillejos/Library/Android/sdk/tools:$PATH"

# Vungle SDK logging
alias vunglecat='pidcat -t Vungle -t VungleDebug -t VungleDatabase  -t VungleNetwork  -t VungleAd -t VungleAsync -t VungleConfig -t VungleDumpDatabase -t VungleDevice -t VungleEvent -t VungleFile -t VungleInject -t VunlgeLocation -t VunglePrepare -t VungleProtocol -t VungleReport -t VungleData'

# Git Branch Name Completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# ADB Command to enable Vungle Logging on first ADB device
enableVungleLog(){
	adb shell setprop log.tag.Vungle VERBOSE
	adb shell setprop log.tag.VungleDebug VERBOSE
}
