resource "harness_platform_pipeline" "pipeline" {
  identifier = "idp_create_resource_pipeline"
  org_id     = "default"
  name = "idp create resource pipeline"
  project_id = "testvictor"
  yaml = <<-EOT
    pipeline:
      name: idp create resource pipeline
      identifier: idp_create_resource_pipeline
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
                        command: aws s3api create-bucket --bucket test-victor-my-bucket --region us-east-1
            tags: {}
  EOT
}
