#Detailed description of the steps what is already done.

1.New repo created

2.README.md updated with what is the purpose of the repository. 

3.DETAILED.md created with tasks have been done.

4.test.sh created - script that test if fail.sh script pass or fails.

```
#!/usr/bin/env bash

out=$(bash ./fail.sh)

# we should check out == hello
if [ "${out}" == "exit" ];then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi
```

5.fail.sh created - script that displays exit 1

```
echo exit 1
```

6. .travis.yml
```
language: generic
dist: xenial
sudo: required
script:
 exit 1
```
7.Vagrant file created

```
Vagrant.configure("2") do |config|
   config.vm.box = "nikcbg/xenial64"
   config.vm.provision :shell, path: "test.sh"
end
```


