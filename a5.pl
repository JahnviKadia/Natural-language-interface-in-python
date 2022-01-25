% electvies advisory system

suggest(Elective) :-
      consult("C:/Users/kadia/Assignment 5/elective_facts.txt"),
      career(C,C1,C2,C3,C4,C5),
      pre(P,P1,P2),
      elective(Elective, P, P1, P2, C, C1, C2,C3,C4,C5, Intern, Marks, RP, Pro),
      show_answers(Elective, P, P1, P2, C1, C2,C3,C4,C5, Intern, Marks, RP, Pro),
      nl.


suggest(_) :-
      nl,
      convert_to_list(List),
      write(' The list of suggested electives are '),
      write(List),

      nl.

show_answers(Elective, P, P1, P2, C1, C2,C3,C4,C5, Intern, Marks, RP, Pro) :-
      reset_answers,

      write('The suggested elective is '),
      write(Elective),
      write(' , '),
      write('with the carrer opportunities according to your interest '),
      write(C1),
      write(' , '),
      write(C2),
      write(' , '),
      write(C3),
      write(' , '),
      write(C4),
      write(' , '),
      write(C5),
      write(' , '),
      write( 'and prerequsites '),
      write(P),
      write(' , '),
      write(P1),
      write(' , '),
      write(P2),
      write(' and '),
      write('with '),
      write(Intern),
      write(' of experince '),
      write('given I have got '),
      write(Marks),
      write(' CGPA '),
      write('and I have done '),
      write(RP),
      write(' research paper/s '),
      write(' , '),
      write('made '),
      write(Pro),
      write(' project/s '),
      write(' , '),
      assert(progress(Elective)),
      nl,nl,
      fail.

career(C,_,_,_,_,_) :-
      career_in(C,_,_,_,_,_),
       !.

pre(P,_,_) :-
      pre_in(P,_,_),
      !.

pre(_,_,P2) :-
      pre_in(_,_,P2),
      !.

pre(_,P1,_) :-
      pre_in(_,P1,_),
      !.

reset_answers :-
  retract(progress(_,_)),
  fail.
reset_answers.


convert_to_list([Px|Tail]) :-
    retract(progress(Px)),
    convert_to_list(Tail).

convert_to_list([]).

%KB

elective(machine_learning,intro_to_programming, prob_and_stats,mathsI_and_III, ml, ml_researcher, ml_software_engineer,ml_application_developer,aws_ml,google_cloud_ml, for_2_years , 8.9, 2, 2).

elective(advanced_machine_learning, intro_to_programming,prob_and_stats, mathsI_and_III, ml, ml_researcher, ml_software_engineer,ml_application_developer,aws_ml,google_cloud_ml, for_2_years, 8.8, 3, 4 ).

elective(meta_learning, intro_to_programming,prob_and_stats, mathsI_and_III, ml, ml_researcher, ml_software_engineer, ml_application_developer, aws_ml, google_cloud_ml, for_3_years, 8.2, 1, 5 ).

elective(bayesian_machine_learning,intro_to_programming,prob_and_stats, mathsI_and_III, ml,ml_researcher, ml_software_engineer,ml_application_developer,aws_ml,google_cloud_ml, for_1_year, 7.8, 2, 4).

elective(optimization_in__machine_learning, intro_to_programming, prob_and_stats, mathsI_and_III, ml, ml_researcher, ml_software_engineer, ml_application_developer, aws_ml, google_cloud_ml, for_2_years, 9.0, no, 2).


elective(deep_learning, machine_learning, maths_III, python_programming, dl, software_engineer_dl, neural_network_and_statistical_modelling, data_science_engineer, data_scientist_dl, nlp_engineer, for_6_months, 8.6, no, 4).

elective(advanced_deep_learning, machine_learning, maths_III, python_programming, dl, software_engineer_dl, neural_network_and_statistical_modelling, data_science_engineer, data_scientist_dl, nlp_engineer, for_3_years, 7.6, 2, no).

elective(natural_language_processing, machine_learning, maths_III, python_programming, dl, software_engineer_dl, neural_network_and_statistical_modelling, data_science_engineer, data_scientist_dl, nlp_engineer,for_1_year, 8.6, 3, no).

elective(computer_vision, linear_algebra, image_analysis, digital_signal_processing, cv, image_processing_software_engineer, dl_software_engineer, ai_software_engineer, image_analytics, research_and_development, for_4_years, 9.2, 1, 5).

elective(advanced_computer_vision, linear_algebra, image_analysis, digital_signal_processing, cv, image_processing_software_engineer, dl_software_engineer, ai_software_engineer, image_analytics, research_and_development, for_6_months, 8.2, no, no).

