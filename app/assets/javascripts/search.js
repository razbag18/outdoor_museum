function updateMap(map){
    fetch(`/update_pictures?lat=${map.center.lat()}&lng=${map.center.lng()}`
        )
      .then(res => res.json())
      .then(
        response => {

          markers.forEach((marker)=>{
            marker.setMap(null)
          })

          markers = []
          infoWindows = []
          contents = []
          markerClusters = []

          response.forEach((picture, idx)=>{

            var position = {lat: picture.latitude , lng: picture.longitude}
            
            contents.push(
              `
              <div id='content'>
                <img src='${picture.img_url}'>
                <h3 class="info-window__title">${picture.title}</h3>
                <h4 class="info-window__rating"></h4>
              </div>
            `)

            infoWindows.push(
                new google.maps.InfoWindow({
                content: contents[idx]
              })
            )

            markers.push(
              new google.maps.Marker({
              position: position,
              map: map,
              title: picture.title
              })
            )

            markers[idx].addListener('click', function() {  
              infoWindows[idx].open(map, markers[idx])
              
            })

          })
          markerClusters.push(
            new MarkerClusterer(map, markers,{imagePath: '/img'})
          )
        }
      )
}