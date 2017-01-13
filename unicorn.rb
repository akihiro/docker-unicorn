process   = ENV['PROCESS'] || 1
dir       = ENV['DIR']     || '/unicorn'
listen    = ENV['LISTEN']  || '/unicorn/unicorn.sock'

worker_processes process

listen listen

pid "#{dir}/unicorn.pid"

stdout_path '/var/log/unicorn/stdout.log'
stderr_path '/var/log/unicorn/stderr.log'
