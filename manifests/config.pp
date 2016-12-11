class s_minecraft::config ($server_properties = '/opt/minecraft/server.properties') {

  file_line { 'online-mode':
    path  => $server_properties,
    match => '^online-mode=',
    line  => 'online-mode=false',
  }
  file_line { 'max-players':
    match => '^max-players=',
    path  => $server_properties,
    line  => 'max-players=15',
  }
  file_line { 'server-motd':
    match => '^motd=',
    path  => $server_properties,
    line  => 'motd=A minecraft server by Timatooth',
  }
  file_line { 'server-name':
    match => '^server-name=',
    path  => $server_properties,
    line  => 'server-name=WorldCraft Reborn',
  }
  file_line { 'view-distance':
    match => '^view-distance=',
    path  => $server_properties,
    line  => 'view-distance=20',
  }
}
