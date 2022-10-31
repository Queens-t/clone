'use strict';
// TODO: Create global test for response spec (OPEN API)
// TODO: Ignore code coverage in server/server.js
// TODO: Install and config Husky package
// TODO: Re-check Jest's code coverage
module.exports = {
  verbose: true,
  bail: true,
  collectCoverage: true,
  testEnvironment: 'node',
  coverageDirectory: './__reports__/coverage',
  collectCoverageFrom: [
    '**/server/**/*.{js}',
    '!**/node_modules/**',
    '!**/vendor/**',
  ],
  coveragePathIgnorePatterns: [
    './node_modules/',
    './__reports__/',
    './common/helper/',
  ],
  coverageReporters: ['lcov'],
  globals: {
    NODE_ENV: 'test',
  },
  notify: true,
  notifyMode: 'always',
  testMatch: ['**/__tests__/**/*.js?(x)'],
  modulePathIgnorePatterns: ['./node_modules/', './__reports__'],
  testPathIgnorePatterns: ['./node_modules/', './__reports__'],
  watchPathIgnorePatterns: ['./node_modules/', './__reports__/'],
  transform: {
    '^.+\\.js$': './preprocessor.js',
  },
  transformIgnorePatterns: [
    'node_modules/(?!loopback-boot)',
  ],
};
