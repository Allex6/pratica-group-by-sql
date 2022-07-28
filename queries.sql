-- Questão 01
SELECT COUNT(experiences."endDate") AS "currentExperiences" FROM experiences;

-- Questão 02
SELECT
	users.id,
	COUNT(educations.id) AS "educations"
FROM users
JOIN educations
ON educations."userId" = users.id
GROUP BY users.id
ORDER BY users.id DESC;

-- Questão 03
SELECT
	users.name AS writer,
	COUNT(testimonials.id) AS "testimonialCount"
FROM users
JOIN testimonials
ON users.id = testimonials."writerId"
WHERE users.id = 435
GROUP BY users.id;

-- Questão 04
SELECT 
	MAX(jobs.salary) AS "maximumSalary",
	roles.name
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE active = true
GROUP BY roles.name
ORDER BY "maximumSalary" ASC;