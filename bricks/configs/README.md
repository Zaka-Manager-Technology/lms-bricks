# configs

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to produce configuration files for a product module.

## Overview

Generates the `.lms-config.json` file required to connect a product module to the LMS platform, and optionally a `.lms-auth` authentication file.

## Usage

```sh
mason make configs
```

## Variables

| Variable | Description | Type | Default |
|---|---|---|---|
| `product_module_name` | Human-readable name of the product module | `string` | — |
| `product_module_key` | Snake-case identifier for the product module | `string` | — |
| `organization_id` | LMS organization UUID | `string` | — |
| `create_auth_file` | Whether to generate a `.lms-auth` file | `boolean` | `false` |

## Output

```
.lms-config.json
.lms-auth         # only if create_auth_file is true
```

### `.lms-config.json`

Configures the product module key, organization, host, code files, loan document templates, billing settings, alteration hooks, and scheduled functions.

### `.lms-auth`

Created when `create_auth_file` is `true`. Stores the API authentication token for the LMS CLI. This file is gitignored by default.
