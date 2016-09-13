require "dev-cmd/audit"

class FormulaAuditor
  def problems
    @problems.delete_if { |p|
      # Google doesn't give us SHA256 checksums, or we'd use them
      p[/^Stable: SHA1 checksums are deprecated, please use SHA256/]  ||

      # We want the version no matter what
      p[/^Stable: version [0-9\.]+ is redundant/]                     ||
      
      # We do our best at getting a description
      p[/^Description is too long\./]                                 ||
      p[/^Formula should have a desc \(Description\)\./]              ||
      
      # We can't really control this
      p[/^The installation was broken\./]                             ||

      # End with false so that our "ors" line up above
      false
    }
  end
end

Homebrew.audit
