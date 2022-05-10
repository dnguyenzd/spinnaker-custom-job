local deployment = {
  kind: 'Deployment',
  apiVersion: 'apps/v1',
  metadata: {
      name: 'test-deployment',
      namespace: 'dovetail-sandbox'
  },
  spec: {
      replicas: 1,
      selector: {
          matchLabels: {
              name: 'test-deployment'
          },
      },
    template: {
        metadata: {
            name: 'test-deployment',
            labels: {
                name: 'test-deployment'
            },
        },
        spec: {
            containers: [
                {
                    image: 'nginx',
                    name: 'nginx',
                },
            ],
        },
    },
  },
};

std.manifestYamlStream([deployment])
