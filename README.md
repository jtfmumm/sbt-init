# sbt-init

This project creates a standard sbt directory structure and creates a build.sbt file based on a template.  

If you want to use your own template, fork this project and update build.sbt.template.  Change the curl address in sbt-init.sh to match the raw GitHub address of your new template.

## Usage

Place sbt-init.sh in your $PATH.

Call 

```bash
sbt-init PROJECT-NAME GITHUB-ID
```

to create a directory called PROJECT-NAME with a complete sbt project directory structure and a build.sbt file with PROJECT-NAME and GITHUB-ID in the appropriate places.
