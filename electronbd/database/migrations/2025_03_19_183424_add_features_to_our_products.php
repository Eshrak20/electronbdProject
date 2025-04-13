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
        Schema::table('our_products', function (Blueprint $table) {
            $table->json('features')->nullable()->after('description'); // Adding JSON column
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('our_products', function (Blueprint $table) {
            $table->dropColumn('features');
        });
    }
};
