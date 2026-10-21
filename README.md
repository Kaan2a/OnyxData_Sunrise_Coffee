# Sunrise Coffee Chain Analytics

An Onyx Data project using PostgreSQL analysis, an English findings report, and a planned Power BI dashboard.

## Project structure

| Location | Contents |
|---|---|
| `sql/01_data_exploration.sql` | Store distribution, operational statistics, and regional costs |
| `sql/02_data_quality.sql` | Missing values, duplicates, product launch dates, table relationships, and calendar checks |
| `sql/03_profitability_analysis.sql` | Regional and London store profitability; South London Corner monthly profitability and annual costs |
| `sql/04_customer_transaction_analysis.sql` | Analysis 10: data coverage, a store/date example, and the original draft query |
| `sql/05_product_performance.sql` | Analysis 11: table previews, revenue reconciliation, and annual category revenue |
| [reports/analysis_notes.md](reports/analysis_notes.md) | Existing English analysis report; original content preserved |
| `dashboard/` | Reserved for Power BI files; the dashboard has not been built |

## Current status

On October 21, 2026, the earlier Codex changes were reverted and the original query blocks were organized by topic. The user subsequently approved four punctuation corrections and the regional query's `month_id` correction. Those changes have been applied. All active project documentation and code comments use English.


## Original backup

The 10 files saved before the first Codex edits are preserved at:

`.local/backups/2026-10-21-original-before-codex/`

This backup was copied from the original `2026-10-21-before-cleanup` snapshot and includes the user's uncommitted work at that time. Every file was verified using SHA-256. The historical backup remains unchanged, including any original non-English text. `.local/` is excluded from Git.

To restore the original state, copy the backed-up `README.md`, SQL files, CSV files, and `reports/analysis_notes.md` to their matching project paths. Do not copy `manifest.json` or `BACKUP_INFO.txt` into the project root.
