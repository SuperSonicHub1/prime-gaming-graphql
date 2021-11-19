#!/bin/sh
curl 'https://gaming.amazon.com/graphql' \
	-X POST \
	-H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0' \
	-H 'Content-Type: application/json' \
	-H 'csrf-token: giVjMeRMVxJHvZ9SY7dlVukBuIVDFOux3izl838AAAACAAAAAGGVpNJyYXcAAAAA+8jokd9rqj+wHxPcX6iU' \
	-H 'Cookie: session-id=146-8168887-4057637; session-id-time=2082787201l; ubid-main=130-3016880-8935116' \
	--data-raw '{"query":"query IntrospectionQuery {\n __schema {\n queryType {\n name\n }\n mutationType {\n name\n }\n subscriptionType {\n name\n }\n types {\n ...FullType\n }\n directives {\n name\n description\n locations\n args {\n ...InputValue\n }\n }\n }\n}\n\nfragment FullType on __Type {\n kind\n name\n description\n fields(includeDeprecated: true) {\n name\n description\n args {\n ...InputValue\n }\n type {\n ...TypeRef\n }\n isDeprecated\n deprecationReason\n }\n inputFields {\n ...InputValue\n }\n interfaces {\n ...TypeRef\n }\n enumValues(includeDeprecated: true) {\n name\n description\n isDeprecated\n deprecationReason\n }\n possibleTypes {\n ...TypeRef\n }\n}\n\nfragment InputValue on __InputValue {\n name\n description\n type {\n ...TypeRef\n }\n defaultValue\n}\n\nfragment TypeRef on __Type {\n kind\n name\n ofType {\n kind\n name\n ofType {\n kind\n name\n ofType {\n kind\n name\n ofType {\n kind\n name\n ofType {\n kind\n name\n ofType {\n kind\n name\n ofType {\n kind\n name\n }\n }\n }\n }\n }\n }\n }\n}\n\n"}' \
	-o schema.json
