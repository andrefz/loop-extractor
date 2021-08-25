
if(FEXT_USE_EXTERNAL_JSON)
  find_package(nlohmann_json 3.7.3 REQUIRED)
else()
  set(JSON_BuildTests OFF CACHE INTERNAL "")
  add_subdirectory(nlohmann_json)
endif()
