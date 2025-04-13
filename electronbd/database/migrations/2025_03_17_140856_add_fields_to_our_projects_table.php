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
        Schema::table('our_projects', function (Blueprint $table) {
            $table->string('status')->after('description');
            $table->string('owner')->after('status');
            $table->string('area')->after('owner');
            $table->date('commercial_operation_date')->default(now())->after('area');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('our_projects', function (Blueprint $table) {
            $table->dropColumn(['status', 'owner', 'area', 'commercial_operation_date']);
        });
    }
};

