local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/apache';

[
  pipeline.build(name, 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'arm64v8'),
  pipeline.manifest('latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest']),
]
