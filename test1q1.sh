#!/bin/bash
checklinuxpresent() {
    if [ -f /etc/os-release ]; then
        source /etc/os-release
        echo "Linux distribution:$NAME"
    else
        echo "Unknown Linux distribution"
    fi
}

httpinstalled_not() {
    if command -v httpd &>/dev/null; then
        echo "httpd is installed."
        return 0
    else
        echo "httpd is not installed."
        return 1 
    fi
}
 
 installhttpd() {
    echo "Installing httpd on  Linux..."
    sudo yum update
    sudo yum install -y httpd
}


status() {
    if systemctl is-active --quiet httpd; then
        echo "httpd is already running."
    else
        echo "Starting httpd..."
        sudo systemctl start httpd
    fi
}

checklinuxpresent

 if httpinstalled_not; then
    status
else
    if [[ "$NAME" == "Amazon Linux" ]]; then
        installhttpd
	else
        echo "Unsupported Linux distribution. "
        exit 1
    fi
    status
fi


   