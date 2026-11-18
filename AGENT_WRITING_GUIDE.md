# Writing Guide

Applies to code, comments, and docs. When responding to the human, write naturally; brevity isn't needed there.

## Short and self-explanatory

Short means fewer lines and fewer comments, not shorter names. A clear name beats a comment.

    def pushed
      prepare_data
      execute
      report_to_sentry
    end

No comment needed: the method names say what happens.

## Comment the why, not the what

Avoid:

    // Execute all pending sending and build the report
    void execute() {
       if (canSend()) { executePendingSending(); }
       buildReport();
    }

Preferred:

    void execute() {
       executePendingSendingIfAllowed();
       buildReport();
    }

Do comment what the code can't say: workarounds, constraints that aren't obvious, links to issues.
