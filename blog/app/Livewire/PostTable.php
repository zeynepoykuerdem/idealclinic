<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Post;

class PostTable extends Component
{
    public $sortField = 'yayınlanma_tarihi';
    public $sortAsc = true;
    public $search = '';
    public function render()
    {

        return view('livewire.post-table',[
            'posts'=>Post::search($this->search)
            ->orderBy($this->sortField,$this->sortAsc ? 'asc' : 'desc')
            ->simplePaginate(5)
        ]);
    }
}
