<%@ page language="java" contentType="text/html; 

charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 

Transitional//EN" 

"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; 

charset=UTF-8">
<title>확대,축소 이벤트 등록</title>
</head>
<body>
<div id="map" style="width:100%;height:350px;"></div>
<p><em>지도를 확대 또는 축소 해주세요!</em></p> 
<p id="result"></p>
    
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=94f839381885cac7ca5781566f4cf72f"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

// 지도가 확대 또는 축소되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
kakao.maps.event.addListener(map, 'zoom_changed', function() {        
    
    // 지도의 현재 레벨을 얻어옵니다
    var level = map.getLevel();
    
    var message = '현재 지도 레벨은 ' + level + ' 입니다';
    var resultDiv = document.getElementById('result');  
    resultDiv.innerHTML = message;
    
});
</script>
</body>
</html>