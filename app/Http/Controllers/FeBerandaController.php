<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Project;
use App\Models\Slider;
use App\Models\Team;
use Illuminate\Http\Request;

class FeBerandaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $slide = Slider::all();
        $project = Project::all();
        $blog = Blog::all();
        return view('fe.beranda', compact('project', 'blog', 'slide'));
    }

    public function about()
    {
        $title = "Tentang Kami";
        return view('fe.about', compact('title'));
    }

    public function service()
    {
        $title = "Service Kami";
        return view('fe.service', compact('title'));
    }
    public function blog()
    {
        $title = "Berita Kami";
        $data = Blog::all();
        return view('fe.blog', compact('title', 'data'));
    }
    public function detailblog($id)
    {
        $title = "Berita Kami";
        $data = Blog::findOrFail($id);
        return view('fe.single-blog', compact('title', 'data'));
    }
    public function project()
    {
        $data = Project::all();
        $title = "Project Kami";
        return view('fe.project', compact('title', 'data'));
    }
    public function team()
    {
        $title = "Team Kami";
        $data = Team::all();
        return view('fe.team', compact('title', 'data'));
    }
    public function contact()
    {
        $title = "Kontak Kami";
        return view('fe.contact', compact('title'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
