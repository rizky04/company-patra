<?php

namespace App\Http\Controllers;

use App\Models\Jabatan;
use App\Models\User as Model;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class UserController extends Controller
{
    private $viewIndex = 'user_index';
    private $viewCreate = 'user_form';
    private $viewEdit = 'user_form';
    private $viewShow = 'user_show';
    private $routePrefix = 'user';
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    return view('master-data.data-user.user.' . $this->viewIndex,[
        'models' => Model::latest()->paginate(50),
        'routePrefix' => $this->routePrefix,
        'title' => 'Data User'
    ]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $data = [
            'model' => new Model(),
            'method' => 'POST',
            'route' => $this->routePrefix . '.store',
            'button' => 'SIMPAN',
            'title' => 'Tambah Data Pengguna'
        ];
        return view('master-data.data-user.user.'. $this->viewCreate, $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $requestData = $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'akses' => 'required|in:superadmin,admin,user',
            'photo' => 'required|image|mimes:jpeg,png,jpg,JPEG|max:5000',
            'password' => 'required'
        ]);
        if($request->hasFile('photo')){
            $requestData['photo'] = $request->file('photo')->store('public');
       }
        $requestData['password'] = bcrypt($requestData['password']);
        $requestData['email_veryfied_at'] = now();
        // dd($requestData);
        Model::create($requestData);
        flash('data berhasil disimpan');
        return redirect()->route($this->routePrefix . '.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return view('master-data.data-user.user.my_profile',[
            'model' => Model::findOrFail($id),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $data = [
            'model' => Model::findOrFail($id),
            'method' => 'PUT',
            'route' => [$this->routePrefix . '.update', $id],
            'button' => 'UPDATE',
            'title' => 'Ubah Data User'
        ];
        return view('master-data.data-user.user.' . $this->viewEdit, $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $requestData = $request->validate([
            'name' => 'nullable',
            'email' => 'nullable|unique:users,email,' . $id,
            'akses' => 'nullable|in:superadmin,admin,user',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg|max:5000',
            'password' => 'nullable'
        ]);
        $model = Model::findOrFail($id);
        if($requestData['password'] == ""){
            unset($requestData['password']);
        }else {
           $requestData['password'] = bcrypt($requestData['password']);
        }

        if($request->hasFile('photo')){
            // Storage::delete($model->photo);
            $requestData['photo'] = $request->file('photo')->store('public');
           }
        $model->fill($requestData);
        // dd($model);
        $model->save();
        flash('data berhasil diubah');
        return redirect()->route($this->routePrefix . '.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model = Model::findOrfail($id);

        if ($model->id == 1) {
            flash('Data tidak dapat dihapus')->error();
            return back();
        }

        $model->delete();
        flash('Data berhasil dihapus');
        return back();
    }


    public function updateUser(Request $request, $id)
    {
        //
        $requestData = $request->validate([
            'name' => 'nullable',
            'email' => 'nullable|unique:users,email,' . $id,
            'akses' => 'nullable|in:superadmin,admin,user',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg|max:5000',
            'password' => 'nullable'
        ]);
        $model = Model::findOrFail($id);
        if($requestData['password'] == ""){
            unset($requestData['password']);
        }else {
           $requestData['password'] = bcrypt($requestData['password']);
        }

        if($request->hasFile('photo')){
            // Storage::delete($model->photo);
            $requestData['photo'] = $request->file('photo')->store('public');
           }
        $model->fill($requestData);
        $model->save();
        flash('data profil berhasil diubah');
        return back();
    }


}
