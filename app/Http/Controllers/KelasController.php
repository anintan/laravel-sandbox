<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Kelas;


class KelasController extends Controller
{
    public function index(Request $request)
    {
        $perPage = 10;
        $kelas = Kelas::with('user')->paginate($perPage);
        
        return response()->json([
            'data' => [
                'data' => $kelas->items(),
                'pagination' => [
                    'total' => $kelas->total(),
                    'per_page' => $kelas->perPage(),
                    'current_page' => $kelas->currentPage(),
                    'last_page' => $kelas->lastPage(),
                    'from' => $kelas->firstItem(),
                    'to' => $kelas->lastItem(),
                ]
            ]
        ], 200);
    }

    public function show($id)
    {
        $kelas = Kelas::with('user')->find($id);
        if (!$kelas) {
            return response()->json(['message' => 'Kelas tidak ditemukan'], 404);
        }
        return response()->json($kelas, 200);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_kelas' => 'required|string|max:100',
            'deskripsi' => 'nullable|string|max:255',
            'user_id' => 'required|exists:users,id|unique:kelas,user_id',
        ]);

        $kelas = Kelas::create($validated);

        return response()->json($kelas, 201);
    }

    public function update(Request $request, $id)
    {
        $kelas = Kelas::find($id);
        if (!$kelas) {
            return response()->json(['message' => 'Kelas tidak ditemukan'], 404);
        }

        $validated = $request->validate([
            'nama_kelas' => 'sometimes|required|string|max:100',
            'deskripsi' => 'nullable|string|max:255',
        ]);

        $kelas->update($validated);

        return response()->json($kelas, 200);
    }

    public function destroy($id)
    {
        $kelas = Kelas::find($id);
        if (!$kelas) {
            return response()->json(['message' => 'Kelas tidak ditemukan'], 404);
        }

        $kelas->delete();
        return response()->json(['message' => 'Kelas berhasil dihapus'], 200);
    }
}