elective(digital_image_processing, linear_algebra, image_analysis, digital_signal_processing, cv, image_processing_software_engineer, dl_software_engineer, ai_software_engineer, image_analytics, research_and_development, for_8_months, 7.6, no, 2).

elective(image_analysis, linear_algebra, image_analysis, digital_signal_processing, cv, image_processing_software_engineer, dl_software_engineer, ai_software_engineer, image_analytics, research_and_development, for_3_years, 8.8, 2, 4).

elective(artificial_intelligence, data_structures, algorithms, maths_III,ai, ai_software_engineer, ai_researcher, data_scientist, data_architect, ai_software_development, for_8_months, 7.8, 1, 2).

elective(trustworthy_ai, data_structures, algorithms, maths_III,ai, ai_software_engineer, ai_researcher, data_scientist, data_architect, ai_software_development, for_10_months, 7.4, 1, 1).

elective(edge_ai, data_structures, algorithms, maths_III,ai, ai_software_engineer, ai_researcher, data_scientist, data_architect, ai_software_development, for_4_months, 8.4, 1, 4).

elective(modern_algorithm_design, data_structures, algorithms,intro_to_programming, algorithm, algorithm_researcher, java_developer, network_planning_software_engineer, machine_learning_algorithm, algorithm_developer, for_2_years, 7.8, no, 2).

elective(introduction_to_graduate_algorithms, data_structures, algorithms,intro_to_programming, algorithm, algorithm_researcher, java_developer, network_planning_software_engineer, machine_learning_algorithm, algorithm_developer, for_3_years, 9.2, 2, 5).

elective(randomized_algorithms, data_structures, algorithms,intro_to_programming, algorithm, algorithm_researcher, java_developer, network_planning_software_engineer, machine_learning_algorithm, algorithm_developer, for_2_years, 9.0, 3, 3).

elective(information_retrieval, data_structures_and_algorithms,intro_to_programming, fundamentals_of_database_systems, ir, medical_record_retieval, search_engineer_manager, data_wrangling, backend_data_engineer, data_analyst,for_3_years, 8.6, 1, 2).

elective(knowledge_graphs_in_practice, data_structures_and_algorithms,intro_to_programming, fundamentals_of_database_systems, ir, medical_record_retieval, search_engineer_manager, data_wrangling, backend_data_engineer, data_analyst, for_2_years, 8.8, 1, 2).


elective(networks_and_system_security_III,data_structures, algorithms,intro_to_programming, os, linux_os_service_manager, linux_os_application_engineer, robot_os_engineer, linux_os_database, administrator_os_developer, for_4_years, 8.2, 2, 1).

elective(security_engineer,data_structures, algorithms,intro_to_programming, os, linux_os_service_manager, linux_os_application_engineer, robot_os_engineer, linux_os_database, administrator_os_developer, for_8_months, 8.4, 3, 3).

elective(advanced_os,data_structures, algorithms,intro_to_programming, os, linux_os_service_manager, linux_os_application_engineer, robot_os_engineer, linux_os_database, administrator_os_developer, for_1_year, 8.8, 1, 1).

elective(parallel_runtimes_for_modern_processors,data_structures, algorithms,intro_to_programming, os, linux_os_service_manager, linux_os_application_engineer, robot_os_engineer, linux_os_database, administrator_os_developer, for_2_years,7.2, 2, 4).

elective(foundation_computer_security, operating_system, intro_to_programming, algorithm_design_and_analysis, cs, cyber_security_analyst, cyber_security_instructor, cyber_security_consultant, ethical_hacking, security_engineer, for_3_years, 9.0, 3, 1).

elective(networks_and_system_security_II, operating_system, intro_to_programming, algorithm_design_and_analysis, cs, cyber_security_analyst, cyber_security_instructor, cyber_security_consultant, ethical_hacking, security_engineer, for_6_months, 8.0, 3, 3).

elective(applied_cryptopgraphy, operating_system, intro_to_programming, algorithm_design_and_analysis, cs, cyber_security_analyst, cyber_security_instructor, cyber_security_consultant, ethical_hacking, security_engineer, for_3_years, 8.4, 2, 1).

elective(data_mining, intro_to_programming, prob_and_stats, fundamentals_of_database_systems, dm, data_wrangling, data_visualization, software_developer, backend_data_engineer, data_scientist, for_2_years, 8.6, 3, 4).

elective(statistical_machine_learning, intro_to_programming, prob_and_stats, fundamentals_of_database_systems, dm, data_wrangling, data_visualization, software_developer, backend_data_engineer, data_scientist, for_3_years, 7.8, 2, 4).
