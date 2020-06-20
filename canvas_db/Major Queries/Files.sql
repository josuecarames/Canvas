USE canvas;
SELECT 
account_dim.name AS "Account Name"
, account_dim.workflow_state AS "Account Status"
, enrollment_rollup_dim.least_privileged_role AS "Min-Role in Course"
, enrollment_rollup_dim.most_privileged_role AS "Max-Role in Course"
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
, group_dim.category AS "Group Category"
, group_dim.context_type AS "Group Type"
, group_dim.created_at AS "Group Created At"
, group_dim.default_view AS "Group Default View"
, group_dim.deleted_at AS "Group Deleted At"
, group_dim.name AS "Group Name"
, group_dim.updated_at AS "Group Updated At"
, group_dim.workflow_state AS "Group State"
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
, assignment_group_dim.created_at AS "Assignment Group Created At"
, assignment_group_dim.default_assignment_name AS "Assignment Group Default Assignment Name"
, assignment_group_dim.name AS "Assignment Group Name"
, assignment_group_dim.position AS "Assignment Group Position"
, assignment_group_dim.updated_at AS "Assignment Group Updated At"
, assignment_group_dim.workflow_state AS "Assignment Group State"
, submission_dim.attempt AS "Submission Attempt"
, submission_dim.body AS "Submission Body"
, submission_dim.created_at AS "Submission Created At"
, submission_dim.excused AS "Submission Excused"
, submission_dim.grade AS "Submission Grade"
, submission_dim.grade_matches_current_submission AS "Submission Grade Matches Current Submission"
, submission_dim.grade_state AS "Submission Grade State"
, submission_dim.graded_anonymously AS "Submission Grade Anonymously"
, submission_dim.graded_at AS "Submission Graded At"
, submission_dim.has_admin_comment AS "Submission Has Admin Comment"
, submission_dim.has_rubric_assessment AS "Submission Has Rubric Assessment"
, submission_dim.posted_at AS "Submission Posted At"
, submission_dim.process_attempts AS "Submission Process Attempts"
, submission_dim.processed AS "Submission Processed"
, submission_dim.published_grade AS "Submission Published Grade"
, submission_dim.submission_type AS "Submission Type"
, submission_dim.submitted_at AS "Submission Submitted At"
, submission_dim.updated_at AS "Submission Updated At"
, submission_dim.url AS "Submission URL"
, submission_dim.workflow_state AS "Submission State"
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
, quiz_submission_dim.created_at AS "Quiz Submission Created_At"
, quiz_submission_dim.due_at AS "Quiz Submission Due At"
, quiz_submission_dim.finished_at AS "Quiz Submission Finished At"
, quiz_submission_dim.has_seen_results AS "Quiz Submission Has Seen Results"
, quiz_submission_dim.quiz_state_during_submission AS "Quiz Submission State During Submission"
, quiz_submission_dim.started_at AS "Quiz Submission Started At"
, quiz_submission_dim.submission_scoring_policy AS "Quiz Submission Scoring Policy"
, quiz_submission_dim.submission_source AS "Quiz Submission Source"
, quiz_submission_dim.temporary_user_code AS "Quiz Submission Temporary User Code"
, quiz_submission_dim.updated_at AS "Quiz Submission Updated At"
, quiz_submission_dim.workflow_state AS "Quiz Submission State"
, user_dim.name AS "User Name"
, user_dim.gender AS "User Gender"
, user_dim.birthdate AS "User Birthdate"
, user_dim.school_name AS "User School"
, user_dim.school_position AS "User School Position"
, user_dim.country_code AS "User Country"
, user_dim.locale AS "User Locale"
, user_dim.time_zone AS "User Time Zone"
, user_dim.created_at AS "User Created At"
, user_dim.workflow_state AS "User Status"
, conversation_dim.has_attachments AS "Conversation Has Attachments"
, conversation_dim.has_media_objects AS "Conversation Has Media Objects"
, conversation_dim.subject AS "Conversation Subject"
, conversation_message_dim.generated AS "Message Was Computer Generated"
, conversation_message_dim.has_attachments AS "Message Has Attachments"
, conversation_message_dim.has_media_objects AS "Message Has Media Objects"
, conversation_message_dim.created_at AS "Message Created At"
, wiki_dim.created_at AS "Wiki Created At"
, wiki_dim.front_page_url AS "Wiki Front Page URL"
, wiki_dim.has_no_front_page AS "Wiki Has No Front Page"
, wiki_dim.parent_type AS "Wiki Parent Type"
, wiki_dim.title AS "Wiki Title"
, wiki_dim.updated_at AS "Wiki Updated At"
, file_fact.size AS "File Size"
FROM file_fact
LEFT OUTER JOIN account_dim ON account_dim.id = file_fact.account_id
LEFT OUTER JOIN assignment_dim ON assignment_dim.id = file_fact.assignment_id
LEFT OUTER JOIN assignment_group_dim ON assignment_group_dim.id = file_fact.assignment_group_id
LEFT OUTER JOIN conversation_dim ON conversation_dim.id = file_fact.conversation_id
-- conversation_message_author_dim table is missing
LEFT OUTER JOIN conversation_message_dim ON conversation_message_dim.id = file_fact.conversation_message_id
LEFT OUTER JOIN course_dim ON course_dim.id = file_fact.course_id
LEFT OUTER JOIN enrollment_rollup_dim ON enrollment_rollup_dim.id = file_fact.enrollment_rollup_id
LEFT OUTER JOIN enrollment_term_dim ON enrollment_term_dim.id = file_fact.enrollment_term_id
-- folder_dim table is missing
-- grader_dim table is missing
LEFT OUTER JOIN group_dim ON group_dim.id = file_fact.group_id
-- group_category_dim table is missing
LEFT OUTER JOIN quiz_dim ON quiz_dim.id = file_fact.quiz_id
LEFT OUTER JOIN quiz_submission_dim ON quiz_submission_dim.id = file_fact.quiz_submission_id
-- replacement_file_dim table is missing
-- root_file_dim table is missing
-- sis_source_dim table is missing
LEFT OUTER JOIN submission_dim ON submission_dim.id = file_fact.submission_id
-- uploader_dim table is missing
LEFT OUTER JOIN user_dim ON user_dim.id = file_fact.user_id
LEFT OUTER JOIN wiki_dim ON wiki_dim.id = file_fact.wiki_id
-- General conditions
WHERE account_dim.name = "Fuller Theological Seminary"
AND account_dim.workflow_state != "deleted"
AND enrollment_term_dim.name NOT IN ("All Other Courses", "Course Development (DL)", "Course Development (Faculty)", "Default Term", "Fuller Canvas Templates", "Orientation 2017", "Orientation 2018", "Orientation 2019", "Orientation 2020")
AND course_dim.workflow_state != "deleted"
AND course_dim.sis_source_id IS NOT NULL
;