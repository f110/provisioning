#!/bin/sh
curl -L https://www.opscode.com/chef/install.sh | sudo bash

echo 'export PATH="/opt/chef/embedded/bin:$PATH"' >> /etc/profile
source /etc/profile
