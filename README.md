# Logshark for MacOS (Now also for Apple M1 chip!)
This project is meant to bring Logshark to MacOS in a few easy steps that everyone can follow.

After setting up you have:
- Used almost no command line to set this up
- One input directory to put your Tableau logs
- One button to process your logs
- One output directory that contains Tableau workbooks with nice visualiztions of your logfiles:

![SampleScreenshot](https://user-images.githubusercontent.com/6339819/151360920-1f4044ad-6560-43e0-a360-cf2a5bf29f7d.png)


## Prerequisites 
This section explains how to set up Git and Docker, if you do not have it installed already.

- Git will be used to download the most recent version of the Logshark application and the files within this project
- The application will be run as a Docker container

### Git
1. Open up a terminal and try to execute the following command:
```
git
```
If you already have it installed, you should see output like this:
```
(base) ➜  ~ git                                                         
usage: git [--version] [--help] [-C <path>] [-c <name>=<value>]
           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]
           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]
           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]
           [--super-prefix=<path>] [--config-env=<name>=<envvar>]
           <command> [<args>]
```
2. If you don't have it installed, you wil be prompted to install developer tools.

3. Install the developer tools, so git and other command line tools are installed.

<b>NOTE:</b> This can take a while to install.

In the meantime you can proceed installing Docker

### Docker
1. Go to https://docs.docker.com/desktop/mac/install/ to download the appropriate installer (Intel/Apple chip)<img width="1019" alt="Screen Shot 2022-01-27 at 09 51 51" src="https://user-images.githubusercontent.com/6339819/151333114-804d4d65-cfa2-4189-af1a-a03ee4491d0d.png">

2. Install the application
<img width="722" alt="Screen Shot 2022-01-27 at 10 42 55" src="https://user-images.githubusercontent.com/6339819/151333591-f1eb984f-d333-4dda-b7c4-d4b6eb0b4eb8.png">

3. Make sure docker is running by checking if this icon is present:
<img width="395" alt="Screen Shot 2022-01-24 at 15 10 46" src="https://user-images.githubusercontent.com/6339819/150816789-20b8c7f3-52cf-4097-803d-470576bba8cc.png">

<b>NOTE:</b> Docker does not run on startup and is required for Logshark.
You can set it to run on startup in the General settings

## Setting up

1. Open terminal:

The default install location will be: <b>/home/yourusername/logshark</b>

2. <b>Optional:</b>If you want to change the installation location, go to the alternative directory using "cd":

```
  cd /home/yourusername/Documents
```
3. Now you are ready to copy the required files from this repository:
```
git clone https://github.com/dylanwijman/logshark.git
```
4. Open Finder and go to you install location (/home/yourusername/logshark) 
The directory should look like this:
<img width="590" alt="Screen Shot 2022-01-27 at 10 49 24" src="https://user-images.githubusercontent.com/6339819/151334671-c74977c2-41dc-4926-ba84-d995e1535ae4.png">

5. Run <b>setup.command</b> by double clicking it. (or <b>setup_AppleM1.command</b>, if you have a M1 Processor)

This will:
- Create input, output and log directories
- Make a copy of the official Logshark repository (https://github.com/tableau/Logshark)
- Build the application that processes your Tableau (server) log files

Result:

<img width="917" alt="Screen Shot 2022-01-27 at 10 51 40" src="https://user-images.githubusercontent.com/6339819/151334970-d8976a4d-fe14-4b79-8d18-92f6b9952c1c.png">

The terminal window can be closed after running

## Running Logshark
1. Get the zipped log files from your Tableau Server or Tableau Desktop using the command:

```
tsm maintenance ziplogs
```
Reference:
https://help.tableau.com/current/server/en-us/cli_maintenance_tsm.htm#tsm4ziplogs

2. Put the .zip file(s) in the input folder of Logshark (they will be moved to the input/archive folder afterwards)
<img width="226" alt="Screen Shot 2022-01-27 at 11 41 23" src="https://user-images.githubusercontent.com/6339819/151343161-30737d5c-2475-47f3-8b5d-7c88aa86112b.png">
3. Double-click the <b>RUN.command file</b> to analyze the logfiles. (or <b>RUN_AppleM1.command</b>, if you have a M1 Processor)

The terminal will open and process the logs.


4. Find the analyzed files in the <b>output</b> directory and check them out in Tableau:

<img width="1017" alt="Screen Shot 2022-01-27 at 11 46 26" src="https://user-images.githubusercontent.com/6339819/151343989-257b2375-02dd-4c0f-8ec8-497bac0abaf2.png">


## Hints for using Logshark:
- Default location of the input directory is: <b>/home/yourusername/logshark/input/ </b>
- For Tableau Desktop: The .zip file should be a compressed version of this folder: <b>/Users/yourusername/Documents/My Tableau Repository/Logs</b>
- Default location of the output directory is: <b>/home/yourusername/logshark/output/ </b>
