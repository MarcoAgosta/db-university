SELECT YEAR(`enrolment_date`), COUNT(`enrolment_date`) FROM `students` GROUP BY YEAR(`enrolment_date`);

SELECT `office_address`, COUNT(`office_address`) FROM `teachers` GROUP BY (`office_address`);

SELECT `exam_id`, AVG(`vote`) FROM `exam_student` GROUP BY `exam_id`;

SELECT `department_id` AS `dipartimento`, COUNT(`department_id`) AS `numero_corsi` FROM `degrees` GROUP BY `department_id`;