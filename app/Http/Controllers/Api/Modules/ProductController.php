<?php

namespace App\Http\Controllers\Api\Modules;

use App\Http\Controllers\Api\BaseController;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;


class ProductController extends BaseController
{
    public function getTotalList()
    {
        $list= Product::get();
        if($list){
            $success['product_list']=$list;
            return $this->sendResponse($success, ' Products list fetched successfully.');
        }
        return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);

    }

public function ProductCreate(Request $request){

    
    $validator = Validator::make($request->all(), [
        'prod_name' => 'required',
        'prod_price' => 'required',
        'prod_desc' => 'required',
        
    ]);

    if ($validator->fails()) {
        return $this->sendError('Validation Error.', $validator->errors());
    }

    $product=new Product();
    $product->prod_name=$request->prod_name;
    $product->prod_price=$request->prod_price;
    $product->prod_desc=$request->prod_desc;
   
// return response()->json('ki');
    if ($request->hasFile('image')) {

        $file = $request->file('image');
        $time = time();
         // for save original image
         $ImageUpload = Image::make($file);
         $originalPath = 'uploads/image-original/';
         if (!file_exists($originalPath)) {
             mkdir($originalPath, 666, true);
         }
         $ImageUpload->resize(960, 450);
         $ImageUpload->save($originalPath . $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension());

         // for save thumbnail image
         $thumbnailPath = 'uploads/image-thumbnail/';
         if (!file_exists($thumbnailPath)) {
             mkdir($thumbnailPath, 666, true);
         }
         $ImageUpload->resize(960, 450);
         $ImageUpload->save($thumbnailPath . $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension());

         $image_data = $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension();
         $product->image = $image_data;

    }
    $product->save();


    if($product){
        $success['product']=$product;
        return $this->sendResponse($success, ' product created  successfully.');
    }
    return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
}


public function ProductUpdate(Request $request ,$id){


    $product = Product::where('id',$id)->update(
    [
        'prod_name'=>$request->prod_name,
        'prod_price'=>$request->prod_price,
        'prod_desc'=>$request->prod_desc,
    ]);

    if ($request->hasFile('image')) {
        //old image id delete when update
        $image_path1 = "uploads/image-original/$data->image";
        $image_path2 = "uploads/image-thumbnail/$data->image";
        if (File::exists($image_path1)) {
            File::delete($image_path1);
        }
        if (File::exists($image_path2)) {
            File::delete($image_path2);
        }
        //old image id delete when update


        $file = $request->file('image');
        $time = time();

        // for save original image
        $ImageUpload = Image::make($file);
        $originalPath = 'uploads/image-original/';
        if (!file_exists($originalPath)) {
            mkdir($originalPath, 666, true);
        }
        $ImageUpload->resize(960, 450);
        $ImageUpload->save($originalPath . $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension());

        // for save thumbnail image
        $thumbnailPath = 'uploads/image-thumbnail/';
        if (!file_exists($thumbnailPath)) {
            mkdir($thumbnailPath, 666, true);
        }
        $ImageUpload->resize(960, 450);
        $ImageUpload->save($thumbnailPath . $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension());

        $image_data = $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension();
        $product->image = $image_data;
    }
        $product->save();

    if($product){
        $success['product']=$product;
        return $this->sendResponse($success, ' product updated  successfully.');
    }
    return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);

}


public function show($id)
{
    $product = Product::find($id);
    if ($product){
        $success['product']=$product;
        return $this->sendResponse($success, ' product fetched  successfully.');  
    }
    return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
}


}