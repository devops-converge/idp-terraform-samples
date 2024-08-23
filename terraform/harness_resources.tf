resource "harness_platform_pipeline" "pipeline" {
  identifier = "build_and_deploy"
  org_id     = "default"
  name = "idp-create-resource-pipeline"
  yaml = <<-EOT
    pipeline:
      name: Build and Deploy
      identifier: build_and_deploy
      projectIdentifier: testvictor
      orgIdentifier: default
      stages:
        - stage:
            name: idp
            identifier: idp
            description: ""
            type: IDP
            spec:
              platform:
                os: Linux
                arch: Amd64
              runtime:
                type: Cloud
                spec: {}
              execution:
                steps:
                  - step:
                      type: Run
                      name: Run_1
                      identifier: Run_1
                      description: test hello
                      spec:
                        shell: Sh
                        command: echo "Hello"
            tags: {}
  EOT
}
