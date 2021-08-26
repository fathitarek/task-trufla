<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use App\Gener;
use App\Movie;
use App\geners_movies;

class MoiveController extends AppBaseController
{
        public function GetMovies(){
            $curlSession = curl_init();
            curl_setopt($curlSession, CURLOPT_URL, $this->base_url.'movie/top_rated?api_key='.$this->api_key.'&page=1');
            curl_setopt($curlSession, CURLOPT_BINARYTRANSFER, true);
            curl_setopt($curlSession, CURLOPT_RETURNTRANSFER, true);
            $jsonData = json_decode(curl_exec($curlSession));
            $data=$jsonData->results;
            curl_close($curlSession);
            foreach ($data as $key => $value) {
               Movie::create(['id' =>$value->id,'title' =>$value->title,'vote_average'=>$value->vote_average]);
                foreach ($value->genre_ids as $key => $genre_id) {
                    geners_movies::create(['movie_id'=>$value->id,'gener_id'=>$genre_id]);
                }
            }
        return $this->sendSuccess('Movies Inserted successfully');

        }

        public function ListMovies(){
             if (isset($_GET['category_id'])&&!empty($_GET['category_id'])) {
                $movies_id=geners_movies::where('gener_id',$_GET['category_id'])->get();
                // return $movies_id;
                 $movies= Movie::whereIN('id',$movies_id)->get();
            }
             else if (isset($_GET['rate'])&&!empty($_GET['rate'])) {
                 if ($_GET['rate']=='asc') {
                     $movies= Movie::orderBy("vote_average")->get();
                 }
                 if ($_GET['rate']=='desc') {
                     $movies= Movie::orderBy("vote_average", "desc")->get();
                 }
                 else{
                    return $this->sendError('Customers retrieved Not successfully');

                 }
             }
            else{
                $movies=  Movie::paginate(20);
            }
            
            return $this->sendResponse($movies->toArray(), 'Movies retrieved successfully');
        }
        
}
