<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('press', function (Blueprint $table) {
            $table->id();
            $table->string('image'); // Image path
            $table->string('title'); // Press title
            $table->text('description'); // Press description
            $table->string('place')->nullable(); // Location of event
            $table->string('time')->nullable(); // Event time
            $table->string('when')->nullable(); // Additional time info
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('press');
    }
};
