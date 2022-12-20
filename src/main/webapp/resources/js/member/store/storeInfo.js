var mapContainer = document.getElementById('map'), // 지도를 표시할 div
    mapOption = {
        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
        level: 1 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var markerPosition = new kakao.maps.LatLng(latitude, longitude);

var marker = new kakao.maps.Marker({
    position: markerPosition
});

marker.setMap(map);
