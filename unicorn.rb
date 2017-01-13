process   = ENV['PROCESS'] || 1
listen    = ENV['LISTEN']  || '/unicorn/unicorn.sock'

worker_processes process

listen listen

stdout_path '/var/log/unicorn/stdout.log'
stderr_path '/var/log/unicorn/stderr.log'
