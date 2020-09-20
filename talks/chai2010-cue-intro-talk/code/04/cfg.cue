#Spec: {
  kind: string

  name: {
    first:   !=""  // must be specified and non-empty
    middle?: !=""  // optional, but must be non-empty when specified
    last:    !=""
  }

  // The minimum must be strictly smaller than the maximum and vice versa.
  minimum?: int & <maximum
  maximum?: int & >minimum
}

#SpecChecker: {
  minimum: >10
  ...
}

// 支持多个模式组合

spec: #Spec & #SpecChecker & {
  kind: "Homo Sapiens" // error, misspelled field

  name: first: "Jane"
  name: last:  "Doe"

  minimum: 15
}