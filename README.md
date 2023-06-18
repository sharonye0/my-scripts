## **buildAndDeploy**

This script is made for react projects that's got deployed with firebase
When you want to build and deploy you can use this script to build and deploy

### What will This script do?

-  first it's gonna check if the build project exists
-  if the build project do exists then delete it and build the project again
-  and if it doesn't exists just build the project
-  and finally run `firebase deploy` to deploy your website

## **gitCommitAll**

you can run this script inside any git repo.

it will work according to the flags that you will pass and the flags are:

| Flag | Description                                                                                                                                      |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| -h   | For help                                                                                                                                         |
| -a   | This flag is gonna run a function the will add and commit but you have to provide an argument with this flag which represents the commit message |
| -p   | if you invoke this flag your changes will be pushed to github                                                                                    |

### Usage Example

```shell
    ./gitCommitAll -a "this is my commit message" -p
```
