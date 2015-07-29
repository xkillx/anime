<?php


//http://wp2x.com/sign-goo-gl-api-key/
function getgoogl($longUrl){
 
//This is the URL you want to shorten
$apiKey = 'AIzaSyDGSIUWmw3O5IbMwgaFAO33erLL_e8C3lQ';
//Get API key from : http://code.google.com/apis/console/
 
$postData = array('longUrl' => $longUrl, 'key' => $apiKey);
$jsonData = json_encode($postData);
 
$curlObj = curl_init();
 
curl_setopt($curlObj, CURLOPT_URL, 'https://www.googleapis.com/urlshortener/v1/url?key='.$apiKey);
curl_setopt($curlObj, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curlObj, CURLOPT_SSL_VERIFYPEER, 0);
curl_setopt($curlObj, CURLOPT_HEADER, 0);
curl_setopt($curlObj, CURLOPT_HTTPHEADER, array('Content-type:application/json'));
curl_setopt($curlObj, CURLOPT_POST, 1);
curl_setopt($curlObj, CURLOPT_POSTFIELDS, $jsonData);
 
$response = curl_exec($curlObj);
 
//change the response json string to object
$json = json_decode($response);
 
curl_close($curlObj);
 
return $json->id;
 
}


function seo($realname)
{	
	$seoname = preg_replace('/\%/',' percentage',$realname);
	$seoname = preg_replace('/\@/',' at ',$seoname);
	$seoname = preg_replace('/\&/',' and ',$seoname);
	$seoname = preg_replace('/\s[\s]+/','-',$seoname);    // Strip off multiple spaces
	$seoname = preg_replace('/[\s\W]+/','-',$seoname);    // Strip off spaces and non-alpha-numeric
	$seoname = preg_replace('/^[\-]+/','',$seoname); // Strip off the starting hyphens
	$seoname = preg_replace('/[\-]+$/','',$seoname); // // Strip off the ending hyphens
	$seoname = strtolower($seoname);
	return $seoname;
}



function get_timeago( $ptime )
{
    $estimate_time = time() - $ptime;

    if( $estimate_time < 1 )
    {
        return 'less than 1 second ago';
    }

    $condition = array(
                12 * 30 * 24 * 60 * 60  =>  'year',
                30 * 24 * 60 * 60       =>  'month',
                24 * 60 * 60            =>  'day',
                60 * 60                 =>  'hour',
                60                      =>  'minute',
                1                       =>  'second'
    );

    foreach( $condition as $secs => $str )
    {
        $d = $estimate_time / $secs;

        if( $d >= 1 )
        {
            $r = round( $d );
            return 'about ' . $r . ' ' . $str . ( $r > 1 ? 's' : '' ) . ' ago';
        }
    }
}