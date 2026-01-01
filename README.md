[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/btp-admin-guide-samples)](https://api.reuse.software/info/github.com/SAP-samples/btp-admin-guide-samples)
[![Periodic Link Checker](https://github.com/SAP-samples/btp-admin-guide-samples/actions/workflows/links-watcher-cron.yml/badge.svg)](https://github.com/SAP-samples/btp-admin-guide-samples/actions/workflows/links-watcher-cron.yml)

# SAP BTP - Administrator's Guide Samples

## Description

This repository provides samples based on the recommendations given in the [SAP BTP Administrator's Guide](https://help.sap.com/docs/btp/btp-admin-guide/btp-admin-guide) specifically the section [Setting Up Your Account Model](https://help.sap.com/docs/btp/btp-admin-guide/setting-up-your-account-model).

These samples show the implementation of the recommendations using Infrastructure as Code, namely [Terraform](https://www.terraform.io/) or [OpenTofu](https://opentofu.org/). They help you getting started with a sustainable setup of your SAP BTP accounts following our best practices.

## Content Structure

The samples are available in the folder `sample-setups`. We provide each scenario in a separate folder. Each folder contains a `README.md` file describing the details.

You find further details in the [`READEME.md`](./sample-setups/README.md) file of the `sample-setups` folder and in the `README.md` files of the individual sample setups

In addition, we have a folder `modules` containing reusable Terraform modules. These modules are used in the sample setups.

## Getting Support

❓ - If you have a *question*, ask it in [GitHub Discussions](https://github.com/SAP-samples/btp-admin-guide-samples/discussions/).

🐞 - If you find a bug, please create a [bug report](https://github.com/SAP-samples/btp-admin-guide-samples/issues/new?assignees=&labels=bug%2Cneeds-triage&projects=&template=bug_report.yml&title=%5BBUG%5D).

💡 - If you have an idea for improvement or a feature request, feel free to open a [feature request](https://github.com/SAP-samples/btp-admin-guide-samples/issues/new?assignees=&labels=enhancement%2Cneeds-triage&projects=&template=feature_request.yml&title=%5BFEATURE%5D).

## Contributing

If you'd like to contribute code, fixes, or improvements, please create a pull request. Due to legal reasons, contributors must accept a DCO. When you create your first pull request to this project, you are automatically asked to accept the DCO. SAP uses [the standard DCO text of the Linux Foundation](https://developercertificate.org/).

## Code of Conduct

Members, contributors, and leaders pledge to make participation in our community a harassment-free experience. By participating in this project, you agree to always abide by its [Code of Conduct](https://github.com/SAP/.github/blob/main/CODE_OF_CONDUCT.md).

## License

Copyright (c) 2026 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.
