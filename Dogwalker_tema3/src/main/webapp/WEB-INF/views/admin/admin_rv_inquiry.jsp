<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko"><head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="robots" content="noindex">
	<!--<link href="http://cocoaphp.com/publish/bootstrap/css/material-design-iconic-font.min.css" rel="stylesheet">-->
	<script async="" src="https://www.clarity.ms/s/0.7.8/clarity.js"></script><script type="text/javascript" async="" src="https://cdn.channel.io/plugin/ch-plugin-web.js" charset="UTF-8" style="z-index: 1100;"></script><script type="text/javascript" async="" src="//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js"></script><script async="" src="https://www.clarity.ms/tag/gy4ajmqjno"></script><script>
		var TEST_SERVER = false;
		var VENDOR_DOMAIN = 'https://vendor-cdn.imweb.me';
		var UPLOAD_URL = '/upload/';
		var CDN_UPLOAD_URL = 'https://cdn.imweb.me/upload/';
		var IS_MAIN = false;
		var IS_MOBILE = false;
		var ADMIN_URL = '/admin/';
		var THUMBNAIL_URL= '/thumbnail/';
		var CDN_THUMBNAIL_URL= 'https://cdn.imweb.me/thumbnail/';
		var SITE_CODE = 'S20230724b38d1d4688d7b';
		var UNIT_CODE = 'u2023072464bdcddc323fa';
		var SITE_NO = 'S20230724b38d1d4688d7b';
		var UNIT_NO = 'u2023072464bdcddc323fa';
		var MAIN_DOMAIN = 'yeonhee0623.imweb.me';
		var CURRENT_DOMAIN = 'yeonhee0623.imweb.me';
		var CURRENT_PROTOCOL = 'https://';
		var GOOGLE_API_KEY = 'AIzaSyA8CCexf9XTJcH09mStr-HRW4nin4k8J7w';
		var FROALA_VERSION = 311;
		var FROALA_KEY = '6LF5g1B3D3F3C6C3E2F-11SLJCKHXOSLMc1YGSGb1ZXHSe1CgB5A4D4C3E3C2A13A19B7B2==';
		var ADOBE_AVIARY_KEY = '94bd22b5cc05424494c5e7aeabab8466';
		var LIMIT_API_LIST = [];
		var NO_IMAGE_URL = '/img/no-image.png';
		var ADMIN_LANG_CODE = 'KR';
		var SITE_COUNTRY_CODE = 'kr';
		var KOREA_COUNTRY_CODE = 'kr';
		var TAIWAN_COUNTRY_CODE = 'tw';
		var IS_GUEST = false;
		var MEMBER_HASH = '79d7d33ef5293db5f0f7a53fd3914eae219aaf59';
		var CHECK_OFFICE = false;

                    /****************************************************************/
            /* m_Completepayment  설명                                      */
            /****************************************************************/
            /* 인증완료시 재귀 함수                                         */
            /* 해당 함수명은 절대 변경하면 안됩니다.                        */
            /* 해당 함수의 위치는 payplus.js 보다먼저 선언되어여 합니다.    */
            /* Web 방식의 경우 리턴 값이 form 으로 넘어옴                   */
            /* EXE 방식의 경우 리턴 값이 json 으로 넘어옴                   */
            /****************************************************************/
            function m_Completepayment( FormOrJson, closeEvent )
            {
                var frm = document.order_info;

                /********************************************************************/
                /* FormOrJson은 가맹점 임의 활용 금지                               */
                /* frm 값에 FormOrJson 값이 설정 됨 frm 값으로 활용 하셔야 됩니다.  */
                /* FormOrJson 값을 활용 하시려면 기술지원팀으로 문의바랍니다.       */
                /********************************************************************/
                GetField( frm, FormOrJson );


                if( frm.res_cd.value == "0000" )
                {
                    /*
                     가맹점 리턴값 처리 영역
                     */

                    frm.submit();
                }
                else
                {
                    alert( "[" + frm.res_cd.value + "] " + frm.res_msg.value );

                    closeEvent();
                }
            }
        	</script>
    <script type="text/javascript">
        if(TEST_SERVER){
            // (function(c,l,a,r,i,t,y){
            //     c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
            //     t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
            //     y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
            // })(window, document, "clarity", "script", "gy49b26ww7");
        }else{
            (function(c,l,a,r,i,t,y){
                c[a]=c[a]||function(){(c[a].q=c[a].q||[]).push(arguments)};
                t=l.createElement(r);t.async=1;t.src="https://www.clarity.ms/tag/"+i;
                y=l.getElementsByTagName(r)[0];y.parentNode.insertBefore(t,y);
            })(window, document, "clarity", "script", "gy4ajmqjno");
        }
    </script>

	<script src="/js/localize/KR_KRW_currency.js?1687935649"></script><script src="/js/localize/admin/KR.js?1687935651"></script>
	<link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/bootstrap.css?1630317764"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/jquery-ui.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/ii.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/db-icons.css?1688371447"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/material-design-iconic-font.min.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/bootstrap-datepicker.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/black-tie.css?1608189400"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/simple-line-icons.css?1608179394"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/fonts/im-icon/style.css?1671430692"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/fonts/pretendard/web/variable/pretendardvariable.css?1669875619"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/fonts/pretendard/web/static/pretendard.css?1669875619"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/fonts/froala-emoji-tap/style.css?1669163161"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/preloader.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/owl.carousel2.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/slick.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/animate.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/nprogress.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/trackpad-scroll-emulator.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/font-awesome.min.css?1626931454"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/font-awesome5.min.css?1669163183"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/froala_311/css/froala_editor.pkgd.css?1669163161"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/froala_311/css/froala_style.min.css?1669163161"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/emoji.css?1669163161"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/froala/custom-theme-v3.css?1669163161"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/colorpicker.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/codemirror.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/bootstrap-spinner.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/chosen.css?1617331870"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/fullcalendar.min.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/morris.core.css?1577682282"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/lightgallery.min.css?1596596378"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/im_component.css?1636689958"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/admin/admin.css?1671429817"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/admin/toastr.css?1593569516"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/alarm_menu.css?1678083003"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/fonts/fontello/src/css/fontello.css?1669066661"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/admin/bootstrap-theme-dashboard.css?1618365623"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/admin/dashboard.css?1689645674"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/admin/select2.css?1590627710"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/site/admin/accordion.css?1653367465"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/regularly.css?1669066892"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/tailwind.css?1689126958"><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/swiper.min.css?1652070481"><script src="https://vendor-cdn.imweb.me/js/jquery.js?1627517460"></script><script src="https://vendor-cdn.imweb.me/js/jquery.browser.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery-ui.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/bootstrap.min.js?1630317768"></script><script src="https://vendor-cdn.imweb.me/js/floating-ui-core@1.0.1.js?1669067096"></script><script src="https://vendor-cdn.imweb.me/js/floating-ui-dom@1.0.1.js?1669067096"></script><script src="https://vendor-cdn.imweb.me/js/tinycolor-min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/im_component.js?1636940317"></script><script src="https://vendor-cdn.imweb.me/js/admin_common.js?1677450225"></script><script src="https://vendor-cdn.imweb.me/js/table_list.js?1633057104"></script><script src="https://vendor-cdn.imweb.me/js/data.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/owl.carousel2.js?1638150602"></script><script src="https://vendor-cdn.imweb.me/js/slick.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/preloader.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.lazyload.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.trackpad-scroll-emulator.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.fileupload.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/nprogress.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/froala_editor.min.js?1608673099"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/align.min.js?1607673165"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/char_counter.min.js?1607673165"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/code_beautifier.min.js?1607673167"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/code_view.min.js?1608643124"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/colors.min.js?1607673167"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/draggable.min.js?1607673168"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/emoticons.min.js?1669163161"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/entities.min.js?1607673170"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/file.min.js?1607673170"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/font_family.min.js?1607673170"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/font_size.min.js?1607673170"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/forms.min.js?1607673170"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/fullscreen.min.js?1607673170"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/image.min.js?1607673172"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/image_manager.min.js?1607673172"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/inline_style.min.js?1607673173"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/line_breaker.min.js?1607673173"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/link.min.js?1607673173"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/lists.min.js?1607673174"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/paragraph_format.min.js?1607673174"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/paragraph_style.min.js?1607673174"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/quote.min.js?1607673174"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/save.min.js?1607673174"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/table.min.js?1607673177"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/url.min.js?1607673177"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/video.min.js?1625125569"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/plugins/line_height.min.js?1607673173"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/third_party/font_awesome.min.js?1607673192"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/languages/ko.js?1669875597"></script><script src="https://vendor-cdn.imweb.me/froala_311/js/languages/zh_tw.js?1669875597"></script><script src="https://vendor-cdn.imweb.me/js/jquery-scrolltofixed-min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/colorpicker.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.chosen.js?1619084781"></script><script src="https://vendor-cdn.imweb.me/js/jquery.timepicker.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.print.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/autolinker.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/ThreeCanvas.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/snow.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/lightgallery-all.min.js?1596595980"></script><script src="https://vendor-cdn.imweb.me/js/autosize.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/froala_with_emoticon.js?1669875619"></script><script src="https://vendor-cdn.imweb.me/js/common.js?1689021244"></script><link rel="stylesheet" type="text/css" href="https://vendor-cdn.imweb.me/css/lightgallery.css?1577682282"><script src="https://vendor-cdn.imweb.me/js/jquery.nestable.doznut.js?1666824024"></script><script src="https://vendor-cdn.imweb.me/js/jquery.number.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/masonry.pkgd.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/Chart.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/swiper-bundle.min.js?1669875597"></script><script src="https://vendor-cdn.imweb.me/js/jquery.autosize.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/codemirror.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/mode/xml/xml.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/mode/javascript/javascript.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/mode/css/css.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/mode/htmlmixed/htmlmixed.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.select2.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.select2_ko.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/imagesloaded.pkgd.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.nanoscroller.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/html5shiv.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/jquery.validate.js?1621218311"></script><script src="https://vendor-cdn.imweb.me/js/jquery.inputmask.bundle.min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/moment-with-locales.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/js/moment-timezone.js?1581998425"></script><script src="https://vendor-cdn.imweb.me/js/bootstrap-datepicker.js?1687222780"></script><script src="https://vendor-cdn.imweb.me/js/ie-checker-min.js?1577682292"></script><script src="https://vendor-cdn.imweb.me/dist/fe-common.min.js?1671431247"></script><script src="https://vendor-cdn.imweb.me/js/excel-password.js?1671429942"></script><script src="https://vendor-cdn.imweb.me/js/payment_password/payment_password.js?1677564584"></script><script src="https://vendor-cdn.imweb.me/js/lodash.min.js?1656295899"></script><script src="/admin/js/doz_post.js?1577682293"></script><script src="/admin/js/admin.js?1689021236"></script><script src="/admin/js/coupon.js?1687465591"></script><script src="/admin/js/doznut.js?1666824024"></script><script src="/admin/js/event_check.js?1585896056"></script><script src="/js/site_member.js?1669876617"></script><script src="/js/alarm_menu.js?1683615433"></script><script src="/admin/js/imweb_analytics.js?1604543771"></script><script src="/admin/js/site_manage.js?1669163183"></script><script src="/admin/js/admin_search.js?1639983006"></script><script src="/admin/js/dashboard.js?1684993985"></script><script src="/admin/js/config.js?1688535036"></script><script src="/admin/js/member.js?1689858633"></script><script src="/admin/js/permission.js?1686703958"></script><script src="/admin/js/contents.js?1682296151"></script><script src="/admin/js/payment.js?1676962420"></script><script src="/admin/js/toastr.js?1577682293"></script><script src="/admin/js/contents_list.js?1673856329"></script><script src="/admin/js/booking.js?1684735823"></script><script src="/admin/js/mixpanel.js?1689576745"></script><script src="//unpkg.com/vue@3/dist/vue.global.prod.js"></script><script>var IS_ANDROID_APP = 'N';
	(function(){
		var customTooltipAllowList = $.fn.tooltip.Constructor.DEFAULTS.whiteList;
		customTooltipAllowList.table = [];
		customTooltipAllowList.thead = [];
		customTooltipAllowList.tbody = [];
		customTooltipAllowList.tr = [];
		customTooltipAllowList.td = ["rowspan", "colspan"];
		customTooltipAllowList.th = [];
		customTooltipAllowList.caption = [];
		customTooltipAllowList["*"].push("style");
	})();

