process   = ENV['PROCESS'] || 1
dir       = ENV['DIR']     || '/unicorn'
listen    = ENV['LISTEN']  || '/unicorn/unicorn.sock'
stdout    = ENV['STDOUT']
stderr    = ENV['STDERR']

worker_processes process

listen listen

pid "#{dir}/unicorn.pid"

if stdout.empty? then
  stderr_path stdout
end

if stderr.empty? then
  stdout_path stderr
end
