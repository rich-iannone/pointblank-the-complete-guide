# **Pointblank**: The Complete Guide to Data Validation in Python

This is the repository for the book "**Pointblank**: The Complete Guide to Data Validation in Python", which covers assessing, monitoring, and assuring data quality in Python using the [**Pointblank**](https://github.com/posit-dev/pointblank) library.

> **Work in progress.** This book is under active development, so its structure, chapters, and examples may still change.

## About this book

The **Pointblank** library provides a fluent, expressive framework for defining validation rules, running them across many kinds of data source, and communicating the results through clear, interactive reports. This book teaches you how to use **Pointblank** well, beginning with a first validation step and building toward the production-scale, automated, and domain-specific workflows that data quality demands in practice. The emphasis throughout is on judgment, not just how to call a method but when and why to use that method.

**Read the book online:** https://rich-iannone.github.io/pointblank-the-complete-guide/

## What you'll learn

The early chapters build a working vocabulary of validation. You will learn the core workflow of building a plan and interrogating data, see how to incorporate validation in a lighter manner (e.g., during interactive work such as checking a join result), and then express expectations about individual column values, whole rows, table structure and freshness, and column-level aggregates, handling the coded missing values and per-segment breakdowns that real data brings. From there the book turns to acting on results, grading failures by severity with thresholds, responding automatically with actions, rolling results up into quality scores, and presenting them as reports, extracts, and alerts.

The later parts of the book will broaden the scope of what can be done. You will see how a language model can judge data semantically and help write validation plans. You'll see how the same plans run from YAML, the command line, and an MCP server. We'll explore how validation can run on data from in-memory Polars and Pandas dataframes, from DuckDB tables, and from remote databases. The book closes with ten industry playbooks that assemble many techniques into end-to-end workflows, spanning financial services, e-commerce, data-engineering platforms, clinical trials, real-world evidence, machine-learning pipelines, manufacturing and IoT sensors, insurance, the public sector, and digital marketing analytics.

## Contributing

Found a typo or an error? Have a suggestion for improvement? Please [open an issue](https://github.com/rich-iannone/pointblank-the-complete-guide/issues) or submit a pull request.

## License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/).