function determineDropDirection(){
    var $window = $(window);
    var window_height = $window.innerHeight();
    var window_scrolltop = $window.scrollTop();
	$(".dropdown-menu").each( function(){
	    var $that = $(this);
		$that.css({
			visibility: "hidden",
			display: "block"
		});
		$that.parent().removeClass("dropup");

        /* 드롭다운 하단에 공간이 없을 경우 상단에 공간이 있다면 방향 전환 */
		if ($that.offset().top + $that.outerHeight() + 60 > window_height + window_scrolltop && $that.offset().top > $that.outerHeight() + 60){
			$that.parent().addClass("dropup");
		}
		$that.removeAttr("style");
	});
}

determineDropDirection();

$(window).scroll(determineDropDirection);
	</script></head>


<body class="menubar-hoverable header-fixed menubar-pin">
                <!-- BEGIN BASE-->
    <div id="dashboard_loader" class="se-pre-con" style="display: none">
        <div class="page-loader-spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
        <div class="progress">
            <div class="progress-bar" role="progressbar" style="width:70%">
                <label>70%</label>
            </div>
        </div>
    </div>
    <div id="base">
            
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const alertBox = document.querySelector('#alertBox');
            const contentArea = document.querySelector('#content');
            alertBox.classList.remove('alert__wrap-fixed');
            alertBox.classList.add('alert__wrap');
            if ( contentArea ) contentArea.prepend(alertBox);
        });
    </script>        <!-- END OFFCANVAS LEFT --><script type="text/javascript">
	$(function(){
		SADMIN_MENU_ALERT.openAlert();
	});
