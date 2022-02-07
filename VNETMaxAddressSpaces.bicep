targetScope = 'managementGroup'

resource policy 'Microsoft.Authorization/policyDefinitions@2021-06-01' = {
  name: 'Max VNET address spaces allowed'
  properties: {
    policyType: 'Custom'
    description: 'Maximum amount of Address Spaces allowed on VNETs'
    displayName: 'Max VNET Address Spaces allowed'
    mode: 'All'
    metadata: {
      'Category': 'Network'
    }
    parameters: {
      'MaxAddressSpaces': {
        'type': 'Integer'
        'defaultValue': 1
        'metadata': {
          'description': 'Maximum amount of Address Spaces allowed on VNETs'
          'displayName': 'Max. VNET Address Spaces'
        }
      }
      'effect': {
        'type': 'String'
        'metadata': {
          'displayName': 'Effect'
          'description': 'Enable or disable the execution of the policy.'
        }
        'allowedValues': [
          'audit'
          'deny'
          'disabled'
        ]
        'defaultValue': 'deny'
      }
    }
    policyRule: {
      'if': {
        'allOf': [
          {
            'field': 'type'
            'equals': 'Microsoft.Network/virtualNetworks'
          }
          {
            'count': {
              'field': 'Microsoft.Network/virtualNetworks/addressSpace.addressPrefixes[*]'
            }
            'greater': '[parameters(\'MaxAddressSpaces\')]'
          }
        ]
      }
      'then': {
        'effect': '[parameters(\'effect\')]'
      }
    }
  }
}

output policyID string = policy.id
