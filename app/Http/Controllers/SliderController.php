<?php

namespace App\Http\Controllers;

use App\Models\Slider as Model;
use App\Http\Requests\StoreSliderRequest;
use App\Http\Requests\UpdateSliderRequest;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class SliderController extends Controller
{
    private $viewIndex = 'sliders_index';
    private $viewCreate = 'sliders_form';
    private $viewEdit = 'sliders_form';
    private $viewShow = 'sliders_show';
    private $routePrefix = 'slides';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('data-sliders.' . $this->viewIndex,[
            'models' => Model::latest()->paginate(50),
            'routePrefix' => $this->routePrefix,
            'title' => 'Data Slide'
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
            'title' => 'Form Data Slide'
        ];
        return view('data-sliders.'. $this->viewCreate, $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreSliderRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreSliderRequest $request)
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
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = [
            'model' => Model::findOrFail($id),
            'method' => 'PUT',
            'route' => [$this->routePrefix . '.update', $id],
            'button' => 'UPDATE',
            'title' => 'Ubah Data Slide'
        ];
        return view('data-sliders.' . $this->viewEdit, $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateSliderRequest  $request
     * @param  \App\Models\Slider  $slider
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateSliderRequest $request, $id)
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
     * @param  \App\Models\Slider  $slider
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
