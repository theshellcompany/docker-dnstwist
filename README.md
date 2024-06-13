# docker-dnstwist
Dockerized version of dnstwist. Dnstwist is a tool for DNS fuzzing. The idea is that you run it against domains for detecting potential typosquatters, phishing attacks, fraud, etc.

## Building the Docker image

```shell
sudo docker build -t dnstwist .
```

## Using dnstwist

```shell
sudo docker run --rm -it dnstwist -a --registered <target.domain>
```

It outputs a lists of domains that are the result of fuzzing. This list is for you to evaluate and not necessarily malicious.

Example:
```shell
sudo docker run --rm -it dnstwist -a --registered theshell.company
Password:
     _           _            _     _
  __| |_ __  ___| |___      _(_)___| |_
 / _` | '_ \/ __| __\ \ /\ / / / __| __|
| (_| | | | \__ \ |_ \ V  V /| \__ \ |_
 \__,_|_| |_|___/\__| \_/\_/ |_|___/\__| {20240116}

started 20 scanner threads
permutations: 100.00% of 3808 | found: 2 | eta: 0m 00s | speed: 706 qps

*original  theshell.company   190.180.145.7 2604:9780:1234:700:1::302 NS:ns1.hostpapa.com;ns2.hostpapa.com MX:theshell.company
subdomain  theshe.ll.company  75.126.104.245
```

# Documentation

* https://github.com/elceef/dnstwist
