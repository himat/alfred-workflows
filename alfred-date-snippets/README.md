# Fuzzy date inputter 
Alfred Workflow

You simply type one of the commands below anywhere on your computer and the appropriate action is taken to insert a date

## Commands
- `;d`: Opens a prompt to enter a natural language input which gets turned into a date like `4/6/20` (displays in your locale)
- `;rd`: Opens a prompt to enter a natural language input which gets turned into a date like `[[April 6th, 2020]]` (formatted for Roam)
- `;ld`: Opens a prompt to enter a natural language input which gets turned into a date like `April 6th, 2020`
- `;today`: Convenience command to enter today's date without a prompt like `4/6/20` (displays in your locale)
- `;rtoday`: Convenience command to enter today's date without a prompt like `[[April 6th, 2020]]` (formatted for Roam)
- `;ltoday`: Convenience command to enter today's date without a prompt like `April 6th, 2020`

### TODO
- Add a preprocessing step first to add support for things like "1d", "2w", "3m" etc. 
    - See https://github.com/deanishe/alfred-relative-dates
