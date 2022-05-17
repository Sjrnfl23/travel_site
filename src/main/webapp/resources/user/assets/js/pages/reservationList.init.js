var sparklineoptions1={series:[{data:[12,14,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}},sparklinechart1=new ApexCharts(document.querySelector("#mini-1"),sparklineoptions1);sparklinechart1.render();sparklineoptions1={series:[{data:[65,14,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-2"),sparklineoptions1)).render();sparklineoptions1={series:[{data:[12,75,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-3"),sparklineoptions1)).render();sparklineoptions1={series:[{data:[12,14,2,47,42,15,47,75,65,19,70]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-4"),sparklineoptions1)).render(),new gridjs.Grid({columns:[{name:"#",sort:{enabled:!1},formatter:function(a){return gridjs.html('<div class="form-check font-size-16"><input class="form-check-input" type="checkbox" id="orderidcheck01"><label class="form-check-label" for="orderidcheck01"></label></div>')}}
,{name:"No.",formatter:function(a){return gridjs.html('<span class="fw-semibold">'+a+"</span>")}}
,"숙소"
,"금액"
,"추천여부"
,"체크인"
,"체크아웃"
,"인원"
,"예약일"
,{name:"메시지",sort:{enabled:!1},formatter:function(a){return gridjs.html('<div class="d-flex gap-3"><a href="a_host_lodgingView.html" data-bs-toggle="tooltip" data-bs-placement="top" title="메시지전송" class="text-success"><i class="mdi mdi-email font-size-18"></i></a></div>')}}]
,pagination:{limit:7},sort:!0,search:!0
,data:[["","1","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-08","8인", "2022-04-20"]
	,["","2","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-08","8인", "2022-04-26"]
	,["","3","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-08","8인", "2022-04-26"]
	,["","4","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-08","8인", "2022-04-26"]


	]}).render(document.getElementById("table-ecommerce-orders")),flatpickr("#order-date",{defaultDate:new Date,dateFormat:"d M, Y"});
	
	
var sparklineoptions1={series:[{data:[12,14,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}},sparklinechart1=new ApexCharts(document.querySelector("#mini-1"),sparklineoptions1);sparklinechart1.render();sparklineoptions1={series:[{data:[65,14,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-2"),sparklineoptions1)).render();sparklineoptions1={series:[{data:[12,75,2,47,42,15,47,75,65,19,14]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-3"),sparklineoptions1)).render();sparklineoptions1={series:[{data:[12,14,2,47,42,15,47,75,65,19,70]}],chart:{type:"area",width:150,height:50,sparkline:{enabled:!0}},fill:{type:"gradient",gradient:{shadeIntensity:1,inverseColors:!1,opacityFrom:.45,opacityTo:.05,stops:[20,100,100,100]}},stroke:{curve:"smooth",width:2},colors:["#1f58c7"],tooltip:{fixed:{enabled:!1},x:{show:!1},y:{title:{formatter:function(a){return""}}},marker:{show:!1}}};(sparklinechart1=new ApexCharts(document.querySelector("#mini-4"),sparklineoptions1)).render(),new gridjs.Grid({columns:[{name:"#",sort:{enabled:!1},formatter:function(a){return gridjs.html('<div class="form-check font-size-16"><input class="form-check-input" type="checkbox" id="orderidcheck01"><label class="form-check-label" for="orderidcheck01"></label></div>')}}
,{name:"No.",formatter:function(a){return gridjs.html('<span class="fw-semibold">'+a+"</span>")}}
,"숙소"
,"금액"
,"추천여부"
,"체크인"
,"체크아웃"
,"인원"
,"예약일"
,{name:"리뷰작성",sort:{enabled:!1},formatter:function(a){return gridjs.html('<div class="d-flex gap-3"><a href="a_host_lodgingView.html" data-bs-toggle="tooltip" data-bs-placement="top" title="후기작성" class="text-success"><i class="mdi mdi-thumb-up font-size-18"></i></a><a href="a_host_lodgingView.html" data-bs-toggle="tooltip" data-bs-placement="top" title="후기작성" class="text-danger"><i class="mdi mdi-delete font-size-18"></i></a></div>')}}]
,pagination:{limit:7},sort:!0,search:!0
,data:[["","1","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-03","3인", "2022-04-20"]
	,["","2","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-03","3인", "2022-04-26"]
	,["","3","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-03","3인", "2022-04-26"]
	,["","4","봄보름풀빌라","100만원","","2022-05-02 15:00","2022-05-03","3인", "2022-04-26"]


	]}).render(document.getElementById("table-ecommerce-orders2")),flatpickr("#order-date",{defaultDate:new Date,dateFormat:"d M, Y"});