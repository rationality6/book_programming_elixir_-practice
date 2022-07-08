defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %Customer{}, details: "", severity: 1
end


# c0 = %Customer{name: 'Dave', company: "coupang"}
# report0 = %BugReport{owner: c0, details: "broken"}
# report1 = %BugReport{owner: %Customer{name: 'PragProg', company: "coupang"}, details: "broken"}
# report2 = put_in(report0.owner.company, "PragProg")
