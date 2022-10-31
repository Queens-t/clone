module.exports = {
  /**
   * Application configuration section
   * http://pm2.keymetrics.io/docs/usage/application-declaration/
   */
  apps: [
    {
      'name': 'loopback-core-template',
      'script': './server/server.js',
      'watch': ['server', 'common'],
      'ignore_watch': ['node_modules', 'test', 'reports'],
      'watch_options': {
        'usePolling': true,
        'persistent': true,
        'ignoreInitial': true,
      },
      'env_dev': {
        COMMON_VARIABLE: 'true',
        NODE_ENV: 'dev',
      },
      'env_staging': {
        NODE_ENV: 'staging',
      },
      'env_production': {
        NODE_ENV: 'production',
      },
    },
  ],

  /**
   * Deployment section
   * http://pm2.keymetrics.io/docs/usage/deployment/
   */
  deploy: {
    production: {
      'user': '',
      'host': '',
      'ref': '',
      'repo': '',
      'path': '',
      'post-deploy': '',
      'env': {
        NODE_ENV: 'production',
      },
    },
    staging: {
      'user': '',
      'host': '',
      'ref': '',
      'repo': '',
      'path': '',
      'post-deploy': '',
      'env': {
        NODE_ENV: 'staging',
      },
    },
    dev: {
      'user': '',
      'host': '',
      'ref': '',
      'repo': '',
      'path': '',
      'post-deploy': '',
      'env': {
        NODE_ENV: 'dev',
      },
    },
  },
};
