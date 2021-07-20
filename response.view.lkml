view: response {
  sql_table_name: `googleform_test.retail_insights` ;;

 measure: count {
  type: count
}

dimension: timestamp {
  type: string
  sql: ${TABLE}.Timestamp ;;
}

dimension: what_industry_segment_do_you_represent {
  label: "Industry Segment"
  type: string
  sql: CASE WHEN ${TABLE}.What_industry_segment_do_you_represent LIKE 'What%' THEN NULL
        ELSE ${TABLE}.What_industry_segment_do_you_represent END ;;
}

dimension: which_position_closest_aligns_to_your_role {
  label: "Position"
  type: string
  sql: CASE WHEN ${TABLE}.Which_position_closest_aligns_to_your_role LIKE 'Which%' THEN NULL
        ELSE ${TABLE}.Which_position_closest_aligns_to_your_role END;;
}

dimension: which_region_are_you_from {
  label: "Region"
  type: string
  sql: CASE WHEN ${TABLE}.Which_region_are_you_from LIKE 'Which%' THEN NULL
        ELSE ${TABLE}.Which_region_are_you_from END;;
}

dimension: what_is_your_company_size {
  label: "Company Size"
  type: string
  sql: CASE WHEN ${TABLE}.What_is_your_company_size LIKE 'What%' THEN NULL
        WHEN ${TABLE}.What_is_your_company_size LIKE '1 - 100%' THEN '(1) 1 - 100 employees'
        WHEN ${TABLE}.What_is_your_company_size LIKE '100 - %' THEN '(2) 100 - 500 employees'
        WHEN ${TABLE}.What_is_your_company_size LIKE '500%' THEN '(3) 500 - 2000 employees'
        WHEN ${TABLE}.What_is_your_company_size LIKE '2000%' THEN '(4) 2000+ employees'
        ELSE NULL END;;
}

dimension: who_do_you_primarily_sell_to {
  label: "Buyers"
  type: string
  sql:
  CASE WHEN ${TABLE}.Who_do_you_primarily_sell_to LIKE 'Who%' THEN NULL
        ELSE ${TABLE}.Who_do_you_primarily_sell_to END;;
}

dimension: which_of_these_five_trends_do_you_think_will_have_the_greatest_acceleration_due_to_the_impact_of_the_crisis_on_consumer_behavior {
  label: "Accelerating Trends"
  type: string
  sql:

  CASE WHEN ${TABLE}.Which_of_these_five_trends_do_you_think_will_have_the_greatest_acceleration_due_to_the_impact_of_the_crisis_on_consumer_behavior LIKE 'Which%' THEN NULL
        ELSE ${TABLE}.Which_of_these_five_trends_do_you_think_will_have_the_greatest_acceleration_due_to_the_impact_of_the_crisis_on_consumer_behavior END
  ;;
}

dimension: what_do_you_believe_consumers_are_now_looking_more_for_when_purchasing {
  label: "Consumer Needs"
  type: string
  sql:
  CASE WHEN ${TABLE}.What_do_you_believe_consumers_are_now_looking_more_for_when_purchasing LIKE 'What%' THEN NULL
        ELSE ${TABLE}.What_do_you_believe_consumers_are_now_looking_more_for_when_purchasing END;;
}

dimension: which_of_these_three_critical_areas_for_our_new_normal_do_you_believe_retailers_should_be_paying_more_attention_to_and_adequately_address {
  label: "Retailer Critical Areas"
  type: string
  sql:
  CASE WHEN ${TABLE}.Which_of_these_three_critical_areas_for_our_new_normal_do_you_believe_retailers_should_be_paying_more_attention_to_and_adequately_address LIKE 'Which%' THEN NULL
        ELSE ${TABLE}.Which_of_these_three_critical_areas_for_our_new_normal_do_you_believe_retailers_should_be_paying_more_attention_to_and_adequately_address END;;
}

dimension: which_technology_change_do_you_believe_will_provide_the_greatest_impact_for_companies_in_a_post_covid_world {
  label: "Technology Change"
  type: string
  sql:
  CASE WHEN ${TABLE}.Which_technology_change_do_you_believe_will_provide_the_greatest_impact_for_companies_in_a_post_covid_world LIKE 'Which%' THEN NULL
        ELSE ${TABLE}.Which_technology_change_do_you_believe_will_provide_the_greatest_impact_for_companies_in_a_post_covid_world END;;
}
}
