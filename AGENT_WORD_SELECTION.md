# Word Preference

## When To Apply

Apply these rules to everything you write: identifiers, code comments, commit messages, PR descriptions and docs.

## `coalesce` or `decide` instead of `settle`

Keep `settle` for money: payments and trades.

- `coalesce`: merge several pending actions into one.
- `decide`: give one pending item an outcome.

Disliked: `settleFutureActions`
Preferred: `coalesceFutureActions`

Disliked: `settlePendingQuery`
Preferred: `decidePendingQuery`

OK: `settlePaymentNow`, `settleTrade`

## `preserve` instead of `hold`

Use `preserve` when data is kept so it isn't lost. Keep `hold` for money and assets.

Disliked: `holdOriginalPayload`
Preferred: `preserveOriginalPayload`

OK: `holdBalance`, `releaseHold`

## `backfill` instead of `seed`

Keep `seed` for development data, like Rails `seeds.rb`. Filling in existing data, or moving it between databases, is a `backfill`.

Disliked: `seedLegacyUsers`
Preferred: `backfillLegacyUsers`

OK: `db/seeds.rb`
