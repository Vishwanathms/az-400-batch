## How to define pool specific to the job or steps

```
jobs:
- job: "linux-commands"
  pool:
    name: linux-vm
```

* Learning:
  * we can assign the pool to jobs
  * we can assign the pool to inidividual tasks or script in the steps
  * if the job and steps does not have any pool assigned , it would take the default pool configured at the global level of the yaml file

  * Conditions:
    *  succeeded(): Returns true if the preceding steps or jobs were successful.
    *  failed(): Returns true if the preceding steps or jobs failed.
    *  eq(variables['Build.SourceBranch'], 'refs/heads/branchname'): Checks if the current branch matches a specific branch.
    *  and(condition1, condition2): Combines conditions, all of which must be true for the step to run.
    *  or(condition1, condition2): Combines conditions, any of which being true allows the step to run.