</script>
<header class="top_header" id="header">
	<div class="headerbar">
		<div class="headerbar-left">
			<ul class="header-nav header-nav-options">
				<li class="hidden-lg hidden-md">
					<a class="btn btn-icon-toggle menubar-toggle" data-toggle="menubar" href="javascript:void(0);">
						<i class="btl bt-bars"></i>
					</a>
				</li>
				<li class="header-nav-brand">
					<div class="brand-holder">
						<span class="location_text">
							<a href="/admin/booking/answers">문의관리</a>						</span>
					</div>
				</li>
			</ul>
		</div>

		<div class="headerbar-right">
			<ul class="header-nav header-nav-options _option_list">
			</ul><!--end .header-nav-options -->
		</div><!--끝 #header-navbar-collapse -->
		<!--끝 #header-navbar-collapse -->
	</div>
</header>
<header class="top_header control-fixed" id="select_header" style="display: none;">
	<div class="headerbar">
		<div class="headerbar-left">
			<ul class="header-nav">
				<li class="header-nav-brand">
					<div class="brand-holder ">
						<a class="btn btn-flat btn-default-white no-padding-x margin-right-xl" href="javascript:;" onclick="CONTENTS_LIST.cancelCheckItem()"><i class="btm bt-arrow-left"></i></a>
					</div>
					<div class="brand-holder">
						<div class="dropdown pull-left">
							<button class="btn btn-flat btn-default-white no-padding-x margin-right-xl text-lg" aria-expanded="false" aria-haspopup="true" data-toggle="dropdown" type="button" id="dLabel">
								<span id="select_cnt"></span>개 선택됨								<i class="zmdi zmdi-caret-down"></i>
							</button>
							<ul aria-labelledby="dLabel" role="menu" class="dropdown-menu animation-dock">
								<li>
									<a href="javascript:;" onclick="CONTENTS_LIST.cancelCheckItem()">선택 안함</a>
								</li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="headerbar-right">
			<ul class="header-nav header-nav-options">
				<li>
					<div class="btn-group">
						<a class="btn btn-default-bright" href="javascript:;" onclick="CONTENTS_LIST.checkActionWithReviewCode(function(codes){SHOP_ANSWERS_MANAGE.openDeleteAnswersForm(codes,'N');})"><span class="hidden-xs">문의</span> 삭제</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
