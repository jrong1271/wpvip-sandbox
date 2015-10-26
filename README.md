# wpvip-sandbox
Integrating Automattic/vip-quickstart development environment into my own workflow

## Requirement
Run the init command to install dependencies, like nodejs, vagrant, virtualbox...
```
sh init.sh
```
After running the above script, you are ready to start up the VM by running the following
```
cd _upstream/vip-quickstart
vagrant up
```
your site will be accessible via [vip.local](http://vip.local)

SSH into your vagrant box
```
cd _upstream/vip-quickstart
vagrant ssh
```

## Reference
[Wordpress VIP Development instruction](https://github.com/jrong1271/vip-quickstart)
