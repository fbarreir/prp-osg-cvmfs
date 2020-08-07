In order to test the Frontier service follow instructions in: https://twiki.cern.ch/twiki/bin/view/Frontier/InstallSquid

```
export http_proxy=http://<YOUR FRONTIER IP/HOSTNAME>:3128
./usr/local/bin/fnget.py --url=http://cmsfrontier.cern.ch:8000/FrontierProd/Frontier --sql="select 1 from dual"
```