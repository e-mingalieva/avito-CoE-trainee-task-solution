CREATE TABLE task_status (
  issue_key VARCHAR(16) UNIQUE NOT NULL,
  status ENUM ('open', 'in progress', 'done') NOT NULL,
  start_time DATETIME NOT NULL
);

CREATE TABLE task_info (
  issue_key VARCHAR(16) UNIQUE NOT NULL,
  type VARCHAR(16) NOT NULL,
  name TEXT NOT NULL
);
   
INSERT INTO task_status (issue_key, status, start_time) VALUES
  ('1', 'open', '2021-05-15 14:00:00'),
  ('2', 'in progress', '2021-04-16 13:26:00'),
  ('3', 'done', '2021-06-17 11:55:59'),
  ('4', 'in progress', '2021-04-16 13:26:00'),
  ('5', 'in progress', '2021-04-30 23:59:59'),
  ('6', 'in progress', '2021-05-01 00:00:00'),
  ('7', 'in progress', '2021-04-30 23:59:59');

INSERT INTO task_info VALUES
  ('1', 'Bug', 'Баг 1'),
  ('2', 'Bug', 'Баг 2'),
  ('3', 'Task', 'Задача 3'),
  ('4', 'Task', 'Задача 4'),
  ('5', 'Bug', 'Баг 5'),
  ('6', 'Bug', 'Баг 6'),
  ('7', 'Task', 'Задача 7');