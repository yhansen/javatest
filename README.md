# javatest
testing to push/pull a java-application with github and dockerhub

______ Following, the progress will be described

26.09.2016

15:33 ->
- the connection between dockerhub and github is equipped
- a repository on github is made
- i am able to choose the wished repository after i started to create an automated build
- the connection works and the repository is created on dockerhub
- now, i want to build it one time successfully
- i choose the type "Branch" as it stands in the tutorial, i stay with the default name and Dockertag latest, also i give the path of the Dockerfile Location on the server
- Trigger is pushed and after 2 minutes of waiting i get the following error "Build failed: please ensure the remote branch exists (128)"
- i changed the location of the dockerfile on my server, logged on dockerhub on my server, pinged my server, changed the name of the image/build on my server
- i also edited several options on docker.io but nothing seems to work
- i guess, that i have to edit the "branch" somehow or choose the type "tag".

15:47
- do you have any ideas merly?
- in my opinion, something with the git-installation on the server itself went wrong. 

15:55 
- i reinstalled git on the server but didnt actually remove the database behind it. still no progress yet

16:42
-> after writing the list above, i found out that my dockerserver istn able to create a new branch. due to the error-report, i 
believe that this is a good starting point for the bugfixing.
- while trying to create a branch in a git-directory, i get the error :
"
[root@gs3-dkr-infra javatest]# git branch master
fatal: Not a valid object name: 'master'.
[root@gs3-dkr-infra javatest]# git checkout master
error: pathspec 'master' did not match any file(s) known to git.
[root@gs3-dkr-infra javatest]#
"
______________________________
SOLUTION OF FIRST ISSUE -> 

17:13
- i created an README for my githubproject and now i recieve another mistake (i guess, the implementation of one file created the remotebranch in my github repository)
- before i created the README, i rebuilded the image from the correct direction and ran it
- now my mistake is "Build failed: Build path does not exist: ./tmp/javatest"
- i will try to put this Dockerbuild-File into another DIR on my server and retrigger the build
- this didnt work, i will conitnue trying to figure out what speciffically went wrong on friday again

________________________________________________________________________
30.09.2016

09:00
- i tried to create first a java-hello-world docker image and second a casual docker image - both did not work
- i looked up some issues due to rights in some directories, but it doesnt had any impact on my current situation
- i rewrote a DockerBuild file to test if the issue lies in my code of former written files
- after some unsuccessfull reasearch, i decided to softly reboot the whole server
- while waiting for the reboot, i tried to improve the Docker_Implementaion.doc to make easier understandable how it works

09:40
- i asked Jan to hardly reboot the 172.16.30.26 due to not coming up again in former soft reboot process
- meanwhile i was searching for some issues, that could cause my problem with building docker images on my centos




last Edit: 30.09.2016 by
Yannic Hansen
