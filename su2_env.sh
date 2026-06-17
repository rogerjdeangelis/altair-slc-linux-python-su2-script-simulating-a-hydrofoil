#!/bin/bash
# Create SU2 environment file using echo commands (variable not available yet)
echo 'export SU2_HOME="$HOME/SU2"' > ~/su2_channel_flow/su2_env.sh
echo 'export SU2_RUN="$HOME/SU2_install/bin"' >> ~/su2_channel_flow/su2_env.sh
echo 'export PATH="$SU2_RUN:$PATH"' >> ~/su2_channel_flow/su2_env.sh
echo 'export PYTHONPATH="$SU2_RUN:$PYTHONPATH"' >> ~/su2_channel_flow/su2_env.sh
chmod +x ~/su2_channel_flow/su2_env.sh
echo "SU2 environment file created at ~/su2_channel_flow/su2_env.sh"
