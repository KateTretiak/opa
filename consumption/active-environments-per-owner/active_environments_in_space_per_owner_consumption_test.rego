package torque.consumption

import future.keywords.if

test_max_active_envs_input_greater_than_max_denied {
    value := result with input.owner_active_environments_in_space as 6
                          with data.max_active_envs_in_space_per_owner as 5
    value.decision == "Denied"
    value.reason == "This space has a limitation on the concurrent environments per user. You have reached this limit of 5. Try terminating your currently active environments before launching a new one."
}

test_max_active_envs_equal_values_denied {
    value := result with input.owner_active_environments_in_space as 5
                          with data.max_active_envs_in_space_per_owner as 5
    value.decision == "Denied"
    value.reason == "This space has a limitation on the concurrent environments per user. You have reached this limit of 5. Try terminating your currently active environments before launching a new one."
}

test_max_active_envs_approved_1 {
    value := result with input.owner_active_environments_in_space as 5
                          with data.max_active_envs_in_space_per_owner as 6
    value.decision == "Approved"
}

test_max_active_envs_approved_2 {
    value := result with input.owner_active_environments_in_space as 4
                          with data.max_active_envs_in_space_per_owner as 6
    value.decision == "Approved"
}