module MCollective
  module Agent
    class Haproxyctl<RPC::Agent

      activate_when do
        File.exists?('/usr/sbin/haproxy')
        File.exists?('/usr/bin/haproxyctl')
      end

      action 'show' do
	haproxyctl = "/usr/bin/haproxyctl"
	mode = get_mode
        haproxyctl_command = "#{haproxyctl} show #{mode}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end

      action 'enable' do
	haproxyctl = "/usr/bin/haproxyctl"
	server = get_server
        haproxyctl_command = "#{haproxyctl} enable #{server}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end

      action 'enable_all' do
	haproxyctl = "/usr/bin/haproxyctl"
	server = get_server
        haproxyctl_command = "#{haproxyctl} enable all #{server}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end

      action 'enable_all_except' do
	haproxyctl = "/usr/bin/haproxyctl"
	server = get_server
        haproxyctl_command = "#{haproxyctl} enable all EXCEPT #{server}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end

      action 'disable' do
	haproxyctl = "/usr/bin/haproxyctl"
	server = get_server
        haproxyctl_command = "#{haproxyctl} disable #{server}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end

      action 'disable_all' do
	haproxyctl = "/usr/bin/haproxyctl"
	server = get_server
        haproxyctl_command = "#{haproxyctl} disable all #{server}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end

      action 'disable_all_except' do
	haproxyctl = "/usr/bin/haproxyctl"
	server = get_server
        haproxyctl_command = "#{haproxyctl} disable all EXCEPT #{server}"

        begin
          Log.info("#{haproxyctl_command}")
          reply[:status] = run("#{haproxyctl_command}", :stdout => :out, :stderr => :err, :chomp => true)
        rescue => e
          reply.fail(reply[:status] = "Error running command: %s" % e.to_s)
        end
      end
  		
      def get_mode
        request[:mode] || false
      end

      def get_server
        request[:server] || false
      end

    end
  end
end
