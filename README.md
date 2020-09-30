# awsnuke

## Synopsis

The `awsnuke` action is a Docker-based [GitHub Action](https://github.com/features/actions) which executes [aws-nuke](https://github.com/rebuy-de/aws-nuke) to clean up (or nuke) an entire AWS account (or group of accounts)

It can be used to cleanup after other actions, or can be run on a schedule, to restore your AWS account to a pristine state.

## Prerequisistes

Although not necessarily required, it is highly recommend to run this action after running the [Configure AWS Credentials](https://github.com/aws-actions/configure-aws-credentials) action

## Usage

This action is intended be run on the `ubuntu-latest` GitHub Action runner.  

For example, to run aws-nuke version 2.14.0 with a config file called `nuke.yml` in the root of your repository, you would use:

```yaml
steps:
 - uses: coinmama/awsnuke@v1
   with:
     aws_nuke_version: '2.14.0'
     aws_nuke_config: nuke.yml
```

## Inputs

| Input | Default Value | Description |
|-------|---------------|-------------|
| `aws_nuke_version` | '2.14.0' | The version of aws-nuke to execute. |
| `aws_nuke_config` | None | The path of a configuration file to pass to aws-nuke, relative to the root of your Git repository. |

## Bugs
For bugs in aws-nuke, please report them to the [aws-nuke issue tracker](https://github.com/rebuy-de/aws-nuke/issues).

## License

Copyright 2020 Issac Goldstand <issac@coinmama.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.