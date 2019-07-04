# update-ipset

Docker image to download and update most recent FireHOL IP list 
and expose it through the filesystem.

Usage
-----

First, lets download and start a update-ipset container.
By entering the following command, permanent periodic update process will be created.

```
$ docker run \
  --name update-ipset \
  -it -d --restart=always --net=host \
  -v /tmp/update-ipset:/etc/firehol/ipsets \
  # -v /etc/desired_ipset_lists:/etc/desired_ipset_lists \ # This is an ideia to ease the process of enabling the ip lists.
  update-ipset
```

Then, lets enable the ipset.

```
$ docker exec update-ipset enable firehol_level2
$ docker exec update-ipset enable tor_exits
```