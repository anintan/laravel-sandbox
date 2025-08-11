<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Kelas;


class KelasController extends Controller
{
    public function index(Request $request)

{
    // Ambil data kelas dengan relasi user
    $kelas = Kelas::with('user')->paginate(10);

    // Ubah format data agar sesuai
    $formatted = $kelas->map(function ($item) {
        return [
            // ini ID user
            'id' => $item->user->id ?? null,
            'nama' => $item->user->name ?? null,
            'email' => $item->user->email ?? null,
            'kelas' => [
                // ini ID kelas
                'id' => $item->id,
                'nama_kelas' => $item->nama_kelas,
                'deskripsi' => $item->deskripsi,
            ]
        ];
    });

    return response()->json([
        'data' => [
            'data' => $formatted,
            'pagination' => [
                'total' => $kelas->total(),
                'per_page' => $kelas->perPage(),
                'current_page' => $kelas->currentPage(),
                'last_page' => $kelas->lastPage(),
                'from' => $kelas->firstItem(),
                'to' => $kelas->lastItem(),
            ]
        ]
    ]);
}


    // {
    //     $perPage = 10;
    //     $kelas = Kelas::with('user')->paginate($perPage);
        
    //     return response()->json([
    //         'data' => [
    //             'data' => $kelas->items(),
    //             'pagination' => [
    //                 'total' => $kelas->total(),
    //                 'per_page' => $kelas->perPage(),
    //                 'current_page' => $kelas->currentPage(),
    //                 'last_page' => $kelas->lastPage(),
    //                 'from' => $kelas->firstItem(),
    //                 'to' => $kelas->lastItem(),
    //             ]
    //         ]
    //     ], 200);
    // }

    public function show($id)
    {
        $kelas = Kelas::with('user')->find($id);

        if (!$kelas) {
            return response()->json([
                'status' => false,
                'message' => 'Kelas tidak ditemukan'
            ], 404);
        }

        return response()->json([
            'status' => true,
            'message' => 'Detail kelas',
            'data' => [
                'id' => $kelas->user->id,
                'nama' => $kelas->user->name,
                'email' => $kelas->user->email,
                'kelas' => [
                    'id' => $kelas->id,
                    'nama_kelas' => $kelas->nama_kelas,
                    'deskripsi' => $kelas->deskripsi
                ]
            ]
        ], 200);
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
            return response()->json(['message' => 'kelas tidak ditemukan'], 404);
        }

        $kelas->delete();
        return response()->json(['message' => 'kelas berhasil dihapus'], 200);
    }
}

