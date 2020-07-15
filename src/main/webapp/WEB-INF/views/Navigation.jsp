<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=on">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.0.1">
<script src="https://www.w3schools.com/lib/w3.js"></script>
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/carousel/">

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/main.css' type="text/css" />
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/index.css' type="text/css" />

</head>

<body>
	<c:set var='debug' value='true' scope='application' />
	<header class='c-header'>
		<div class='c-header__pcInner'>
			<h1 class='c-header__logo'>
				<img src="img/imovieLogo.svg" alt="logo">
			</h1>
			<nav class='c-header__nav'>
				<ul>
					<li class="c-header__nav__about is-current" data-nav='index'><a
						href="<c:url value='/' />" id='js-header-about'>首頁</a>
						<div class='c-header__nav__about__bottom'>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
						</div></li>
					<li class='c-header__nav__event' data-nav='event'><a
						href='room?type=roomall'>包廂</a>
						<div class='c-header__nav__event__bottom'>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
						</div></li>
					<li class='c-header__nav__goods' data-nav='goods'><a
						href="movie?type=movieall">電影</a>
						<div class='c-header__nav__goods__bottom'>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
						</div></li>
					<li class='c-header__nav__magazine' data-nav='magazine'><a
						href='menu?type=foodall'>菜單</a>
						<div class='c-header__nav__magazine__bottom'>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
							<div class='c-header__nav__event__bottom__dots'></div>
						</div></li>
					<li class=c-header__nav__issue data-nav=issue><a href="">購物車</a>
						<div class='c-header__nav__issue__bottom'>
							<div class='c-header__nav__issue__bottom__dots'></div>
							<div class='c-header__nav__issue__bottom__dots'></div>
							<div class='c-header__nav__issue__bottom__dots'></div>
							<div class='c-header__nav__issue__bottom__dots'></div>
							<div class='c-header__nav__issue__bottom__dots'></div>
							<div class='c-header__nav__issue__bottom__dots'></div>
							<div class='c-header__nav__issue__bottom__dots'></div>
						</div></li>
					<li class=c-header__nav__news data-nav=news><a
						href=https://www.ditjapan.com/news>TSET</a>
						<div class=c-header__nav__news__bottom>
							<div class=c-header__nav__news__bottom__dots></div>
							<div class=c-header__nav__news__bottom__dots></div>
							<div class=c-header__nav__news__bottom__dots></div>
							<div class=c-header__nav__news__bottom__dots></div>
							<div class=c-header__nav__news__bottom__dots></div>
							<div class=c-header__nav__news__bottom__dots></div>
							<div class=c-header__nav__news__bottom__dots></div>
						</div></li>
				</ul>
			</nav>
			<div class=c-header__sns>
				<ul>
					<li><a href=https://www.instagram.com/doittheater
						/ target=_blank> <svg id=i_btn.svg
								xmlns=http://www.w3.org/2000/svg width=25.03 height=25.094
								viewBox="0 0 25.03 25.094">
                            <defs>

                            </defs>
                            <path id=instagram paint-order=stroke
									class="head-insta-21 snsIconBody"
									d=M1062.39,44.831h-4.2a2.923,2.923,0,0,0-2.91,2.923V51.97a2.922,2.922,0,0,0,2.91,2.922h4.2a2.916,2.916,0,0,0,2.91-2.922V47.754A2.916,2.916,0,0,0,1062.39,44.831Zm-2.1,6.63a1.6,1.6,0,1,1,1.6-1.6A1.6,1.6,0,0,1,1060.29,51.46ZM1063.03,48a0.884,0.884,0,1,1,.88-0.884A0.886,0.886,0,0,1,1063.03,48Z
									transform="translate(-1047.78 -37.313)"></path>
                            <path id=line
									class="head-insta-1 snsIconLine"
									d=M1054.68,39.206a12.04,12.04,0,1,1-5.11,5.23
									transform="translate(-1047.78 -37.313)"></path>
                        </svg>
					</a></li>
					<li><a href=https://ja-jp.facebook.com/doittheater
						/ target=_blank> <svg id=f_btn.svg
								xmlns=http://www.w3.org/2000/svg width=25 height=25.094
								viewBox="0 0 25 25.094">
                            <defs>

                            </defs>
                            <path id=Facebook paint-order=stroke
									class="head-fb-21 snsIconBody"
									d=M1095.22,54.854h-2.23V49.383h-1.34V47.561h1.34V46.449c0-1.52.45-2.535,2.2-2.535h1.37v1.823h-0.82c-0.68,0-.73.333-0.73,0.819v1.005h1.65l-0.19,1.822h-1.25v5.471Z
									transform="translate(-1081.81 -37.313)"></path>
                            <path id=line class="head-fb-1 snsIconLine"
									d=M1088.69,39.206a12.04,12.04,0,1,1-5.11,5.23
									transform="translate(-1081.81 -37.313)"></path>
                        </svg>
					</a></li>
					<li><a href=https://twitter.com/doittheater target=_blank>
							<svg id=t_btn.svg xmlns=http://www.w3.org/2000/svg width=25
								height=25.094 viewBox="0 0 25 25.094">
                            <defs>

                            </defs>
                            <path id=Twitter paint-order=stroke
									class="head-twitter-21 snsIconBody"
									d=M1124.96,50.889V50.85a0.972,0.972,0,0,1-.38-0.123l-0.18-.061V50.645l-0.12-.04c0-.013-0.01-0.027-0.01-0.041a0.786,0.786,0,0,1-.08-0.02,0.078,0.078,0,0,1-.02-0.041h-0.04a0.07,0.07,0,0,1-.02-0.04h-0.04a0.078,0.078,0,0,1-.02-0.041l-0.06-.019c-0.03-.035-0.05-0.069-0.08-0.1h-0.04c-0.05-.054-0.09-0.108-0.14-0.162a0.555,0.555,0,0,0-.08-0.061v-0.04a0.549,0.549,0,0,0-.08-0.061v-0.04l-0.06-.041a2.634,2.634,0,0,1-.45-1.5,1.688,1.688,0,0,1,.3.142c0.04,0.007.08,0.013,0.11,0.02a2.187,2.187,0,0,0,.66.141V48.68l-0.06-.04V48.62h-0.04a0.213,0.213,0,0,1-.04-0.061,2.324,2.324,0,0,1-.75-1.015V47.484h-0.02v-0.06h-0.02V47.362h-0.02V47.3h-0.02c-0.01-.054-0.01-0.109-0.02-0.162h-0.02V47.019a1.758,1.758,0,0,1,0-.79V46.106c0.05-.169.1-0.337,0.16-0.507h0.02V45.559h0.02V45.518h0.02v-0.04h0.02V45.437h0.02a0.146,0.146,0,0,1,.02-0.061,0.049,0.049,0,0,1,.04.02l0.09,0.122a0.158,0.158,0,0,1,.04.02v0.041c0.08,0.067.15,0.135,0.22,0.2v0.04l0.06,0.041,0.12,0.142h0.04c0.06,0.074.13,0.149,0.2,0.223h0.04l0.09,0.122h0.04l0.06,0.081h0.04l0.06,0.081h0.04c0.01,0.02.03,0.041,0.04,0.061h0.04c0.01,0.02.03,0.04,0.04,0.061h0.04c0.01,0.013.01,0.027,0.02,0.04h0.04c0.01,0.02.03,0.041,0.04,0.061h0.04a0.074,0.074,0,0,0,.02.039l0.06,0.02v0.021H1125a0.076,0.076,0,0,0,.02.041,0.8,0.8,0,0,0,.08.02V46.9c0.02,0.007.03,0.013,0.05,0.02a0.075,0.075,0,0,1,.02.04h0.04v0.02h0.04a0.081,0.081,0,0,1,.02.041l0.12,0.04c0.01,0.014.01,0.027,0.02,0.04h0.04l0.04,0.041h0.04v0.02h0.04v0.02h0.04V47.2h0.04v0.02h0.04v0.021h0.04v0.02h0.04v0.02h0.04V47.3h0.04v0.02l0.08,0.02v0.02h0.03v0.021h0.06V47.4c0.03,0.007.06,0.013,0.08,0.02v0.021h0.06v0.02h0.04v0.019h0.06V47.5h0.04v0.021c0.04,0.006.08,0.014,0.12,0.019v0.02h0.04v0.021l0.12,0.02v0.02h0.06v0.021h0.06v0.02l0.19,0.04v0.021l0.24,0.04v0.02h0.08v0.021h0.08v0.02h0.1V47.85h0.1v0.02h0.12v0.02l0.81,0.081c-0.01-.061-0.03-0.134-0.04-0.183V47.626h-0.02a1.187,1.187,0,0,1,.02-0.426V47.039h0.02V46.917h0.02v-0.1h0.02V46.755h0.02V46.674h0.01V46.613h0.02v-0.06h0.02V46.491h0.02a0.245,0.245,0,0,0,.02-0.082h0.02V46.35h0.02a0.243,0.243,0,0,0,.02-0.082h0.02a0.238,0.238,0,0,0,.02-0.08,0.213,0.213,0,0,0,.04-0.021,0.248,0.248,0,0,0,.02-0.081h0.02a0.144,0.144,0,0,0,.02-0.061c0.01-.007.03-0.013,0.04-0.02V45.964l0.06-.04V45.882l0.06-.039V45.8l0.18-.163a2.084,2.084,0,0,1,.14-0.161h0.04a0.352,0.352,0,0,0,.05-0.082h0.04a0.074,0.074,0,0,0,.02-0.04h0.04a0.077,0.077,0,0,0,.02-0.041h0.04a0.072,0.072,0,0,0,.02-0.04h0.04a0.072,0.072,0,0,0,.02-0.04l0.12-.04v-0.02h0.04V45.154l0.12-.041v-0.02l0.12-.02V45.052H1130v-0.02l0.14-.022v-0.02h0.05V44.971h0.1V44.95h0.1V44.93h0.14V44.91a2.036,2.036,0,0,1,.53.02h0.14V44.95h0.1v0.02h0.08v0.021h0.08v0.02h0.06v0.022h0.06v0.02h0.06v0.021h0.06v0.02h0.04v0.02h0.06v0.02a1.148,1.148,0,0,0,.11.042v0.02c0.03,0.007.06,0.014,0.08,0.02a0.081,0.081,0,0,1,.02.041c0.03,0.007.06,0.014,0.08,0.02a0.081,0.081,0,0,1,.02.04h0.04c0.01,0.014.01,0.027,0.02,0.041h0.04c0.01,0.02.03,0.04,0.04,0.062h0.04c0.01,0.019.03,0.04,0.04,0.061a0.8,0.8,0,0,1,.24.222c0.02-.008-0.01-0.011.02-0.02h0.09V45.66h0.08V45.64h0.08V45.62h0.08V45.6H1133v-0.02h0.06v-0.02h0.06v-0.02h0.06v-0.02h0.06V45.5l0.12-.019V45.458h0.04v-0.02h0.06V45.418c0.02-.007.05-0.014,0.07-0.021v-0.02h0.06v-0.02h0.04v-0.02h0.04V45.315h0.04V45.3h0.04v-0.02h0.04v-0.02h0.04v-0.02h0.04v-0.02l0.12-.04V45.154h0.04c0.01-.013.01-0.027,0.02-0.041l0.06-.02v0.061h-0.02a0.516,0.516,0,0,0-.02.121h-0.02c-0.01.027-.01,0.054-0.02,0.081h-0.02v0.062h-0.02v0.04h-0.02V45.5c-0.01.007-.03,0.014-0.04,0.02-0.01.041-.03,0.081-0.04,0.121-0.01.007-.03,0.014-0.04,0.02V45.7h-0.02c-0.01.021-.01,0.04-0.02,0.062s-0.03.013-.04,0.02v0.04a0.449,0.449,0,0,1-.08.06v0.042c-0.05.046-.1,0.094-0.16,0.141a1.5,1.5,0,0,1-.45.385v0.02h0.04v-0.02h0.14V46.43l0.22-.021V46.39h0.07c0.19-.054.37-0.108,0.56-0.162v-0.02h0.04v-0.02c0.04-.008.08-0.015,0.12-0.021v-0.02c0.06-.02.11-0.041,0.17-0.061v0.02a0.4,0.4,0,0,0-.08.122c-0.02.013-.03,0.026-0.05,0.04V46.31l-0.06.04v0.04a0.491,0.491,0,0,0-.08.061v0.041c-0.19.2-.37,0.392-0.56,0.588l-0.06.02c-0.02.034-.05,0.067-0.07,0.1h-0.04l-0.06.081a1.168,1.168,0,0,0-.14.081v0.75a0.625,0.625,0,0,0-.02.244l-0.12.789h-0.02c-0.01.062-.01,0.123-0.02,0.183h-0.02v0.081h-0.02v0.062H1133c-0.01.054-.01,0.108-0.02,0.162h-0.02v0.061h-0.02v0.061h-0.02v0.081h-0.02V49.9h-0.02v0.061h-0.02v0.062h-0.02v0.061h-0.02v0.04h-0.02a0.509,0.509,0,0,1-.02.121h-0.02v0.041h-0.02v0.06h-0.02V50.4h-0.02a0.239,0.239,0,0,1-.02.08h-0.02v0.061h-0.01v0.04h-0.02a0.373,0.373,0,0,0-.02.1h-0.02a0.558,0.558,0,0,0-.04.121h-0.02V50.85h-0.02v0.039h-0.02V50.93h-0.02V50.97h-0.02v0.042h-0.02v0.041h-0.02v0.04l-0.04.041v0.04c-0.01.006-.03,0.013-0.04,0.02-0.01.041-.03,0.081-0.04,0.122-0.01.006-.03,0.014-0.04,0.02v0.04l-0.04.04v0.041h-0.02c-0.01.019-.01,0.039-0.02,0.061s-0.03.013-.04,0.02c-0.01.027-.01,0.054-0.02,0.081h-0.02a0.071,0.071,0,0,1-.06.081v0.041h-0.02a0.143,0.143,0,0,1-.02.06,0.153,0.153,0,0,1-.04.021v0.041l-0.06.04v0.041a0.137,0.137,0,0,1-.04.019V52a0.218,0.218,0,0,0-.05.04v0.041a0.428,0.428,0,0,0-.08.061v0.039a0.586,0.586,0,0,0-.08.062v0.041a0.5,0.5,0,0,0-.08.061V52.39c-0.05.04-.09,0.081-0.14,0.121v0.04c-0.07.061-.13,0.123-0.2,0.183-0.1.115-.21,0.23-0.31,0.345h-0.04a1.073,1.073,0,0,0-.1.121h-0.04c-0.03.035-.05,0.069-0.08,0.1h-0.04l-0.06.081h-0.04c-0.01.02-.03,0.04-0.04,0.062h-0.04a0.207,0.207,0,0,1-.04.06h-0.04a0.2,0.2,0,0,1-.04.062h-0.04a0.079,0.079,0,0,1-.02.041c-0.02.007-.04,0.012-0.06,0.02v0.02h-0.04c0,0.013-.01.027-0.01,0.041h-0.04a0.075,0.075,0,0,0-.02.04h-0.04a0.076,0.076,0,0,0-.02.041,0.613,0.613,0,0,0-.08.02,0.077,0.077,0,0,0-.02.041h-0.04v0.019h-0.04c-0.01.014-.01,0.027-0.02,0.042l-0.12.039c-0.01.014-.01,0.027-0.02,0.041h-0.04l-0.04.041h-0.04v0.02h-0.04v0.02h-0.04v0.021h-0.04v0.02h-0.04v0.02a0.956,0.956,0,0,0-.11.041v0.019h-0.06v0.021h-0.04v0.02c-0.03.007-.06,0.014-0.08,0.02v0.021h-0.06v0.02h-0.04v0.02c-0.28.094-.55,0.189-0.83,0.283-0.09.014-.17,0.028-0.26,0.041a5.477,5.477,0,0,1-1.6.181l-0.69-.02v-0.02h-0.18V54.74h-0.14V54.72h-0.14V54.7l-0.21-.021V54.659l-0.18-.019v-0.02h-0.08V54.6h-0.08V54.578h-0.08v-0.02h-0.08v-0.02h-0.06v-0.02h-0.08V54.5h-0.05v-0.02h-0.06v-0.02h-0.06v-0.02h-0.06v-0.02h-0.06V54.4c-0.04-.007-0.08-0.013-0.12-0.021v-0.02h-0.04v-0.02h-0.06v-0.02l-0.1-.02v-0.02h-0.04v-0.02h-0.06V54.233c-0.02-.006-0.05-0.013-0.08-0.02v-0.02h-0.06V54.172h-0.03V54.153l-0.08-.02V54.112h-0.04v-0.02h-0.04v-0.02h-0.04V54.051h-0.04v-0.02h-0.04v-0.02h-0.04V53.991h-0.04V53.97h-0.04l-0.04-.041h-0.04c-0.01-.013-0.01-0.026-0.02-0.039-0.03-.008-0.05-0.015-0.08-0.021V53.848h-0.04a0.074,0.074,0,0,0-.02-0.039h-0.04V53.788a0.47,0.47,0,0,1-.15-0.1l0.9,0.02v-0.02h0.22V53.666h0.16v-0.02h0.12v-0.02h0.12v-0.02c0.06-.007.12-0.014,0.17-0.021v-0.02h0.08v-0.02h0.08v-0.02h0.06V53.5h0.08v-0.02h0.06v-0.02h0.06v-0.02h0.06V53.422h0.06V53.4h0.04v-0.02h0.06v-0.02h0.04v-0.02h0.06V53.321h0.04V53.3h0.05v-0.02l0.12-.041V53.22h0.04V53.2h0.04v-0.02h0.04V53.16h0.04V53.139h0.04v-0.02h0.04l0.04-.04h0.04c0.01-.013.01-0.027,0.02-0.042,0.03-.006.05-0.013,0.08-0.02,0.01-.012.01-0.026,0.02-0.04l0.08-.02a0.078,0.078,0,0,1,.02-0.041h0.04V52.9l0.06-.02a0.083,0.083,0,0,1,.02-0.041h0.04c0-.013.01-0.026,0.01-0.04H1126a0.206,0.206,0,0,0,.04-0.061h0.04a0.076,0.076,0,0,0,.02-0.041l0.06-.02V52.653h-0.12a1.077,1.077,0,0,0-.29-0.041v-0.02l-0.16-.02v-0.02h-0.06v-0.02h-0.06v-0.02h-0.06V52.49l-0.12-.019V52.45l-0.12-.041V52.39h-0.04V52.369h-0.03v-0.02l-0.12-.041a0.074,0.074,0,0,1-.02-0.04h-0.04a0.079,0.079,0,0,1-.02-0.041h-0.04a0.075,0.075,0,0,1-.02-0.041h-0.04c-0.01-.019-0.03-0.039-0.04-0.061h-0.04c-0.03-.033-0.05-0.067-0.08-0.1h-0.04a2.11,2.11,0,0,0-.14-0.162l-0.06-.041V51.781a0.933,0.933,0,0,0-.1-0.081,0.146,0.146,0,0,0-.02-0.061l-0.03-.02V51.578a0.134,0.134,0,0,1-.04-0.02,0.144,0.144,0,0,1-.02-0.062h-0.02V51.457a0.17,0.17,0,0,1-.04-0.021,0.241,0.241,0,0,1-.02-0.081h-0.02v-0.04h-0.02V51.274h-0.02v-0.04h-0.02a0.589,0.589,0,0,1-.04-0.122h-0.02V51.052c-0.02-.038-0.04-0.1-0.06-0.143h0.08V50.93h0.16A2.421,2.421,0,0,0,1124.96,50.889Z
									transform="translate(-1115.81 -37.313)"></path>
                            <path id=line
									class="head-twitter-1 snsIconLine"
									d=M1122.7,39.206a11.909,11.909,0,0,1,5.61-1.4,12.025,12.025,0,1,1-10.72,6.626
									transform="translate(-1115.81 -37.313)"></path>
                        </svg>
					</a></li>
					<li><a
						href=https://www.youtube.com/channel/UCBvxB6IbTQp3r8xdAphtm1A
						target=_blank> <svg id=y_btn.svg
								xmlns=http://www.w3.org/2000/svg width=25 height=25.094
								viewBox="0 0 25 25.094">
                            <defs>

                            </defs>
                            <path id=シェイプ_1288 paint-order=stroke
									data-name="シェイプ 1288" class="head-yt-21 snsIconBody"
									d=M1168.71,46.562a1.8,1.8,0,0,0-1.24-1.263,50.268,50.268,0,0,0-10.94,0,1.8,1.8,0,0,0-1.24,1.263,20.529,20.529,0,0,0,0,6.877,1.794,1.794,0,0,0,1.24,1.263,50.251,50.251,0,0,0,10.94,0,1.794,1.794,0,0,0,1.24-1.263A20.529,20.529,0,0,0,1168.71,46.562Zm-8.14,5.549V47.89l3.66,2.11Z
									transform="translate(-1149.81 -37.313)"></path>
                            <path id=line class="head-yt-1 snsIconLine"
									d=M1156.71,39.206a11.909,11.909,0,0,1,5.61-1.4,12.025,12.025,0,1,1-10.72,6.626
									transform="translate(-1149.81 -37.313)"></path>
                        </svg>
					</a></li>
				</ul>
			</div>
			<div class=c-header__contact>
				<div class=c-header__contact__inner>
					<a href=# class="c-header__contact__btn js-contact-toggle"> <span
						class=c-header__contact__btn__icon> <svg version=1.1
								id=Capa_1 xmlns=http://www.w3.org/2000/svg
								xmlns:xlink=http://www.w3.org/1999/xlink x=0px y=0px
								viewBox="-49 262 14 11.3"
								style="enable-background: new -49 262 14 11.3"
								xml:space=preserve>
                            <path fill=#FFFFFF
									d=M-35,271.6v-7.8c0-0.2-0.1-0.5-0.1-0.7l-3.8,4.3l3.9,4.6C-35,271.9-35,271.7-35,271.6z>
                            </path>
                            <path fill=#FFFFFF
									d=M-47.2,262c-0.2,0-0.4,0-0.5,0.1l5.4,6c0.2,0.2,0.4,0.2,0.6,0l5.4-6c-0.2-0.1-0.3-0.1-0.5-0.1H-47.2z>
                            </path>
                            <path fill=#FFFFFF
									d="M-35.9,273.1l-4-4.8l-1.1,1.2c-0.3,0.3-0.6,0.4-0.9,0.4c-0.4,0-0.7-0.2-0.9-0.4l-1-1.1l-4,4.8
	c0.2,0.1,0.4,0.2,0.6,0.2h10.8C-36.4,273.3-36.1,273.2-35.9,273.1z"></path>
                            <path fill=#FFFFFF
									d=M-49,263.8v7.7c0,0.2,0,0.4,0.1,0.6l3.9-4.6l-3.8-4.3C-48.9,263.4-49,263.6-49,263.8z>
                            </path>
                        </svg>
					</span> <span class='c-header__contact__btn__txtOpen'><span>登入</span>
							/ <span>註冊</span></span>
						<div class='c-header__contact__btn__line1'></div>
						<div class='c-header__contact__btn__line2'></div>
					</a>
					<svg id='contactBtn.svg' xmlns='http://www.w3.org/2000/svg'
						width='126.04' height='67.5' viewBox="0 0 126.04 67.5">
                    <defs>
                        <style>
.contact-frame-200 {
	fill-rule: evenodd;
	opacity: 0.3;
	fill-opacity: 0
}

.contact-frame-200 {
	fill: #fff;
	stroke: #fff;
	stroke-width: 1px
}
</style>
                    </defs>
                    <path id='out_line' class='contact-frame-200'
							d='M1204.34,37.81l5.16-5.022h114.87l5,5.022v24.1l-5,5.021H1209.34l-5-5.021V37.81Z'
							transform='translate(-1203.84)'></path>
                </svg>
				</div>
			</div>
		</div>
	</header>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../js/jquery.slim.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.bundle.js"></script>

</body>
</html>