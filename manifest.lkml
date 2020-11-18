project_name: "block-google-ads-snowflake"

# # Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-snowflake"
  ref: "e85634bcf7d66e2978a52371360903a91b3fef89"
}

remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-fivetran-snowflake"
  ref: "ae74209c464869c50bdf26b83087185f6d9f4d4e"
}

remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "dd5ff152bc94d9892056a4c2f047f82e0f088d36"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: GOOGLE_ADS_SCHEMA {
    value: "@{GOOGLE_ADS_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-google-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "snowflake-apps"
  export: override_required
}

constant: GOOGLE_ADS_SCHEMA {
  value: "GOOGLE_ADS"
  export: override_required
}
