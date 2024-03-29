<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Hash;

class InstallAdmin extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'install:admin';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Install System Admin';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $user = new User([
            'name' => 'BMS Admin',
            'email' => 'abcd1234@gmail.com',
            'phone_no' => '9863427890',
            'password' => Hash::make('abc123'),
            'user_type' => 1
        ]);
        if($user->save()){
            $this->info('Account Insert Successful');
        }else{
            $this->info('Account Insert Failed');
        }
    }
}
