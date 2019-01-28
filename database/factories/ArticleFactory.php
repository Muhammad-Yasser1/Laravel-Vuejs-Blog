<?php

use Faker\Generator as Faker;

$factory->define(App\Article::class, function (Faker $faker) {
    return [
        'title' => $faker->text(50),
        'content' => $faker->paragraph(),
        'image' => 'default-image.jpeg',
        'author' => 'Muhammad Yasser'
    ];
});
