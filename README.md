# mac-dev-setup

This script allow you to install all the tools you need for setting up your dev environnement on your brand new mac.

# Launch installation
```shell
curl https://raw.githubusercontent.com/thomaspoignant/mac-dev-setup/master/src/mac-dev-setup.sh | bash
```

# What does it install?

It will install all this tools:
- ## Homebrew
  The Missing Package Manager for macOS, Homebrew installs the stuff you need that Apple (or your Linux system) didn’t.

  After the installation you will be available to install almost everything you need for your mac. You can list installed packages with `brew list` and `brew cask list`.

  I recommend running brew doctor every now and then to make sure things are good and `brew cleanup` to remove unused files.
 
 ### Docker
    Should I present what `docker` is?

    To work with docker we will install the docker runtime and also the docker command line completion who help you to write docker command like a boss.
    - docker
    - docker command line completion

  ### Languages
  The main languages I am working with are Java and Go, but here are the main languages you always need, on projects.

  - **Java**  
    Install the last version of the `openJDK` JVM.  
    It also install `maven` and `gradle`.
  - **Go / Golang**  
    Install the last `go` version and set `GOPATH` into your shell profile file.

