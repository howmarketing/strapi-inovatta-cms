module.exports = ({ env }) => ({
  connection: {
    client: 'mysql',
    connection: {
      host: env('DATABASE_HOST', 'localhost'),
      port: env.int('DATABASE_PORT', 2336),
      database: env('DATABASE_NAME', 'inovatta_cms_1'),
      user: env('DATABASE_USERNAME', 'root'),
      password: env('DATABASE_PASSWORD', '050585'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
