<?php

namespace App\Http\Controllers;

use App\Models\Team as Model;
use App\Http\Requests\StoreTeamRequest;
use App\Http\Requests\UpdateTeamRequest;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class TeamController extends Controller
{
    private $viewIndex = 'team_index';
    private $viewCreate = 'team_form';
    private $viewEdit = 'team_form';
    private $viewShow = 'team_show';
    private $routePrefix = 'teams';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('data-team.' . $this->viewIndex,[
            'models' => Model::latest()->paginate(50),
            'routePrefix' => $this->routePrefix,
            'title' => 'Data Team'
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
            'title' => 'Form Data Team'
        ];
        return view('data-team.'. $this->viewCreate, $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreTeamRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTeamRequest $request)
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
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Team  $team
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
        return view('data-team.' . $this->viewEdit, $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateTeamRequest  $request
     * @param  \App\Models\Team  $team
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTeamRequest $request, $id)
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
     * @param  \App\Models\Team  $team
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
