<?php
return [
    'db' => [
        // Local development configuration
        'local' => [
            'host' => 'localhost',
            'dbname' => 'tdw',
            'user' => 'root',
            'password' => ''
        ],
        // Production configuration
        'production' => [
            'host' => 'your_production_host',
            'dbname' => 'your_production_db',
            'user' => 'your_production_user',
            'password' => 'your_production_password'
        ]
    ]
];
