class s_minecraft {
  class { 'minecraft':
    source     => 'http://tcpr.ca/files/spigot/spigot-1.11-R0.1-SNAPSHOT-latest.jar',
    heap_size  => 1024,
    difficulty => 2,
    motd       => 'A minecraft server by Timatooth + Azza292... Again.',
    ops        => ['Timatooth', 'Azza292'],
  }

  minecraft::plugin { 'WorldEdit':
    source => 'http://builds.enginehub.org/job/worldedit/9404/download/worldedit-bukkit-6.1.5-SNAPSHOT-dist.jar'
  }

  minecraft::plugin { 'EssentialsX-2.0.1':
    source => 'https://ci.drtshock.net/job/essentialsx/lastSuccessfulBuild/artifact/Essentials/target/EssentialsX-2.0.1.jar'
  }

  minecraft::plugin { 'EssentialsXSpawn-2.0.1':
    source => 'https://ci.drtshock.net/job/essentialsx/lastSuccessfulBuild/artifact/EssentialsSpawn/target/EssentialsXSpawn-2.0.1.jar'
  }

  minecraft::plugin { 'AuthMe':
    source => 'https://s3-ap-southeast-2.amazonaws.com/timatooth/mc/plugins/AuthMe-5.2-SNAPSHOT-spigot.jar'
  }

  # minecraft::plugin { 'Vault':
  #   source => 'https://dev.bukkit.org/media/files/894/359/Vault.jar'
  # }

  minecraft::plugin { 'terraincontrol-bukkit-2.8.2-SNAPSHOT':
    source => 'http://build.mctcp.com/job/TerrainControl%20-%20Master%20-%20Gradle/default/lastSuccessfulBuild/artifact/platforms/bukkit/build/distributions/terraincontrol-bukkit-2.8.2-SNAPSHOT.jar'
  }

  include ::s_mincraft::config
}
