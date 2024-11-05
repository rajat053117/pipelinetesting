# Check the selected source location
if [[ "$source_location" == "legacy-quorbit" ]]; then
  echo '  - block: "Environment Options"
      fields:
        - select: "Environment Name"
          key: "source_env"
          hint: Select the Environment where redis cache needs to be flushed
          required: true
          options:
            - label: "Staging"
              value: "staging"
            - label: "Preprod"
              value: "preprod"
            - label: "Prod"
              value: "prod"
            - label: "Prod-US"
              value: "prod-us"' 
else
  echo '  - block: "Environment Options"
      fields:
        - select: "Environment Name"
          key: "source_env"
          hint: Select the Environment where redis cache needs to be flushed
          required: true
          options:
            - label: "Staging-US"
              value: "staging-us"
            - label: "Prod-US"
              value: "prod-us"
            - label: "Prod-EU"
              value: "prod-eu"'  
fi
