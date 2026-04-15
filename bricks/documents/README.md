# documents

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A brick to produce document templates for a product module.

## Overview

Generates the document files served to borrowers during the loan lifecycle — offer summary, welcome letter, terms, and supplementary terms.

## Usage

```sh
mason make documents
```

## Variables

| Variable | Description | Type |
|---|---|---|
| `product_module_name` | Human-readable name of the product module | `string` |
| `product_module_key` | Snake-case identifier for the product module | `string` |

## Output

```
documents/
  offer-summary.html
  welcome-letter.html
  terms.pdf
  supplementary-terms/
    example-supplementary-terms.pdf
```

### Document types

| File | Description |
|---|---|
| `offer-summary.html` | HTML document shown to the borrower at the offer stage |
| `welcome-letter.html` | HTML welcome letter sent after loan disbursement |
| `terms.pdf` | Standard loan terms and conditions |
| `supplementary-terms/example-supplementary-terms.pdf` | Example supplementary terms — rename and replace with product-specific content |
