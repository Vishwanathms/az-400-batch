## Commonly Used Built-In Variables
### Pipeline Context Variables
* Build.BuildId: The ID of the record for the completed build.
* Build.BuildNumber: The name of the completed build.
* Build.DefinitionName: The name of the build pipeline.
* Build.Repository.Name: The name of the repository being built.
* Build.SourceBranch: The name of the branch that was built (e.g., refs/heads/main).
* Build.SourceBranchName: The name of the branch without the refs/heads/ prefix (e.g., main).
* Build.SourceVersion: The commit ID for the version of the source code that was built.
* Build.SourceVersionMessage: The commit message for the version of the source code that was built.
* Build.Reason: The reason why the build was triggered (e.g., Manual, IndividualCI, BatchedCI, Schedule, PullRequest, BuildCompletion, etc.).

### Job Context Variables
Agent.Name: The name of the agent running the job.
Agent.OS: The operating system of the agent (e.g., Windows_NT, Linux, Darwin).
Agent.OSArchitecture: The architecture of the agent machine (e.g., x86, x64).
Agent.ToolsDirectory: The directory on the agent where tools are installed.
Agent.WorkFolder: The working directory for the agent.

### Repository and Source Code Variables
Build.Repository.Clean: Whether to clean the repository before fetching.
Build.Repository.Provider: The type of repository (e.g., TfsGit, GitHub, Bitbucket).
Build.Repository.Uri: The URL of the repository being built.

### Pull Request Variables
System.PullRequest.IsFork: true if the build is for a pull request from a forked repository.
System.PullRequest.PullRequestId: The ID of the pull request.
System.PullRequest.SourceBranch: The source branch of the pull request.
System.PullRequest.TargetBranch: The target branch of the pull request.

### System Variables
System.TeamFoundationCollectionUri: The URL of the TFS or Azure DevOps collection.
System.TeamProject: The name of the project in Azure DevOps.
System.TeamProjectId: The ID of the project in Azure DevOps.

### Artifact and Drop Variables
Build.ArtifactStagingDirectory: The local path on the agent where artifacts are staged before they are published.
Build.BinariesDirectory: The directory where built binaries are placed.

### Environment Variables
System.AccessToken: The OAuth token for accessing the REST API. It's automatically generated for the job and is valid for the duration of the job.

## How to cal lthe inbuilt variables

```
    - task: Maven@3
      displayName: variables['Build.SourceBranch']
```

* Note: there is difference in calling the defined vairables and builtin variables.
