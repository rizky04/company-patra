<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\Project as Model;
use App\Http\Requests\StoreProjectRequest;
use App\Http\Requests\UpdateProjectRequest;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class ProjectController extends Controller
{

    private $viewIndex = 'project_index';
    private $viewCreate = 'project_form';
    private $viewEdit = 'project_form';
    private $viewShow = 'project_show';
    private $routePrefix = 'projects';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('data-project.' . $this->viewIndex,[
            'models' => Model::latest()->paginate(50),
            'routePrefix' => $this->routePrefix,
            'title' => 'Data Project'
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
            'title' => 'Form Data Project'
        ];
        return view('data-project.'. $this->viewCreate, $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreProjectRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreProjectRequest $request)
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
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = [
            'model' => Model::findOrFail($id),
            'method' => 'PUT',
            'route' => [$this->routePrefix . '.update', $id],
            'button' => 'UPDATE',
            'title' => 'Ubah Data Project'
        ];
        return view('data-project.' . $this->viewEdit, $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateProjectRequest  $request
     * @param  \App\Models\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProjectRequest $request, $id)
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
     * @param  \App\Models\Project  $project
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
