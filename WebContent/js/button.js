/*
 * @Author: Administrator
 * @Date:   2017-04-20 15:23:22
 * @Last Modified by:   Administrator
 * @Last Modified time: 2017-04-20 16:12:50
 */
$(function() {
	var closeBtn = document.querySelector("#id-button-borders");
	var $status = $(".status"), $dota = $("#btnDota"), $song = $("#btnSong"), $movie = $("#btnMovie"), $msg = $(".msg");
	var count = 1, powerStatus = true;
	$(closeBtn).click(function() {
		if (count % 2 === 0) {
			// 电闸开
			showMsg($status, "电闸开启,节约用电哦!");
			deleteStatusMsg();
			powerStatus = true;
		} else {
			// 电闸关
			showMsg($status, "电闸关闭!");
			deleteStatusMsg();
			powerStatus = false;
		}
		count++;
	});

	function showMsg(ele, text) {
		ele.text(text);
		ele.css("visibility", "visible");
	}
	function deleteStatusMsg() {
		setTimeout(function() {
			$status.css("visibility", "hidden");
		}, 2000);
	}
	function deleteMsg() {
		setTimeout(function() {
			$msg.css("visibility", "hidden");
		}, 2000);
	}
	var message = document.querySelector(".doId").innerText;
	$dota.on("click",function() {
						if (!powerStatus) {
							showMsg($msg, "电闸关了，还怎么打DotA!");
							deleteMsg();
							return;
						}
						try{
						$.post("http://localhost:8080/DormitoryElectricity/electricity/usePower.action",
										{
											"power" : "dota",
											"electricity.dormitoryId" : message,
										}, function(data) {
											console.log(data);
										});
						}catch(e){
							showMsg($msg, "哎呀，今天不给玩dota!");
							deleteMsg();
							return;
						}
						showMsg($msg, "酣畅淋漓的一局DotA,56分钟，花费了0.5度电!");
						deleteMsg();
					});
	$song.on("click", function() {
		if (!powerStatus) {
			showMsg($msg, "电闸关了，用手机听歌吧!");
			deleteMsg();
			return;
		}
		try{
		$.post("http://localhost:8080/DormitoryElectricity/electricity/usePower.action",
				{
					"power" : "song",
					"electricity.dormitoryId" : message,
				}, function(data) {
					console.log(data);
				});
	}catch(e){
		showMsg($msg, "哎呀，今天不给听歌!");
		deleteMsg();
		return;
	}
		showMsg($msg, "骚当的歌很费电，花费了0.2度电!");
		deleteMsg();
	});
	$movie.on("click", function() {
		if (!powerStatus) {
			showMsg($msg, "电闸关了，看不了美剧了，555");
			deleteMsg();
			return;
		}
		try{
		$.post("http://localhost:8080/DormitoryElectricity/electricity/usePower.action",
				{
					"power" : "movie",
					"electricity.dormitoryId" :message,
				}, function(data) {
					console.log(data);
				});
	}catch(e){
		showMsg($msg, "哎呀，今天不给看美剧!");
		deleteMsg();
		return;
	}
		showMsg($msg, "追行尸走肉第七季，花费了0.3度电!");
		deleteMsg();
	});

})
