// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch
use opensearch.openapi#vendorExtensions

@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest/api-reference/cat/cat-repositories/"
)

@vendorExtensions(
    "x-operation-group": "cat.repositories",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_cat/repositories")
@documentation("Returns information about snapshot repositories registered in the cluster.")
operation CatRepositories {
    input: CatRepositories_Input,
    output: CatRepositories_Output
}