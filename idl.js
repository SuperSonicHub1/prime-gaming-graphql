// https://github.com/prisma-labs/get-graphql-schema/blob/2e8732322ba52158aa6bb163de3d7107a041cc52/src/index.ts

const { buildClientSchema, printSchema } = require('graphql')
const { data } = require('./schema.json')
const { writeFileSync } = require('fs')

writeFileSync('schema.graphql', printSchema(buildClientSchema(data)))
