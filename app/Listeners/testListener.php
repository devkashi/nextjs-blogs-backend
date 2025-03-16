<?php

namespace App\Listeners;

use App\Events\test;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class testListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\test  $event
     * @return void
     */
    public function handle(test $event)
    {
        //
    }
}
