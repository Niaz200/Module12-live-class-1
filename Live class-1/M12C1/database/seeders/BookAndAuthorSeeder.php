<?php

namespace Database\Seeders;

use App\Models\Book;
use App\Models\Author;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class BookAndAuthorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;'); //Disable foreign key checks
        Book::truncate();
        Author::truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;'); // Re-enable foreign key checks


        $faker = Faker::create();

        //Create 10 authors

        for ($i = 0; $i < 10; $i++){
            $author = Author::create([
                'name' => $faker->name,
            ]);

            // Each author writes 2-5 books
            for ($j = 0; $j < $faker->numberBetween(2, 5); $j++){
                $book = Book::create([
                    'title' => $faker->sentence($nbWords = 3, $variableNbWords = true),
                ]);

                //Attach the book to the author
                $author->books()->attach($book->id);
            }
        }

    }
}
