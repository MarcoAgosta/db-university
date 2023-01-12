SELECT * FROM `students` INNER JOIN `degrees` ON `students`.`degree_id`=`degrees`.`id` WHERE `degrees`.`name`= "Corso di Laurea in Economia";

SELECT * FROM `degrees` INNER JOIN `departments` ON `degrees`.`department_id`=`departments`.`id` WHERE `departments`.`name`= "Dipartimento di Neuroscienze" AND `degrees`.`level`="magistrale";

SELECT * FROM `courses` INNER JOIN `course_teacher` ON `courses`.`id`=`course_teacher`.`course_id` WHERE `course_teacher`.`teacher_id`=44;