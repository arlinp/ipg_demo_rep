project_name: "ipg_scratch_model"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
#local_dependency: {
 #  project: "ipg_explore_assist_demo"
# }
application: explore_assistant {
  label: "Explore Assistant"
  #url: "https://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore","create_sql_query","run_sql_query","run_query","create_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: ["https://developers.generativeai.google/*"]
    local_storage: yes
    external_api_urls: ["https://us-central1-ipg-looker-assist-demo.cloudfunctions.net/explore-assistant-api"]
  }
}
