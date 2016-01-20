## CI Memes using Docker Compose

Example repository demonstrating using `docker-compose` on Solano CI to create an application stack
for testing against.

A brief description of the build process on Solano CI:

* The `pre_setup`
[setup hook](http://docs.solanolabs.com/Setup/setup-hooks/http://docs.solanolabs.com/Setup/setup-hooks/)
will ensure that necessary dependencies are installed and then use `docker-compose` to download and build the necessary images. 
* The `worker_setup` hook will bring up a unique application stack and create a test database for each worker. 
* The tests are automatically run in parallel on the workers by using [solano-phpunit](https://github.com/solanolabs/solano-phpunit).
* The `post_worker` hook collects the Docker Compose log files and attach them to the build page 

Technologies used:

- Docker and Docker Compose
- Nginx
- PHP-FPM
- Mysql
- Solano CI
