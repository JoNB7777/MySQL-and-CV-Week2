INSERT INTO manager(manager_name) VALUES ('John');
INSERT INTO manager(manager_name) VALUES ('Hannah');
INSERT INTO manager(manager_name) VALUES ('Rory');
INSERT INTO manager(manager_name) VALUES ('Chris');

SELECT * FROM manager;

INSERT INTO trainer(trainer_name, manager_id) VALUES ('Chris', 1);
INSERT INTO trainer(trainer_name, manager_id) VALUES ('Rhys', 4);
INSERT INTO trainer(trainer_name, manager_id) VALUES ('Matt', 1);
INSERT INTO trainer(trainer_name, manager_id) VALUES ('Shareeq', 1);

SELECT * FROM trainer;

INSERT INTO recruiter(recruiter_name, manager_id) VALUES ('Sam', 2);

SELECT * FROM recruiter;

INSERT INTO trainee (trainee_name, manager_id, recruiter_id) VALUES ('A', 3, 1);
INSERT INTO trainee (trainee_name, manager_id, recruiter_id) VALUES ('B', 3, 1);
INSERT INTO trainee (trainee_name, manager_id, recruiter_id) VALUES ('C', 3, 1);
INSERT INTO trainee (trainee_name, manager_id, recruiter_id) VALUES ('D', 3, 1);

SELECT * FROM trainee;

SELECT id FROM manager where manager_name = 'John';
SELECT * FROM trainer WHERE manager_id = 1 =(SELECT id FROM manager where manager_name = 'John');

SELECT manager_name, trainer_name FROM trainer JOIN manager ON trainer.manager_id = manager.id;
