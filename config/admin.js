module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '6084dcdfd5826ecbd6a7ad5bc22b8509'),
  },
});
