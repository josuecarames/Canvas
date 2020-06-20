USE canvas;
SELECT
account_dim.name AS "Account Name"
, account_dim.workflow_state AS "Account Status"
, enrollment_term_dim.name AS "Term Name"
, enrollment_term_dim.date_start AS "Term Start On"
, enrollment_term_dim.date_end AS "Term Ends On"
, course_dim.sis_source_id As "Course SIS"
, course_dim.code AS "Course Catalog"
, course_dim.name AS "Course Name"
, course_dim.created_at AS "Course Created At"
, course_dim.start_at AS "Course Started At"
, course_dim.conclude_at AS "Course Concluded At"
, course_dim.workflow_state AS "Course State"
, user_dim.name AS "User Name"
, user_dim.gender AS "User Gender"
, user_dim.birthdate AS "User Birthdate"
, user_dim.school_name AS "User School"
, user_dim.school_position AS "User School Position"
, user_dim.country_code AS "User Country"
, user_dim.locale AS "User locale"
, user_dim.time_zone AS "User Time Zone"
, user_dim.created_at AS "User Created At"
, user_dim.workflow_state AS "User Status"
, assignment_dim.submission_types AS "Assignment Submission Type"
, assignment_dim.title AS "Assignment Title"
, assignment_dim.description AS "Assignment Description"
, assignment_dim.created_at AS "Assignment Created At"
, assignment_dim.all_day AS "Assignment All Day Due"
, assignment_dim.all_day_date AS "Assignment All Day Due Date"
, assignment_dim.due_at AS "Assignment Due At"
, assignment_dim.peer_reviews_due_at AS "Assignment Peer Reviews Due At"
, assignment_dim.updated_at AS "Assignment Updated At"
, assignment_dim.could_be_locked AS "Assignment Could Be Locked"
, assignment_dim.lock_at AS "Assignment Locked At"
, assignment_dim.unlock_at AS "Assignment Unlock At"
, assignment_dim.peer_reviews AS "Assignment Peer Reviews"
, assignment_dim.automatic_peer_reviews AS "Assignment Peer Review Automatically Assigned"
, assignment_dim.peer_review_count AS "Assignment Peer Reviewers Count"
, assignment_dim.grading_type AS "Assignment Grading Type"
, assignment_dim.points_possible AS "Assignment Possible Points"
, assignment_dim.grade_group_students_individually AS "Assignment Group Individually Graded"
, assignment_dim.visibility AS "Assignment Visibility"
, assignment_dim.position AS "Assignment Position"
, assignment_dim.workflow_state AS "Assignment State"
, quiz_dim.name AS "Quiz Name"
, quiz_dim.description AS "Quiz Description"
, quiz_dim.quiz_type AS "Quiz Type"
, quiz_dim.created_at AS "Quiz Created At"
, quiz_dim.published_at AS "Quiz Published At"
, quiz_dim.updated_at AS "Quiz Updated At"
, quiz_dim.due_at AS "Quiz Due At"
, quiz_dim.hide_correct_answers_at AS "Quiz Hide Correct Answers At"
, quiz_dim.could_be_locked AS "Quiz Could Be Locked"
, quiz_dim.lock_at AS "Quiz Lock At"
, quiz_dim.unlock_at AS "Quiz Unlock At"
, quiz_dim.show_correct_answers AS "Quiz Show Correct Answers"
, quiz_dim.show_correct_answers_at AS "Quiz Show Correct Answers At"
, quiz_dim.deleted_at AS "Quiz Deleted At"
, quiz_dim.anonymous_submissions AS "Quiz Anonymous Submission"
, quiz_dim.answer_display_order AS "Quiz Answer Display Order"
, quiz_dim.browser_lockdown AS "Quiz Browser Lockdown"
, quiz_dim.browser_lockdown_for_displaying_results AS "Quiz Browser Lockdown for Displaying Results"
, quiz_dim.browser_lockdown_monitor AS "Quiz Lockdown Monitor"
, quiz_dim.display_questions AS "Quiz Display Questions"
, quiz_dim.go_back_to_previous_question AS "Quiz Go Back to Previous Question"
, quiz_dim.ip_filter AS "Quiz IP Filter"
, quiz_dim.scoring_policy AS "Quiz Scoring Policy"
, quiz_dim.show_results AS "Quiz Show Results"
, quiz_dim.points_possible AS "Quiz Points Possible"
, quiz_dim.workflow_state AS "Quiz State"
, learning_outcome_dim.calculation_int AS "LO Calculation Int"
, learning_outcome_dim.calculation_method AS "LO Calculation Method"
, learning_outcome_dim.created_at AS "LO Created At"
, learning_outcome_dim.display_name AS "LO Display Name"
, learning_outcome_dim.description AS "LO Description"
, learning_outcome_dim.short_description AS "LO Short Description"
, learning_outcome_dim.updated_at AS "LO Updated At"
, learning_outcome_dim.workflow_state AS "LO State"
, learning_outcome_result_dim.created_at AS "LO Result Created At"
, learning_outcome_result_dim.assessed_at AS "LO Result Assessed At"
, learning_outcome_result_dim.submitted_at AS "LO Result Submitted At"
, learning_outcome_result_dim.updated_at AS "LO Result Updated At"
, learning_outcome_result_dim.hidden AS "LO Result Hidden"
, learning_outcome_result_dim.hide_points AS "LO Result Hide Points"
FROM learning_outcome_result_fact
JOIN assignment_dim ON assignment_dim.id = learning_outcome_result_fact.assignment_id
JOIN course_dim ON course_dim.id = learning_outcome_result_fact.course_id
JOIN enrollment_term_dim ON enrollment_term_dim.id = learning_outcome_result_fact.enrollment_term_id
JOIN learning_outcome_dim ON learning_outcome_dim.id = learning_outcome_result_fact.learning_outcome_id
JOIN learning_outcome_result_dim ON learning_outcome_result_dim.id = learning_outcome_result_fact.learning_outcome_result_id
JOIN user_dim ON user_dim.id = learning_outcome_result_fact.user_id
LEFT JOIN quiz_dim ON quiz_dim.id = learning_outcome_result_fact.quiz_id
LEFT JOIN account_dim ON account_dim.id = learning_outcome_result_fact.account_id;