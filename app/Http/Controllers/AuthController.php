<?php

    namespace App\Http\Controllers;

    use App\Models\Employee;
    use App\Models\EmployeeUpload;
    use App\Models\Role;
    use App\Models\UserRole;
    use App\Promotion;

    use App\User;
    use Carbon\Carbon;
    use Illuminate\Http\Request;
    use Illuminate\Contracts\Mail\Mailer;
    use App\Http\Requests;
    use Illuminate\Support\Facades\Hash;
    use App\Http\Controllers\Controller;
    use Illuminate\Support\Facades\Validator;
    use Illuminate\Foundation\Auth\RegistersUsers;
    use Illuminate\Auth\Events\Registered;
    use Illuminate\Database\Eloquent\Model;
    use Illuminate\Support\Facades\Input;
    use App\Jobs\ExportData;


use Illuminate\Http\Response;







    class AuthController extends Controller
    {
        use RegistersUsers;
        public function __construct(Mailer $mailer)
        {
            $this->mailer = $mailer;
        }

        public function showLogin()
        {
            return view('hrms.auth.login');
        }

        public function doLogin(Request $request)
        {
            $name    = $request->name;
            $password = $request->password;

            $user = User::where('name', $name)->first();
            if ($user) {

                if (\Auth::attempt(['name' => $name, 'password' => $password])) {
                    return redirect()->to('welcome');
                } else {
                    \Session::flash('class', 'alert-danger');
                    \Session::flash('message', 'User id or password does not match!');
                }
            } else {
                \Session::flash('class', 'alert-danger');
                \Session::flash('message', 'User id or password does not match!');
            }

            return redirect()->to('/login');
        }

        public function doLogout()
        {
            \Auth::logout();

            return redirect()->to('/');
        }

        public function dashboard()
        {
            

            return view('hrms.dashboard');
        }

        public function welcome()
        {
            return view('hrms.auth.welcome');
        }

        public function notFound()
        {
            return view('hrms.auth.not_found');
        }

        public function showRegister()
        {
            return view('hrms.auth.register');
        }

        public function doRegister(Request $request){
            $this->validate($request, [
                'name' => ['required', 'string', 'max:255'],
                'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
                'password' => ['required', 'string','min:6', 'confirmed'],
            ]);

            $user = new User();
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->password = bcrypt($request->input('password'));
            $user->save();
        

        $emp                       = new \App\Models\Employee();
        $emp->name                 = $request->input('name');
        $emp->code                 = 'HR0002';
        $emp->status               = 1;
        $emp->gender               = 1;
        $emp->date_of_birth        = '0000-00-00';
        $emp->date_of_joining      = '0000-00-00';
        $emp->number               = '9999';
        $emp->qualification        = '';
        $emp->emergency_number     = '';
        $emp->pan_number           = '';
        $emp->father_name          = '';
        $emp->current_address      = '';
        $emp->permanent_address    = '';
        $emp->formalities          = 0;
        $emp->offer_acceptance     = 0;
        $emp->probation_period     = '';
        $emp->date_of_confirmation = '0000-00-00';
        $emp->department           = '';
        $emp->salary               = '';
        $emp->account_number       = '';
        $emp->bank_name            = '';
        $emp->ifsc_code            = '';
        $emp->pf_account_number    = '';
        $emp->un_number            = '';
        $emp->pf_status            = '';
        $emp->date_of_resignation  = 0;
        $emp->notice_period        = 0;
        $emp->last_working_day     = '0000-00-00';
        $emp->full_final           = 0;
        $emp->user_id              = $user->id;
       

        $emp->save();

            $userRole          = new \App\Models\UserRole();
            $userRole->role_id = '1';
            $userRole->user_id = $user->id;
            $userRole->save();


            \Session::flash('class', 'alert-success');
                    \Session::flash('message', 'Registered successfully!');
            return redirect()->to('/login');
            


        }

        public function calendar()
        {
            return view('hrms.auth.calendar');
        }

        public function changePassword()
        {
            return view('hrms.auth.change');
        }

        public function processPasswordChange(Request $request)
        {
            $password = $request->old;
            $user     = User::where('id', \Auth::user()->id)->first();


            if (Hash::check($password, $user->password)) {
                $user->password = bcrypt($request->new);
                $user->save();
                \Auth::logout();

                return redirect()->to('/')->with('message', 'Password updated! LOGIN again with updated password.');
            } else {
                \Session::flash('flash_message', 'The supplied password does not matches with the one we have in records');

                return redirect()->back();
            }
        }

        public function resetPassword()
        {
            return view('hrms.auth.reset');
        }

        public function processPasswordReset(Request $request)
        {
            $name = $request->name;
            $user  = User::where('name', $name)->first();

            if ($user) {
                $string = strtolower(str_random(6));


                $this->mailer->send('hrms.auth.reset_password', ['user' => $user, 'string' => $string], function ($message) use ($user) {
                    $message->from('no-reply@dipi-ip.com', 'Digital IP Insights');
                    $message->to($user->name, $user->name)->subject('Your new password');
                });

                \DB::table('users')->where('name', $name)->update(['password' => bcrypt($string)]);

                return redirect()->to('/')->with('message', 'Login with your new password received on your name');
            } else {
                return redirect()->to('/')->with('message', 'Your name is not registered');
            }

        }

        public function convertToArray($values)
        {
            $result = [];
            foreach ($values as $key => $value) {
                $result[$key] = $value;
            }

            return $result;
        }

    }