</header>
<!-- BEGIN CONTENT-->
<div id="content"><div id="alertBox" class="alert__wrap">    </div>
	<section class="section-max-width">
		<div class="section-body">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-body no-padding">
							<form role="search" class="user-search" onsubmit="return searchAnswers();">
								<div class="form-group">
									<span class="twitter-typeahead" style="position: relative; display: inline-block;">
										<input type="text" class="form-control typeahead tt-input" id="search_answers" value="" placeholder="작성자, 내용 검색" autocomplete="off" spellcheck="false" dir="auto" style="position: relative; vertical-align: top; background-color: transparent; padding-left: 15px">
									</span>
									<label class="icon_set" style="right: 18px">
										<i class="btl bt-search "></i>
									</label>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="card">
						<div class="card-head">
							<header class="small comments-header">
								<div class="checkbox-inline checkbox-styled">
									<label class="no-margin">
																					<input type="checkbox" class="_chk _all_check" onclick="CONTENTS_LIST.allCheckToggle()" value="">
																					<span>전체 문의 <span class="text-primary">0</span></span>
									</label>

								</div>
							</header>
						</div>
						<div class="card-body no-padding _content_body">
							<ul class="list-comments check">

															</ul>
						</div>
						<nav class="text-center">
													</nav>
					</div>
				</div>
			</div>
		</div>
	</section><!--섹션 끝 -->
</div><!--end #content-->
<!-- END CONTENT -->


<script>
	$(function(){
		SHOP_ANSWERS_MANAGE.init();
	});
</script>
<script>
	$(function(){//qna 리뉴얼 전까지 qna 이미지 라이트박스 처리
		$('._qna_wrap').find('img').each(function(){
			if($(this).parent().get(0).tagName == 'A')
				return true;
			$(this).attr('data-src', $(this).attr('src')).data('src', $(this).attr('src')).addClass('_img_light_gallery cursor_pointer');
		});
		$('._qna_wrap').lightGallery({
			selector : '._img_light_gallery',
			thumbnail : false,
			animateThumb : false,
			showThumbByDefault : false,
			hash : false,
			speed : 200
		});
	});
</script>
<script>
	$(function(){
		CONTENTS_LIST.init($('#content'));
	});

    function searchAnswers(){
        var url = ADMIN_URL + "booking/answers?";

        if($('#search_answers').val() === '' || $('#search_answers').val() === undefined){
            alert(getLocalizeString('설명_s을를입력하세요', getLocalizeString('설명_검색어', '', '검색어'), '%1 을(를) 입력하세요'));
            return false;
        }

        url += ('&keyword=' + $('#search_answers').val());

        // 문의관리 검색
        mixpanel.track('search_bo_booking_qna_list', {
            'keyword': $('#search_review').val()
        });

        location.href = url;
        return false;
    }
</script>
<style>
	.lg-thumb-outer, .lg-toolbar .lg-fullscreen, .lg-toolbar .lg-download, .lg-toolbar .lg-autoplay-button {
		display : none;
	}
</style><script>	
			$(window).on("keyup", function(e){
				if ( $.cocoaDialog.isOpen() ) {
					$.cocoaDialog.modalControl(e);
				}
				return false;
			});</script>
<!-- BEGIN MENUBAR-->
<button type="button" class="hidden-lg hidden-md toggle-btn" data-dismiss="menubar">
	<span class="sr-only">Toggle navigation</span>
	<i class="btl bt-times"></i>
</button>

