module.exports = ->
  @then @log "Setting time zone"
  @then @install 'tzdata'
  @then @execute "echo #{@server.tz} | sudo tee /etc/timezone >/dev/null"
  @then @execute 'sudo dpkg-reconfigure -f noninteractive tzdata'
