<?php

namespace App\Http\Controllers;

use App\Models\Tag;

class TagController extends Controller
{
    public function __invoke(Tag $tag)
    {
        return view(
            'results',
            [
                'tag' => $tag,
                'jobs' => $tag->jobs->load([
                    'employer',
                    'tags'
                ])
            ]
        );
    }
}
