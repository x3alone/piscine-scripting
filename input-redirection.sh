#!/usr/bin/env bash

cat > show-info.sh <<'EOF'

#!/usr/bin/env bash

cat -e <<EOT
The current directory is: $PWD
The default paths are: $PATH
The current user is: $USERNAME
EOT
EOF

chmod +x show-info.sh