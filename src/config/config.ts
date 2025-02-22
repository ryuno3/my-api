export const config = {
  database: {
    url:
      process.env.DATABASE_URL ||
      'postgresql://user:password@localhost:5432/mydb',
  },
  port: process.env.PORT || 3001,
};
