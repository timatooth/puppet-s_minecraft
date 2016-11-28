class s_minecraft::config ($server_properties = '/opt/minecraft/server.properties') {

  file_line { 'online-mode':
    path => $server_properties,
    line => 'online-mode=false',
  }
  file_line { 'max-players':
    path => $server_properties,
    line => 'max-players=15',
  }
  file_line { 'server-motd':
    path => $server_properties,
    line => 'motd=A minecraft server by Timatooth',
  }
  file_line { 'server-name':
    path => $server_properties,
    line => 'server-name=WorldCraft Reborn',
  }
  file_line { 'view-distance':
    path => $server_properties,
    line => 'view-distance=20',
  }
}