<div id="menubar" class="animate">
	<div class="nano has-scrollbar" style="height: 922px;"><div class="nano-content" tabindex="0" style="right: -17px;"><div class="menubar-scroll-panel" style="padding-bottom: 50px;">
		<div class="tabled full-width">
			<a href="javascript:" class="holder global_icon_menu dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
				<div style="position: absolute; left: 22px; top: 0; line-height: 36px;">
					<img src="/common/img/flag_shapes/flag_kr_circle.png" width="20" height="20">
				</div>
				<div class="brand-holder">
					<span class="title_controls">dusgml</span>
				</div>
			</a>
			<ul class="dropdown-menu global_setting animation-dock menu-card-styling">					<li class="holder ">
						<a href="/admin/booking/answers">
							<div class="tabled">
								<div class="table-cell vertical-middle width-1">
									<img width="30" height="30" src="/common/img/flag_shapes/flag_kr_circle.png">
								</div>
								<div class="table-cell vertical-middle domain">
									<div class="inline-blocked">
										<span class="domain_name">dusgml</span>
									</div>
									<span data-original-title="일반 방문자의 접속이 제한됩니다. 글로벌 버전으로 업그레이드 해주세요" data-toggle="tooltip" class="badge" data-placement="top" style="margin-left: 5px; vertical-align: top;">미결제</span>
																			<div class="text-gray-bright text-12">yeonhee0623.imweb.me</div>
																	</div>
							</div>
						</a>
						<div class="tools">
													</div>
					</li>
					<li class="border-top"><a href="javascript:;" onclick="SITE_MANAGE.openAddUnit('S20230724b38d1d4688d7b')" class="text-primary" style="padding-top: 15px;">새 언어 사이트 추가</a></li></ul>		</div>
		<ul id="main-menu" class="gui-controls"><li class="  " data-title="design_mode"><a href="/admin/design"><div class="gui-icon"><i class="db-wand"></i></div><span class="title title_controls">디자인모드</span></a></li><li class="  " data-title="preview"><a href="//yeonhee0623.imweb.me" target="_blank"><div class="gui-icon"><i class="db-preview"></i></div><span class="title title_controls">사이트 바로가기</span></a></li><li class="spacer"></li><li class="top-menu"><a href="javascript:;" onclick="DASHBOARD.openSiteManagementDialog(this);"><span>사이트 관리</span><i class="btm bt-plus-circle"></i></a></li><li class="  " data-title="dashboard"><a href="/admin//"><div class="gui-icon"><i class="db-dashboard"></i></div><span class="title title_controls">대시보드</span></a></li><li class=" gui-folder " data-title="member"><a href="/admin/member" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-user"></i></div><span class="title title_controls">사용자 관리</span></a><ul><li class="  " data-title="member_list"><a href="/admin/member/list"><span class="title title_controls">사용자 목록</span></a></li><li class="  " data-title="member_msg"><a href="/admin/member/send"><span class="title title_controls">메세지 보내기</span></a></li><li class="  " data-title="member_permission"><a href="/admin/member/permission"><span class="title title_controls">운영진 설정</span></a></li><li class="  " data-title="member_mail"><a href="/admin/member/mail"><span class="title title_controls">메일 발송 설정</span></a></li><li class="  " data-title="member_sms"><a href="/admin/member/sms"><span class="title title_controls">SMS/알림톡 설정</span></a></li></ul></li><li class="  " data-title="crm"><a href="/admin/crm_marketing"><div class="gui-icon"><i class="db-crm"></i></div><span class="title title_controls">고객 행동 관리</span><span class="badge_icon badge_beta">Beta</span></a></li><li class=" gui-folder " data-title="shopping"><a href="/admin/shopping" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-shopping-bag"></i></div><span class="title title_controls">쇼핑</span></a><ul><li class="  " data-title="shopping_product"><a href="/admin/shopping/product"><span class="title title_controls">상품관리</span></a></li><li class="  " data-title="shopping_interlocking"><a href="/admin/shopping/interlocking"><span class="title title_controls">연동 상품관리</span><span class="badge_icon badge_beta">Beta</span></a></li><li class="  " data-title="shopping_order"><a href="/admin/shopping/order"><span class="title title_controls">주문관리</span></a></li><li class="  " data-title="shopping_cancel"><a href="/admin/shopping/cancel"><span class="title title_controls">취소관리</span></a></li><li class="  " data-title="shopping_return"><a href="/admin/shopping/return"><span class="title title_controls">반품관리</span></a></li><li class="  " data-title="shopping_exchange"><a href="/admin/shopping/exchange"><span class="title title_controls">교환관리</span></a></li><li class="  " data-title="shopping_regularly"><a href="/admin/shopping/regularly"><span class="title title_controls">정기구독 관리</span></a></li><li class="  " data-title="shopping_review"><a href="/admin/shopping/review"><span class="title title_controls">구매평 관리</span></a></li><li class="  " data-title="shopping_answers"><a href="/admin/shopping/answers"><span class="title title_controls">문의관리</span></a></li><li class="  " data-title="member_mileage"><a href="/admin/shopping/mileage"><span class="title title_controls">적립금 관리</span></a></li><li class="  " data-title="shopping_coupon"><a href="/admin/shopping/coupon"><span class="title title_controls">쿠폰</span></a></li><li class="  " data-title="shopping_shipping"><a href="/admin/shopping/shipping"><span class="title title_controls">배송관리</span></a></li><li class="  " data-title="shopping_config"><a href="/admin/shopping/config"><span class="title title_controls">쇼핑 환경설정</span></a></li></ul></li><li class="active gui-folder expanded" data-title="booking"><a href="/admin/booking" class="sidebar-nav-menu1" onclick="return false;"><div class="gui-icon"><i class="db-calendar"></i></div><span class="title title_controls">예약</span></a><ul><li class="  " data-title="booking_product"><a href="/admin/booking/product"><span class="title title_controls">객실/사이트 관리</span></a></li><li class="  " data-title="booking_order_cal"><a href="/admin/booking/order_cal"><span class="title title_controls">예약 현황 관리</span></a></li><li class="  " data-title="booking_order"><a href="/admin/booking/order"><span class="title title_controls">예약 신청 관리</span></a></li><li class="  " data-title="booking_review"><a href="/admin/booking/review"><span class="title title_controls">후기 관리</span></a></li><li class="active expanded" data-title="booking_answers"><a href="/admin/booking/answers" class=" active"><span class="title title_controls">문의관리</span></a></li><li class="  " data-title="booking_option"><a href="/admin/booking/option"><span class="title title_controls">옵션 관리</span></a></li><li class="  " data-title="booking_season"><a href="/admin/booking/season"><span class="title title_controls">성수기/휴일 관리</span></a></li><li class="  " data-title="booking_config"><a href="/admin/booking/config"><span class="title title_controls">예약 설정</span></a></li></ul></li><li class=" gui-folder " data-title="contents"><a href="/admin/contents" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-pencil"></i></div><span class="title title_controls">컨텐츠 관리</span></a><ul><li class="  " data-title="contents_post"><a href="/admin/contents/post"><span class="title title_controls">게시물 관리</span></a></li><li class="  " data-title="contents_comment"><a href="/admin/contents/comment"><span class="title title_controls">댓글 관리</span></a></li><li class="  " data-title="contents_form"><a href="/admin/contents/form"><span class="title title_controls">입력폼 관리</span></a></li><li class="  " data-title="contents_map"><a href="/admin/contents/map"><span class="title title_controls">지도 관리</span></a></li><li class="  " data-title="contents_calendar"><a href="/admin/contents/calendar"><span class="title title_controls">일정 관리</span></a></li><li class="  " data-title="contents_gallery"><a href="/admin/contents/gallery"><span class="title title_controls">갤러리 관리</span></a></li><li class="  " data-title="contents_report"><a href="/admin/contents/report"><span class="title title_controls">신고/차단 관리</span></a></li></ul></li><li class=" gui-folder " data-title="marketing"><a href="/admin/marketing" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-megaphone"></i></div><span class="title title_controls">광고 캠페인 관리</span><span class="badge_icon badge_beta">Beta</span></a><ul><li class="  " data-title="marketing_home"><a href="/admin/marketing/marketing-home"><span class="title title_controls">홈</span></a></li><li class="  " data-title="marketing_dashboard"><a href="/admin/marketing/dashboard"><span class="title title_controls">대시보드</span></a></li><li class="  " data-title="marketing_campaign"><a href="/admin/marketing/campaign"><span class="title title_controls">캠페인</span></a></li><li class="  " data-title="marketing_credit"><a href="/admin/marketing/credit"><span class="title title_controls">크레딧 관리</span></a></li><li class="  " data-title="marketing_dataconnect"><a href="/admin/marketing/data-connect"><span class="title title_controls">데이터 연결</span></a></li></ul></li><li class=" gui-folder " data-title="app"><a href="/admin/app" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-mobile"></i></div><span class="title title_controls">App 신청 및 관리</span></a><ul><li class="  " data-title="app_android"><a href="/admin/app/android"><span class="title title_controls">Android 앱</span></a></li><li class="  " data-title="app_ios"><a href="/admin/app/ios"><span class="title title_controls">iOS 앱</span></a></li></ul></li><li class=" gui-folder " data-title="stat"><a href="/admin/stat" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-status-up"></i></div><span class="title title_controls">통계</span></a><ul><li class="  " data-title="stat_summary"><a href="/admin/stat/summary"><span class="title title_controls">개요</span></a></li><li class="  " data-title="stat_analytics"><a href="/admin/stat/analytics"><span class="title title_controls">기간별 분석</span></a></li><li class="  " data-title="admin_stat_mileage"><a href="/admin/stat/mileage"><span class="title title_controls">적립금 통계</span></a></li><li class="  " data-title="stat_shopping"><a href="/admin/stat/shopping"><span class="title title_controls">매출</span><span class="badge_icon badge_beta">Beta</span></a></li><li class="  " data-title="stat_feedback"><a href="/admin/stat/feedback"><span class="title title_controls">컨텐츠 반응</span></a></li><li class="  " data-title="stat_visitor"><a href="/admin/stat/visitor"><span class="title title_controls">방문자 통계</span></a></li><li class="  " data-title="stat_site"><a href="/admin/stat/site"><span class="title title_controls">유입 사이트</span></a></li><li class="  " data-title="stat_keyword"><a href="/admin/stat/keyword"><span class="title title_controls">유입 검색어</span></a></li><li class="  " data-title="stat_page"><a href="/admin/stat/page"><span class="title title_controls">많이 방문한 페이지</span></a></li><li class="  " data-title="stat_storage"><a href="/admin/stat/storage"><span class="title title_controls">저장공간</span></a></li><li class="  " data-title="stat_traffic"><a href="/admin/stat/traffic"><span class="title title_controls">트래픽</span></a></li><li class="  " data-title="stat_laplace_analytics"><a href="/admin/stat/laplace_analytics"><span class="title title_controls">라플라스 애널리틱스</span></a></li><li class="  " data-title="marketing_acecounter"><a href="/admin/stat/ace_counter"><span class="title title_controls">에이스카운터</span></a></li></ul></li><li class="  " data-title="payment"><a href="/admin/payment"><div class="gui-icon"><i class="icon-rocket"></i></div><span class="title title_controls">결제/앱스토어</span></a></li><li class=" gui-folder " data-title="config"><a href="/admin/config" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-settings"></i></div><span class="title title_controls">환경설정</span></a><ul><li class="  " data-title="config_default"><a href="/admin/config/default"><span class="title title_controls">기본 설정</span></a></li><li class="  " data-title="config_localize"><a href="/admin/config/localize"><span class="title title_controls">언어/지역/통화</span></a></li><li class="  " data-title="config_pg"><a href="/admin/config/pg"><span class="title title_controls">전자결제(PG) 설정</span></a></li><li class="  " data-title="config_domain"><a href="/admin/config/domain"><span class="title title_controls">도메인 구입 및 설정</span></a></li><li class="  " data-title="config_ssl"><a href="/admin/config/ssl"><span class="title title_controls">SSL(보안서버) 구입 및 설정</span></a></li><li class="  " data-title="config_security"><a href="/admin/config/security"><span class="title title_controls">보안 및 개인정보 보호</span></a></li><li class="  " data-title="config_membership"><a href="/admin/config/membership"><span class="title title_controls">가입 및 그룹 설정</span></a></li><li class="  " data-title="config_seo"><a href="/admin/config/seo"><span class="title title_controls">SEO, 헤더설정</span></a></li><li class="  " data-title="config_etc"><a href="/admin/config/etc"><span class="title title_controls">약관 설정</span></a></li><li class="  " data-title="config_popup"><a href="/admin/config/popup"><span class="title title_controls">팝업/배너 관리</span></a></li><li class="  " data-title="config_adult"><a href="/admin/config/adult"><span class="title title_controls">본인인증/성인인증</span></a></li><li class="  " data-title="config_oauth"><a href="/admin/config/oauth"><span class="title title_controls">소셜 로그인 / API 설정</span></a></li><li class="  " data-title="config_chat"><a href="/admin/config/chat"><span class="title title_controls">실시간 상담 설정</span></a></li><li class="  " data-title="config_find_designer"><a href="/admin/config/find_designer"><span class="title title_controls">디자이너/리셀러 찾기</span></a></li><li class="  " data-title="config_api_v2"><a href="/admin/config/rest_v2"><span class="title title_controls">외부 서비스 연동 (API)</span></a></li></ul></li><li class="spacer"></li><li class="top-menu"><div><span>리소스</span></div></li><li class="  " data-title="support"><a href="//imweb.me/customer" target="_blank"><div class="gui-icon"><i class="db-comments"></i></div><span class="title title_controls">고객지원</span></a></li><li class=" gui-folder " data-title="campus"><a href="edu" class="sidebar-nav-menu" onclick="return false;"><div class="gui-icon"><i class="db-graduation-cap"></i></div><span class="title title_controls">아임웹 교육</span></a><ul><li class="  " data-title="campus_edu"><a href="https://imweb.me/edu" target="_blank"><span class="title title_controls">교육 일정/신청</span></a></li><li class="  " data-title="campus_video"><a href="https://imweb.me/video_lecture" target="_blank"><span class="title title_controls">동영상 강의</span></a></li></ul></li><li class="  " data-title="consulting_design"><a href="https://imweb.me/find_designer" target="_blank"><div class="gui-icon"><i class="db-glasses"></i></div><span class="title title_controls">디자이너 찾기</span></a></li></ul>		<div class="height-1"></div>
		<div class="menubar-foot-panel">
			<div class="full-height">
								<a href="javascript:" class="dropdown-toggle block _lang_button" data-toggle="dropdown" tabindex="-1" aria-expanded="false">
					<i class="icon-globe"></i>
					<span class="panel-text">한국어</span>
				</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="javascript:;" onclick="ADMIN.changeAdminLang('KR')" data-language="KR">한국어</a></li><li><a href="javascript:;" onclick="ADMIN.changeAdminLang('EN')" data-language="EN">English (Beta)</a></li><li><a href="javascript:;" onclick="ADMIN.changeAdminLang('zh-TW')" data-language="zh-TW">中文 (繁體)</a></li>				</ul>
			</div>
		</div>
	</div></div><div class="nano-pane"><div class="nano-slider" style="height: 719px; top: 0px;"></div></div></div>
