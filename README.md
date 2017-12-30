# Set of bazel rules to build app images based on a base image

## Requirements

Install bazel build tool: https://docs.bazel.build/versions/master/install.html 

## Node 6.10.2

To build an image:

bazel build //node6.10.2:node_image

To push an image:

bazel run //node6.10.2:push_node_image

@TODO - parameterization


## Liberty

@wip

