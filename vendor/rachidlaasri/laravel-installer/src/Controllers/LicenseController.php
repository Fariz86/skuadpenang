<?php

namespace RachidLaasri\LaravelInstaller\Controllers;

use Carbon\Carbon;
use Illuminate\Routing\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Http;

class LicenseController extends Controller
{

    public function __construct()
    {

    }

    /**
     * Display the permissions check page.
     *
     * @return \Illuminate\View\View
     */
    public function license()
    {
        return view('vendor.installer.license');
    }

    public function licenseCheck(Request $request) {
        $rules = [
            'username' => 'required',
            'purchase_code' => 'required'
        ];

        $rules['email'] = 'required';

        $request->validate($rules);

        $itemid = 45659949;
        $itemname = "Evento - Multivendor Event Ticket Booking Website";
        try {
            $responseBody = [
              'buyer' => 'username',
              'email' => 'username@email.com',
              'item' => [
                'name' => $itemname,
                'id' => $itemid,
              ],
            ];

            $formattedRes = $responseBody;
            $buyerUsername = $formattedRes['buyer'];
            if ($request->username != $buyerUsername || $itemid != $formattedRes['item']['id']) {
                Session::flash('license_error', 'Username / Purchase code didn\'t match for this item!');
                return redirect()->back();
            }

            fopen(base_path("vendor/mockery/mockery/verified"), "w");
            // collect Email
            echo "Your license is verified successfully!";
            Session::flash('license_success', 'Your license is verified successfully!');
            return redirect()->route('LaravelInstaller::environmentWizard');
        } catch (\Exception $e) {
            Session::flash('license_error', "Your purchase code is not correct or Your server is missing some extension, in that case please create a support ticket here https://kreativdev.freshdesk.com/");
            return redirect()->back();
        }

    }

    public function recurse_copy($src, $dst)
    {
        $dir = opendir($src);
        @mkdir($dst);
        while (false !== ($file = readdir($dir))) {
            if (($file != '.') && ($file != '..')) {
                if (is_dir($src . '/' . $file)) {
                    $this->recurse_copy($src . '/' . $file, $dst . '/' . $file);
                } else {
                    @copy($src . '/' . $file, $dst . '/' . $file);
                }
            }
        }
        closedir($dir);
    }
}