</div>
<div class="fold_area tabled animate" style="padding-left: 24px;">
	<div class="table-cell vertical-middle" style="padding-right: 45px;">
		<a href="/admin/" class="logo_icon_menu">
			<img src="/common/img/imweb_new_logo_white2.png?v2">		</a>
	</div>
	<a class="_tooltip_btn side_bar_btn" href="javascript:void(0)" role="button" id="toggle_button">
		<span class="fold_button left" data-original-title="사이드바 접어두기" data-toggle="tooltip" data-placement="bottom">
			<i class="icons fa fa-chevron-left" style="opacity: 0.6"></i>
			<i class="icons fa fa-chevron-left"></i>
		</span>
		<span class="fold_button right" data-original-title="사이드바 펼쳐두기" data-toggle="tooltip" data-placement="bottom">
			<i class="icons fa fa-chevron-right"></i>
			<i class="icons fa fa-chevron-right" style="opacity: 0.6"></i>
		</span>
	</a>
</div>

<script>
  (function(){
    let body = document.body;
    let btn = document.querySelector('#toggle_button');
    let sidebar_mini_class = 'sidebar-mini';
    let user_sm_status = getCookie('sm_status');
    let window_width = window.innerWidth;
    setPrimarySideMenu();

    btn.addEventListener('click', handleToggleButton);
    btn.addEventListener('touch', handleToggleButton);

    //만약 사용자가 버튼을 누르지 않았을때만 이 이벤트 리스너를 사용할것임.
      window.onresize = () => {
        window_width = window.innerWidth;
        if(user_sm_status !== 'h'&& user_sm_status !== 's') {
          resizeWindow(window_width)
        }
      }

    function handleToggleButton(){
      if (user_sm_status == 'h') {
        setSideMenu('show');
      } else {
        setSideMenu('hide');
      }
    }

    function resizeWindow(window_width){
      if (window_width > 1280 || window_width < 991) {
        body.classList.remove(sidebar_mini_class);
      }
      //992~1279 일때
     else {
        body.classList.add(sidebar_mini_class)
      }
    }

    function setPrimarySideMenu() {
      if( window_width > 1280 && user_sm_status !== 'h'|| window_width < 991 ) {
        body.classList.remove(sidebar_mini_class);
      }
      //992~1279 일때
      else if( window_width <=1280 && window_width >= 991) {
          if(user_sm_status == 's') body.classList.remove(sidebar_mini_class);
          else body.classList.add(sidebar_mini_class)
      }
      else{
        body.classList.add(sidebar_mini_class)
      }
    }

    function setSideMenu(show){
      if(show == "show") {
        setCookie('sm_status', 's',1);
        body.classList.remove(sidebar_mini_class);
        user_sm_status = 's'
      }
      else{
        setCookie('sm_status','h',1);
        body.classList.add(sidebar_mini_class);
        user_sm_status = 'h';
      }
    }
  })()

