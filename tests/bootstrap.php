<?php
require dirname(__DIR__) . '/vendor/autoload.php';
global $db_creds;
$db_creds = array(
  'host' => 'localhost',
  'user' => getenv('TDDIUM_DB_USER'),
  'pass' => getenv('TDDIUM_DB_PASSWORD'),
  'name' => getenv('TDDIUM_DB_NAME'),
  'port' => getenv('TDDIUM_DB_PORT'),
  'sock' => getenv('TDDIUM_DB_SOCKET')
);
