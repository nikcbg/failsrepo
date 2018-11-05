#Detailed description of the steps what is already done.

1.New repo created

2.README.md updated

3.DETAILED created 

4.test.sh created

```
#!/usr/bin/env bash

out=$(bash ./hello.sh)

# we should check out == hello
if [ "${out}" == "hello" ];then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi
```

5.fail.sh created

```
echo fail
```

6..travis.yml created
```
language: generic
dist: xenial
sudo: required
script:
- bash test.sh
```
7.Vagrant file created

```
Vagrant.configure("2") do |config|
  config.vm.provision "shell",
    inline: "echo Hello, World"
end
```


