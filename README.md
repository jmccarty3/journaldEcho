# journaldEcho
Simple container to pipe journald entries to stdout through the systemd-journald-gateway

## Usage
###Default Usage 
`docker run jmccarty3/journaldecho` 

Will attempt to connect to the systemd-journal-gatewayd socket through the docker bridge and follow all entries

###Advanced Usage
`docker run jmccarty3/journaldecho "follow | grep -v \"dockerd\\\[\""`

Will follow all entries from journald except those that match "dockerd[". This method can be used to filter out any unwanted
services or data from stdout.
