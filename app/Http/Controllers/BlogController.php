<?php

namespace App\Http\Controllers;

use App\Models\Blog as Model;
use App\Http\Requests\StoreBlogRequest;
use App\Http\Requests\UpdateBlogRequest;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class BlogController extends Controller
{

    private $viewIndex = 'blog_index';
    private $viewCreate = 'blog_form';
    private $viewEdit = 'blog_form';
    private $viewShow = 'blog_show';
    private $routePrefix = 'blogs';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('data-blog.' . $this->viewIndex,[
            'models' => Model::latest()->paginate(50),
            'routePrefix' => $this->routePrefix,
            'title' => 'Data Berita'
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = [
            'model' => new Model(),
            'method' => 'POST',
            'route' => $this->routePrefix . '.store',
            'button' => 'SIMPAN',
            'title' => 'Form Data Berita'
        ];
        return view('data-blog.'. $this->viewCreate, $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreBlogRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreBlogRequest $request)
    {
        $requestData = $request->validated();

        if($request->hasFile('photo')){
             $requestData['photo'] = $request->file('photo')->store('public');
        }

        Model::create($requestData);
        flash('Data berhasil disimpan');
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = [
            'model' => Model::findOrFail($id),
            'method' => 'PUT',
            'route' => [$this->routePrefix . '.update', $id],
            'button' => 'UPDATE',
            'title' => 'Ubah Data Berita'
        ];
        return view('data-blog.' . $this->viewEdit, $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateBlogRequest  $request
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateBlogRequest $request, $id)
    {
        $requestData = $request->validated();
        $model = Model::findOrFail($id);
        if($request->hasFile('photo')){
         Storage::delete($model->photo);
         $requestData['photo'] = $request->file('photo')->store('public');
        }
         $model->fill($requestData);
         $model->save();
         flash('data berhasil diubah');
         return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model = Model::findOrfail($id);
        $model->delete();
        flash('Data berhasil dihapus');
        return back();
    }
}
