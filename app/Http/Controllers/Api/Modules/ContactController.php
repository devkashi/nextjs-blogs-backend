<?php

namespace App\Http\Controllers\Api\Modules;

use App\Http\Controllers\Api\BaseController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Contact;

class ContactController extends BaseController
{

    public function contactCreate(Request $request)
    {

        // return response()->json('hi');




        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->message = $request->message;


        $contact->save();


        if ($contact) {
            $success['contact'] = $contact;
            return $this->sendResponse($success, ' contact created  successfully.');
        }
        return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
    }

    // public function getAllContact(Request $request)
    // {


    //     $messages = Contact::select('id', 'message', 'name', 'email')->get();

    //     if ($messages) {
    //         $success['messages'] = $messages;
    //         return $this->sendResponse($success, ' messages fetched  successfully.');
    //     }
    //     return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
    // }



    public function getAllContact(Request $request)
    {
        // Get the pageIndex and pageSize from the request, with default values
        $pageIndex = $request->input('pageIndex', 0); // Default pageIndex is 1
        $pageSize = $request->input('pageSize', default: 5); // Default pageSize is 15

        // Paginate the records based on pageIndex and pageSize
        $messages = Contact::select('id', 'message', 'name', 'email')
            ->paginate($pageSize, ['*'], 'page', $pageIndex);

        if ($messages) {
            $success['messages'] = $messages;
            return $this->sendResponse($success, 'Messages fetched successfully.');
        }

        return $this->sendError('Error', ['error' => 'Something went wrong, please try again']);
    }



    public function deleteContact($id)
    {
        $contact = Contact::find($id);

        $contact->delete();
        if ($contact) {
            $success['message'] = $contact;
            return $this->sendResponse($success, ' message deleted  successfully.');
        }
        return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
    }


    public function updateMessage(Request $request)
    {

        $validator = Validator::make($request->all(), [

            'name' => 'required',
            'email' => 'required',
            'message' => 'required',

        ]);

        $contact = Contact::find($request->id);

        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->message = $request->message;

        $contact->save();

        if ($contact) {

            $success['message'] = $contact;
            return $this->sendResponse($success, ' message updated  successfully.');
        } else {
            return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
        }
    }
}
