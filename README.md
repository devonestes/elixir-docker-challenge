# The "Connect to an Erlang Node in a Docker Container" Challenge!

Elixir & Erlang are made for distributed programming and networking.
But can you connect to a running Elixir/Erlang node in a Docker container?

This repo has three scripts in the root directory:
  * `start_local.sh` which builds and starts a release locally
  * `start_docker.sh` which builds and starts that same release in a Docker container
  * `connect.sh` which connects to that running node once it's been started

To get started, just make sure you can run `start_local.sh` and then in a separate
shell run `connect.sh` to make sure you can connect to the local node just fine.

Once you've done that the challenge begins! Shut down your two nodes, and then do
whatever you can to run `start_docker.sh` and then `connect.sh` and get the two
nodes to talk to each other!

Feel free to edit anything in this repo - including those scripts themeselves - to
make this work. Want to edit how the release is built - go for it! Need to change
some configuration in the app - be my guest! Want to mess around with the Dockerfile -
go to town!

If you've got some configuration that allows you to run `start_docker.sh` and then `connect.sh`
that connects those two nodes together, then make a PR here to show off your answer! Once we've
got a few working solutions I'll put a poll up somewhere and the community can pick their favorite
way of making it happen.

The only rule is no cheating and running a second container and then using something
like `docker-compose` to handle the networking for you.
