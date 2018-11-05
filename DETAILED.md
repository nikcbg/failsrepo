#Detailed description of the steps how tasks are done.

1.New repo created with README.md and MIT license.

2.README.md updated with what is the purpose of the repository. 

3.DETAILED.md created with tasks how they've been done.

4.Create new branch and then cretae new file test.sh(script that test if fail.sh script pass or fails)

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

4a. Add newly created file and then commit changes.

4b. Push changes to Github, create PR and Merge changes. 

5.Create new branch and then create new file fail.sh(script that displays exit 1)

```
echo exit 1
```
5a.Add newly created file and then commit changes.

5b.Push changes to Github, create PR and Merge changes. 

6.Create new branch and then crete new file .travis.yml(script for continuous integration)
```
language: generic
dist: xenial
sudo: required
script:
 exit 1
```

6a.Add newly created file and then commit changes.

6b.Push changes to Github, create PR and Merge changes. 


7.Create new branch and then cretae new file Vagrant
```
Vagrant.configure("2") do |config|
   config.vm.box = "nikcbg/xenial64"
   config.vm.provision :shell, path: "test.sh"
end
```

7a.Add newly created file and then commit changes.

7b.Push changes to Github, create PR and Merge changes. 

8. Test repo in tarvis to check if it passes or fails. 

