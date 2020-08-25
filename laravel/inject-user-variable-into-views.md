```php
<?php

namespace App\Http\Controllers;

use App\Models\Campaign;
use App\User;
use Illuminate\Contracts\Auth\Factory;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Contracts\Auth\StatefulGuard;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\View;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     * @var Factory|Guard|StatefulGuard $auth
     */
    protected $auth;

    /** @var User $user */
    protected $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->auth = auth('web');
            $this->user = $this->auth->user();

            View::share('user', $this->user);

            return $next($request);
        });
    }
}
```
