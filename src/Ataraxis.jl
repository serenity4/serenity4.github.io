module Ataraxis

using Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Ataraxis))

  include(joinpath("..", "genie.jl"))

  Base.eval(Main, :(const Genie = Ataraxis.Genie))
  Base.eval(Main, :(using Genie))
end; main()

end
