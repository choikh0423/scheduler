open OUnit2
open UserSurvey
open Command

let state1 = UserSurvey.init_state
let class1 = ["399201"]

let userSurvey_tests = 
  [
    (* take_class testing *)
    "take_class test 1 " >:: (fun _ -> assert_equal ["399201"] (get_class (take_class state1 class1)))


(* class_is_valid testing *)
(* delete_class testing *)
  ]

let suite =
  "test suite for Cornell Scheduler"  >::: List.flatten [
    userSurvey_tests;
  ]

let _ = run_test_tt_main suite
