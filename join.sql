SELECT * FROM `students` INNER JOIN `degrees` ON `students`.`degree_id`=`degrees`.`id` WHERE `degrees`.`name`= "Corso di Laurea in Economia";

SELECT * FROM `degrees` INNER JOIN `departments` ON `degrees`.`department_id`=`departments`.`id` WHERE `departments`.`name`= "Dipartimento di Neuroscienze" AND `degrees`.`level`="magistrale";

SELECT * FROM `courses` INNER JOIN `course_teacher` ON `courses`.`id`=`course_teacher`.`course_id` WHERE `course_teacher`.`teacher_id`=44;

SELECT * FROM `students` INNER JOIN `degrees` ON `students`.`degree_id`=`degrees`.`id` INNER JOIN `departments` ON `degrees`.`department_id`=`departments`.`id` ORDER BY `surname`, `students`.`name` ASC;

SELECT * FROM `degrees` INNER JOIN `courses` ON `degrees`.`id`=`courses`.`degree_id` INNER JOIN `course_teacher` ON `courses`.`id`=`course_teacher`.`course_id` INNER JOIN `teachers` ON `course_teacher`.`teacher_id`=`teachers`.`id` ORDER BY `degrees`.`id` ASC;

SELECT DISTINCT `teachers`.`id` FROM `teachers` INNER JOIN `course_teacher` ON `teachers`.`id`=`course_teacher`.`teacher_id` INNER JOIN `courses` ON `course_teacher`.`course_id`=`courses`.`id` INNER JOIN `degrees` ON `courses`.`degree_id`=`degrees`.`id` INNER JOIN `departments` ON `degrees`.`department_id`=`departments`.`id` WHERE `departments`.`name`="Dipartimento di Matematica";