</script>
</div> <!-- END BASE -->

<script>
</script><div style="position: absolute; width: 1px; height: 1px; left: -10000px;" data-ip="220.117.144.98" data-ip2="" data-ip3="220.117.144.98, 130.176.126.144"><input id="dummy_input" type="text"></div>

<div class="modal" id="cocoaModal" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>

<div class="modal submodal" role="dialog" id="cocoaSubModal" style="z-index: 17001">
	<div class="modal-dialog">
		<div class="modal-content"></div>
	</div>
</div>

<iframe name="hidden_frame" id="hidden_frame" style="position: absolute; left: -9999px; width: 1px; height: 1px; top:-9999px;"></iframe>

<!-- Channel Script -->
<script type="text/javascript">
window.channelPluginSettings = {"pluginKey":"6a8aaaf7-8e2f-400b-9946-491b9354592f","language":"ko","zIndex":1000,"memberId":"M20230724bf273e96df77e","profile":{"name":"\uc870\uc5f0\ud76c","mobileNumber":"01076448508","email":"fhzp8507@gmail.com","joinTime":"2023-07-24 10:03:20","avatarUrl":"https:\/\/cdn.imweb.me\/thumbnail\/20230724\/7e76bd54170f9.png","memberType":"Free","educationApplication":"N","visitsCount":10,"usingConsulting":"","siteVersion":"Free","isSiteExpired":"N","makeDate_dcv1":"2023-07-24 10:03:22","makeDate":"2023-07-24 10:03:22","expireDate":null,"siteMemberCount_dcv1":1,"siteMemberCount":1,"mainDomain":"yeonhee0623.imweb.me","imwebDomain":"yeonhee0623.imweb.me","useSSL":"","usingTrace":"N","pgName":"\ubbf8\uac00\uc785","usingNpay":false,"npayVersion":2,"totalSalePrice":0,"lastMonthSalePrice":0}};
(function() {
	var w = window;
	if (w.ChannelIO) {
		return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
	}
	var d = window.document;
	var ch = function() {
		ch.c(arguments);
	};
	ch.q = [];
	ch.c = function(args) {
		ch.q.push(args);
	};
	w.ChannelIO = ch;
	function l() {
		if (w.ChannelIOInitialized) {
			return;
		}
		w.ChannelIOInitialized = true;
		var s = document.createElement('script');
		s.style.zIndex = 1100; 
		s.type = 'text/javascript';
		s.async = true;
		s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
		s.charset = 'UTF-8';
		var x = document.getElementsByTagName('script')[0];
		x.parentNode.insertBefore(s, x);
	}
	if (document.readyState === 'complete') {
		l();
	} else if (window.attachEvent) {
		window.attachEvent('onload', l);
	} else {
	window.addEventListener('DOMContentLoaded', l, false);
	window.addEventListener('load', l, false);
	}
})();
</script>



<script>
	</script>

<script type="text/javascript">
    mixpanel.init('a4939111ea54962dbf95fe89a992eab3', {debug: false});
    mixpanel.identify('m202307244c9d6d5a3497a');
    MIXPANEL.init();
</script>

<div id="device-breakpoints"><div class="device-xs visible-xs" data-breakpoint="xs"></div><div class="device-sm visible-sm" data-breakpoint="sm"></div><div class="device-md visible-md" data-breakpoint="md"></div><div class="device-lg visible-lg" data-breakpoint="lg"></div></div><div id="ch-plugin" class="notranslate" style="z-index: 1000 !important;">      <div id="ch-plugin-entry"><div style="display: block !important;"></div></div>      <div id="ch-plugin-script" style="display:none;" class="ch-messenger-hidden">        <iframe id="ch-plugin-script-iframe" title="Channel chat" style="position:relative!important;height:100%!important;width:100%!important;border:none!important;"></iframe>      </div>    <style data-styled="active" data-styled-version="5.3.9"></style></div></body></html>