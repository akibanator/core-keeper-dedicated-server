# Core Keeper Dedicated Server

This is the Linux dedicated server for Core Keeper version 0.6.0.3.

## How to run

You can start the server via the Steam, but the server can also be started without the Steam client.

You can use SteamCMD to download the server files without requiring a login:
steamcmd +login anonymous +app_update 1007 +app_update 1963720 +quit

The _launch.sh bash script can be used to start the server, or you can start the CoreKeeperServer application directly.  Note that apart from the parameters listed in the Configuration section, you need the -batchmode parameter (NOT -nographics since part of the procedural generation is done on the GPU). Currently the -batchmode argument doesn't seem to work on Linux, but since we are running via Xvfb anyway to allow the server to run on a headless machine it doesn't matter much. See the _launch.sh script for reference.

A GameID.txt file will be created next to the executable containing the Game ID. If it doesn't appear you can check the log in the same location named CoreKeeperServerLog.txt for errors.

## Configuration

These are the arguments you can use to customize server behaviour with default values. They can also be found and changed in the ServerConfig.json file together with the other save files.

-world 0                                Which world index to use.
-worldname "Core Keeper Server"         The name to use for the server.
-worldseed 0                            The seed to use for a new world. Set to 0 to generate random seed.
-gameid ""                              Game ID to use for the server. Needs to be at least 28 characters and alphanumeric, excluding Y,y,x,0,O. Empty or not valid means a new ID will be generated at start.
-datapath ""                            Save file location. If not set it defaults to a subfolder named "DedicatedServer" at the default Core Keeper save location.
-maxplayers 100                         Maximum number of players that will be allowed to connect to server.
-worldmode 0                            Whether to use normal (0) or hard (1) mode for world.
-port <unset>                           What port to bind to. If not set, then the server will use the Steam relay network. If set the clients will connect to the server directly and the port needs to be open.
-ip 0.0.0.0                             Only used if port is set. Sets the address that the server will bind to.

