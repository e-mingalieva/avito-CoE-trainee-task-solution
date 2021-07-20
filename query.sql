SELECT 
  task_info.issue_key AS IssueKey,
  task_info.name AS Name
FROM task_info 
INNER JOIN task_status ON task_status.issue_key = task_info.issue_key
WHERE
  task_info.type = 'Bug' AND
  task_status.status = 'in progress' AND
  task_status.start_time BETWEEN '2021-04-01 00:00:00' AND '2021-04-30 23:59:59';