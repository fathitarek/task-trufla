<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\AppBaseController;
use App\Gener;
class GenerController extends AppBaseController
{
        public function GetGener(){
            $curlSession = curl_init();
            curl_setopt($curlSession, CURLOPT_URL, $this->base_url.'genre/movie/list?api_key='.$this->api_key);
            curl_setopt($curlSession, CURLOPT_BINARYTRANSFER, true);
            curl_setopt($curlSession, CURLOPT_RETURNTRANSFER, true);

            $jsonData = json_decode(curl_exec($curlSession));
            $geners=$jsonData->genres;
            curl_close($curlSession);
            foreach ($geners as $key => $value) {
                Gener::create(['id' =>$value->id,'name' =>$value->name]);

            }
        return $this->sendSuccess('Gener Inserted successfully');

        }
}
