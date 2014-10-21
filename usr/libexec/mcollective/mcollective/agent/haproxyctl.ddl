metadata    :name        => "haproxyctl",
            :description => "Manage haproxy backends via haproxyctl",
            :author      => "D.Whatmuff",
            :license     => "GPL",
            :version     => "0.0.1",
            :url         => "http://github.com",
            :timeout     => 180

requires :mcollective => "2.2.1"

action "enable", :description => "re-enable a server that was previously in maintenance mode" do
  input :server,
        :prompt      => "Server Name",
        :description => "re-enable a server that was previously in maintenance mode",
        :type        => :string,
        :validation  => :shellsafe,
        :optional    => false,
        :maxlength   => 90

  output :output,
         :description => "Output from haproxyctl",
         :display_as  => "Output"

  output :exitcode,
         :description => "The exitcode from the haproxyctl command",
         :display_as => "Exit Code"
end

action "enable_all", :description => "Enable a server in all backends" do
  input :server,
        :prompt      => "Server Name",
        :description => "Enable a server in all backends",
        :type        => :string,
        :validation  => :shellsafe,
        :optional    => false,
        :maxlength   => 90

  output :output,
         :description => "Output from haproxyctl",
         :display_as  => "Output"

  output :exitcode,
         :description => "The exitcode from the haproxyctl command",
         :display_as => "Exit Code"
end

action "enable_all_except", :description => "Enable a server in all backends" do
  input :server,
        :prompt      => "Server Name",
        :description => "re-enables every backend except for <server>",
        :type        => :string,
        :validation  => :shellsafe,
        :optional    => false,
        :maxlength   => 90

  output :output,
         :description => "Output from haproxyctl",
         :display_as  => "Output"

  output :exitcode,
         :description => "The exitcode from the haproxyctl command",
         :display_as => "Exit Code"
end

action "disable", :description => "set a server in maintenance mode" do
  input :server,
        :prompt      => "Server Name",
        :description => "set a server in maintenance mode",
        :type        => :string,
        :validation  => :shellsafe,
        :optional    => false,
        :maxlength   => 90

  output :output,
         :description => "Output from haproxyctl",
         :display_as  => "Output"

  output :exitcode,
         :description => "The exitcode from the haproxyctl command",
         :display_as => "Exit Code"
end

action "disable_all", :description => "Disable a server in all backends" do
    input :server,
          :prompt      => "server",
          :description => "Disable a server in all backends",
          :type        => :string,
          :validation  => :shellsafe,
          :optional    => false,
          :maxlength   => 90

    output :output,
           :description => "Output from haproxyctl",
           :display_as  => "Output"

    output :exitcode,
           :description => "The exitcode from the haproxyctl command",
           :display_as => "Exit Code"
   end

action "disable_all_except", :description => "Disable a server in all backends" do
    input :server,
          :prompt      => "server",
          :description => "disables every backend except for <server>",
          :type        => :string,
          :validation  => :shellsafe,
          :optional    => false,
          :maxlength   => 90

    output :output,
           :description => "Output from haproxyctl",
           :display_as  => "Output"

    output :exitcode,
           :description => "The exitcode from the haproxyctl command",
           :display_as => "Exit Code"
   end

action "show", :description => "Show health, backends, info, stat, errors" do
    display :always
  input :mode,
        :prompt      => "mode",
        :description => "Show health, backends, info, stat, errors",
        :type        => :list,
        :optional    => false,
        :list        => ["health", "backends", "info", "stat", "errors"]

end
