# automatically source nvm script upon login
export NVM_DIR="$HOME/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH=$HOME/.local/bin:$PATH

# Environment variable for Synopsys
export DVE_HOME=/home/ethan/opt/Synopsys/vcs-mx_vl-2016.06/gui/dve
export VCS_HOME=/home/ethan/opt/Synopsys/vcs-mx_vl-2016.06
export VERDI_HOME=/home/ethan/opt/Synopsys/verdi3_l-2016.06

export VCS_ARCH_OVERRIDE=linux
export LM_LICENSE_FILE=27000@ubuntuvm

alias lmg_synopsys="/home/ethan/opt/Synopsys/scl11.9/amd64/bin/lmgrd -c /home/ethan/opt/Synopsys/scl11.9/license/Synopsys.dat"

export PATH=$DVE_HOME/bin:$VCS_HOME/bin:$VERDI_HOME/bin:$PATH
