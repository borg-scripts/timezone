Q.then install, 'tzdata'
Q.then execute, "echo #{node.tz} | sudo tee /etc/timezone"
Q.then execute, 'sudo dpkg-reconfigure -f noninteractive tzdata'
