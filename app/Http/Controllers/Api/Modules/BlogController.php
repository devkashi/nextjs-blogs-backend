<?php

namespace App\Http\Controllers\Api\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Controllers\Api\BaseController;
use App\Models\Blog;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Validator;

class BlogController extends BaseController
{
    //

    public function blogCreate(Request $request)
    {


        // return response()->json(request()->all());

        // return response()->json(request()->all());


        $blog = new Blog();
        $blog->title = $request->title;
        $blog->content = $request->content;
        $blog->status = "Active";



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
            $blog->image = $image_data;
        }

        $blog->save();
        if ($blog) {
            $success['blog'] = $blog;
            return $this->sendResponse($success, ' blog created  successfully.');
        }
        return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
    }


    public function getAllBlog(Request $request)
    {
        // Get the pageIndex and pageSize from the request, with default values
        $pageIndex = $request->input('pageIndex', 0); // Default pageIndex is 1
        $pageSize = $request->input('pageSize', default: 5); // Default pageSize is 15

        // Paginate the records based on pageIndex and pageSize
        $blog = Blog::select('id', 'title', 'content', 'status', 'image')
            ->paginate($pageSize, ['*'], 'page', $pageIndex);
        if ($blog) {
            $success['blog'] = $blog;
            $success['image_path'] = asset('uploads/image-original/');
            return $this->sendResponse($success, 'Blogs fetched successfully.');
        }
        return $this->sendError('Error', ['error' => 'Something went wrong, please try again']);
    }

    public function getSingleBlog(Request $request)
    {


        // Paginate the records based on pageIndex and pageSize
        $blog = Blog::find($request->id);

        if ($blog) {
            $success['blog'] = $blog;
            $success['single_image_path'] = asset('uploads/image-original/');
            return $this->sendResponse($success, 'Blogs fetched successfully.');
        }
        return $this->sendError('Error', ['error' => 'Something went wrong, please try again']);
    }


    public function deleteBlog($id)
    {
        $blog = Blog::find($id);

        $blog->delete();
        if ($blog) {
            $success['blog'] = $blog;
            return $this->sendResponse($success, ' Blog deleted  successfully.');
        }
        return $this->sendError('Error', ['error' => 'Somthing went wrong, please try again']);
    }


    public function updateBlog(Request $request)
    {
        // Find the blog by ID using a where clause
        $blog = Blog::where('id', $request->id)->first();

        // return response()->json($blog);
        if (!$blog) {
            return $this->sendError('Error', ['error' => 'Blog not found']);
        }

        // Update blog details
        $blog->title = $request->title;
        $blog->content = $request->content;
        $blog->status = 'Active';

        if ($request->hasFile('image')) {
            // Delete old image if it exists
            $image_path1 = "uploads/image-original/{$blog->image}";
            $image_path2 = "uploads/image-thumbnail/{$blog->image}";
            if (File::exists($image_path1)) {
                File::delete($image_path1);
            }
            if (File::exists($image_path2)) {
                File::delete($image_path2);
            }

            // Handle new image upload
            $file = $request->file('image');
            $time = time();

            // Save original image
            $ImageUpload = Image::make($file);
            $originalPath = 'uploads/image-original/';
            if (!file_exists($originalPath)) {
                mkdir($originalPath, 0755, true);
            }
            $ImageUpload->resize(960, 450);
            $ImageUpload->save($originalPath . $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension());

            // Save thumbnail image
            $thumbnailPath = 'uploads/image-thumbnail/';
            if (!file_exists($thumbnailPath)) {
                mkdir($thumbnailPath, 0755, true);
            }
            $ImageUpload->resize(960, 450);
            $ImageUpload->save($thumbnailPath . $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension());

            // Update image data in the blog
            $image_data = $time . md5($file->getClientOriginalName()) . '.' . $file->getClientOriginalExtension();
            $blog->image = $image_data;
        }

        // Save updated blog
        $blog->save();

        if ($blog) {
            $success['blog'] = $blog;
            return $this->sendResponse($success, 'Blog updated successfully.');
        } else {
            return $this->sendError('Error', ['error' => 'Something went wrong, please try again']);
        }
    }
}