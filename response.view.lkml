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
  sql: ${TABLE}.What_industry_segment_do_you_represent ;;
}

dimension: which_position_closest_aligns_to_your_role {
  label: "Position"
  type: string
  sql: ${TABLE}.Which_position_closest_aligns_to_your_role ;;
}

dimension: which_region_are_you_from {
  label: "Region"
  type: string
  sql: ${TABLE}.Which_region_are_you_from ;;
}

dimension: what_is_your_company_size {
  label: "Company Size"
  type: string
  sql: ${TABLE}.What_is_your_company_size ;;
}

dimension: who_do_you_primarily_sell_to {
  label: "Buyers"
  type: string
  sql: ${TABLE}.Who_do_you_primarily_sell_to ;;
}

dimension: which_of_these_five_trends_do_you_think_will_have_the_greatest_acceleration_due_to_the_impact_of_the_crisis_on_consumer_behavior {
  label: "Accelerating Trends"
  type: string
  sql: ${TABLE}.Which_of_these_five_trends_do_you_think_will_have_the_greatest_acceleration_due_to_the_impact_of_the_crisis_on_consumer_behavior ;;
}

dimension: what_do_you_believe_consumers_are_now_looking_more_for_when_purchasing {
  label: "Consumer Needs"
  type: string
  sql: ${TABLE}.What_do_you_believe_consumers_are_now_looking_more_for_when_purchasing ;;
}

dimension: which_of_these_three_critical_areas_for_our_new_normal_do_you_believe_retailers_should_be_paying_more_attention_to_and_adequately_address {
  label: "Retailer Critical Areas"
  type: string
  sql: ${TABLE}.Which_of_these_three_critical_areas_for_our_new_normal_do_you_believe_retailers_should_be_paying_more_attention_to_and_adequately_address ;;
}

dimension: which_technology_change_do_you_believe_will_provide_the_greatest_impact_for_companies_in_a_post_covid_world {
  label: "Technology Change"
  type: string
  sql: ${TABLE}.Which_technology_change_do_you_believe_will_provide_the_greatest_impact_for_companies_in_a_post_covid_world ;;
}
}
