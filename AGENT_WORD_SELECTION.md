# Word Preference

## When To Apply

Apply these rules to everything you write: identifiers, code comments, commit messages, PR descriptions and docs.

## `coalesce` or `decide` instead of `settle`

Keep `settle` for money: payments and trades.

- `coalesce`: merge several pending actions into one.
- `decide`: give one pending item an outcome.

- Disliked: `settleFutureActions`
- Preferred: `coalesceFutureActions`

- Disliked: `settlePendingQuery`
- Preferred: `decidePendingQuery`

OK: `settlePaymentNow`, `settleTrade`

## `preserve` instead of `hold`

Use `preserve` when data is kept so it isn't lost. Keep `hold` for money and assets.

- Disliked: `holdOriginalPayload`
- Preferred: `preserveOriginalPayload`

OK: `holdBalance`, `releaseHold`

## `backfill` instead of `seed`

Keep `seed` for development data, like Rails `seeds.rb`. Filling in existing data, or moving it between databases, is a `backfill`.

- Disliked: `seedLegacyUsers`
- Preferred: `backfillLegacyUsers`

OK: `db/seeds.rb`

## Caching-related names

Choose normal name like `get`, `retrieve`, and `put`.

## Prefer "form" or "format" over shape, and "design" over "model"

- Disliked: Row shape (modelled on the PaperTrail versions table)
- Preferred: Row format (designed from PaperTrail versions table

Use "model" if means actual model, e.g.: model as in Model-View-Controller, or Large Language Model, or human model/artist.

Use "shape" if means like physical shape, buildin shape, etc.
