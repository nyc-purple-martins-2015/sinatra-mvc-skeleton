get '/magazines'
get '/magazines/new'
post '/magazines'
get '/magazines/:id'
get '/magazines/:id/edit '
put '/magazines/:id'
delete '/magazines/:id'

get '/magazines/:magazine_id/ads'
get '/magazines/:magazine_id/ads/new'
post '/magazines/:magazine_id/ads' do
  @magazine = Magzine.find(params[:magazine_id])
  @ad = @magazine.ads.new(params[:ad])
  …
end
get '/magazines/:magazine_id/ads/:id'
get '/magazines/:magazine_id/ads/:id/edit '
put '/magazines/:magazine_id/ads/:id'
delete  '/magazines/:magazine_id/ads/:id'



# ~~~~~~~

get '/magazines'
get '/magazines/new'
post '/magazines'
get '/magazines/:id'
get '/magazines/:id/edit '
put '/magazines/:id'
delete '/magazines/:id'

get '/ads'
get '/ads/new'
post '/ads' do
  @ad = Ads.new(params[:ad])
  …
end
get '/ads/:id'
get '/ads/:id/edit '
put '/ads/:id'
delete '/ads/:id'



<form method="post" action="/magazines/12/ads">

</form>

<form method="post" action="/ads">
  <input type="hidden" name="ad[magazine_id]" value="12" />
  <select name="ad[magazine_id]" value="12">
    <option></option>
  </select>

</form>
