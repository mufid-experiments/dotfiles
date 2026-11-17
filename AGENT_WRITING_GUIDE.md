# GENERAL WRITING GUIDELINE

When writing code and documentation, please write as short as possible, and as self-explanatory as possible. For example, code can be

    def pushed
      prepare_data
      execute
      report_to_sentry
    end

and no comment is necessary. When responding to the human, write naturally; you don't need to be brief there. Keep brevity for code and documentation.

## More example on Comments, Naming, and self-explanation

Make comments minimal and for name make sure it is self-explanatory.

Avoid:

    // Execute all pending sending and build the report
    void execute() {
       if (!canSend()) { executePendingSending(); }
       buildReport();
    }

Preferred:

    void execute() {
       executePendingSendingIfApplicable();
       buildReport();
    }

Notice that the code is self-explanatory and no comments are necessary for that.


