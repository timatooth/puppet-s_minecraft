class s_minecraft {
  class { 'minecraft':
    source     => 'http://tcpr.ca/files/spigot/spigot-1.10.2-R0.1-SNAPSHOT-latest.jar',
    heap_size  => 1024,
    difficulty => 2,
    motd       => 'A minecraft server... Again.',
    ops        => ['Timatooth', 'Azza292'],
  }

  minecraft::plugin { 'WorldEdit':
    source => 'http://builds.enginehub.org/job/worldedit/9404/download/worldedit-bukkit-6.1.5-SNAPSHOT-dist.jar'
  }
  
  minecraft::plugin { 'EssentialsX-2.0.1.jar':
    source => 'https://ci.drtshock.net/job/essentialsx/lastSuccessfulBuild/artifact/Essentials/target/EssentialsX-2.0.1.jar'
  }
  
  minecraft::plugin { 'EssentialsXSpawn-2.0.1.jar':
    source => 'https://ci.drtshock.net/job/essentialsx/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsXSpawn-2.0.1.jar'
  }

}
