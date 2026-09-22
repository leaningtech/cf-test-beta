# cf-test-beta

**Throwaway.** Safe to delete. Created 2026-09-22 by @codingfrog27.

Part of a two-repo harness used to answer three questions about Cloudflare Pages
before the labs + leaningtech.com monorepo merge:

1. Can an existing Pages project be **repointed** at a different repository, and do its
   environment variables survive? (Decides whether the merge repoints 3 projects or
   recreates them, losing their Functions secrets.)
2. Does a Pages project survive its repo being **renamed**?
3. Does a Pages project survive its repo being made **private**?

Cloudflare's docs are silent on all three. This harness answers them without touching a
project that matters.

`npm run build` writes `dist/index.html` echoing `$MARKER`, `$TEST_VAR` and
Cloudflare's own `CF_PAGES_*` build variables, so the deployed page shows which repo
built it and whether the env vars carried over.

Delete both repos and the Pages project when the results are recorded.
