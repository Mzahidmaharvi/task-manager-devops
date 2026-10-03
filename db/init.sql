CREATE TABLE IF NOT EXISTS tasks (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  completed BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tasks (title, completed) VALUES
  ('Learn Docker', true),
  ('Set up CI/CD pipeline', true),
  ('Apply for DevOps internships', false)
ON CONFLICT DO NOTHING;
