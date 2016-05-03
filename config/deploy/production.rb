set :stage, :production
server 'ec2-54-194-84-178.eu-west-1.compute.amazonaws.com', user: 'ubuntu', roles: %w{web app}
