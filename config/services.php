<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    ],
    'facebook' => [
        'client_id' => '919559202351112',
        'client_secret' => '2ff6fc2e7bd614c6c5b87ac4ff88d2f3',
        'redirect' => 'https://quiz360.online/login/facebook/callback',
    ],
    'google' => [
        'client_id' => '943880745748-jc7slhgtg3a2qajav0065aqkl15igrbt.apps.googleusercontent.com',
        'client_secret' => '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',
        'redirect' => 'https://quiz360.online/login/google/callback',
    ],

];
