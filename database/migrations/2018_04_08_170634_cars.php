<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Cars extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cars', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('make_id')->unsigned();
            $table->integer('model_id')->unsigned();
            $table->string('title');
            $table->string('slug');
            $table->string('year');
            $table->string('price');
            $table->string('doors');
            $table->string('engine');
            $table->string('fuel');
            $table->string('driven_km');
            $table->string('color');
            $table->string('details');
            $table->timestamps();

            $table->engine = 'InnoDB';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('cars');
    }
}
