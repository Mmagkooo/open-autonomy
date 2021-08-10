#!/usr/bin/env sh

aea generate-key ethereum
aea config set vendor.valory.skills.price_estimation_abci.models.price_api.args.source_id coinbase
aea config set vendor.valory.skills.price_estimation_abci.models.params.args.consensus.max_participants 4
aea config set vendor.valory.skills.price_estimation_abci.models.params.args.tendermint_url http://node2:26657
aea build
