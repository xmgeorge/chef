# Name of the role should match the name of the file
name "vagrant-test-box"

override_attributes(
    "mysql" => {
        "server_root_password" => 'iloverandompasswordsbutthiswilldo',
        "server_repl_password" => 'iloverandompasswordsbutthiswilldo',
        "server_debian_password" => 'iloverandompasswordsbutthiswilldo'
    }
)

# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
    "recipe[openssl]",
    "recipe[build-essential]",
    "recipe[git]",
    "recipe[apache2]",
    "recipe[apache2::mod_php5]",
#    "recipe[apache2::mpm_worker]",
    "recipe[mysql::client]",
    "recipe[mysql::server]",
    "recipe[php]",
    "recipe[php::module_mysql]",
    "recipe[test_site]"
)
