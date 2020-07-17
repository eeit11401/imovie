<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="UTF-8">

<head>
<title>/</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.5/examples/carousel/">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/main.css' type="text/css" />
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/index.css' type="text/css" />

<style>
* {
	padding: 0;
	margin: 0;
}

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

.titleFrame-1, .titleFrame-2 {
	fill: none;
	stroke: #2f2e2e;
	stroke-width: 1px;
	fill-rule: evenodd;
}

.titleFrame-1 {
	opacity: 0.3;
}

.issue-bottom-icon-1, .issue-bottom-icon-2 {
	fill: none;
	stroke-width: 1px;
	opacity: 0.5;
}

.issue-bottom-icon-2 {
	fill-rule: evenodd;
}

.titleFrame-2 {
	opacity: 0.5;
}

.titleGood-1 {
	fill: #2f2e2e;
	fill-rule: evenodd;
}

.arrow-right-1 {
	fill-rule: evenodd;
}

.issue-bottom-icon-1, .issue-bottom-icon-2 {
	fill: none;
	stroke-width: 1px;
	opacity: 0.5;
}

.issue-bottom-icon-2 {
	fill-rule: evenodd;
}

.issue-bottom-icon-1, .issue-bottom-icon-2 {
	fill: none;
	stroke-width: 1px;
	opacity: 0.5;
}

.issue-bottom-icon-2 {
	fill-rule: evenodd;
}

.issue-bottom-icon-1, .issue-bottom-icon-2 {
	fill: none;
	stroke-width: 1px;
	opacity: 0.5;
}
</style>
</head>
<body>
	<c:set var="funcName" value="Home" scope="session" />
	<jsp:include page="Navigation.jsp"/>
	<section class="p-top-mv is-active">
		<div class="p-top-mv__movie">
			<video id="js-top-mv-video" loop="true" autoplay="autoplay"
				preload="auto" muted="true" src="img/玩命關頭9.mp4"
				style="width: 100%;"></video>
		</div>
	</section>
	<section class="p-top-issue js-enter is-active" id="js-top-issue">

		<h2 class="p-top-issue__title">
			<div class="sectionTitle__line"></div>
			<div class="sectionTitle__frame">
				<svg id="frame.svg" viewBox="0 0 341 126" width="341px"
					height="126px">
                    <path id="inner_line" class="titleFrame-1"
						d="M833,2122H533a15,15,0,0,0-15-15v-85a15,15,0,0,0,15-15H833a15,15,0,0,0,15,15v85A15,15,0,0,0,833,2122Z"
						transform="translate(-512.5 -2001.5)"></path>
                    <path id="outer_line" class="titleFrame-2"
						d="M838,2127H528a15,15,0,0,0-15-15v-95a15,15,0,0,0,15-15H838a15,15,0,0,0,15,15v95A15,15,0,0,0,838,2127Z"
						transform="translate(-512.5 -2001.5)"></path>
                </svg>
				<div class="sectionTitle__frame__inner">
					<h2 class="sectionTitle__frame__inner__svg">
						<svg xmlns="http://www.w3.org/2000/svg" width="75.687"
							height="59.31" viewBox="0 0 75.687 59.31">
                            <path id="Good.svg" class="titleGood-1"
								d="M619.384,4647.89a40.847,40.847,0,0,0,6.018-4.82,82.184,82.184,0,0,0,5.95-7.01q1.632-2.1,2.822-3.89a31.868,31.868,0,0,0,2.108-3.66c0.68-1.42,1.184-2.54,1.513-3.34a11.275,11.275,0,0,0,.7-2.61,1.6,1.6,0,0,0,.034-0.37,2.074,2.074,0,0,0-.629-1.58,2.339,2.339,0,0,0-1.683-.6,8.39,8.39,0,0,0-2.55.51,14.582,14.582,0,0,0-2.448,1.11c-0.771.44-1.757,1.05-2.958,1.82a45.276,45.276,0,0,0-7.616,6.08,2.434,2.434,0,0,0-.816,1.7,0.978,0.978,0,0,0,.238.68,0.917,0.917,0,0,0,.748.28,0.735,0.735,0,0,0,.748-0.62,2.561,2.561,0,0,1,.425-0.81,4.958,4.958,0,0,1,.731-0.75q0.441-.375.612-0.54c0.7-.64,1.564-1.35,2.584-2.15q2.413-1.83,4.233-3.02a19.485,19.485,0,0,1,3.825-1.94,10.188,10.188,0,0,1,.986-0.36,3.289,3.289,0,0,1,.918-0.15,0.607,0.607,0,0,1,.748.61,4.43,4.43,0,0,1-.068.51,11.589,11.589,0,0,1-.51,1.53,38.559,38.559,0,0,1-4.726,8.5c-1.723,2.34-3.3,4.35-4.743,6.05a39.75,39.75,0,0,1-4.641,4.66,27.654,27.654,0,0,1-3.91,2.79,2.388,2.388,0,0,1-1.258.44,1.771,1.771,0,0,1-1.462-1.22,6.544,6.544,0,0,1-.748-2.21,31.355,31.355,0,0,1-.408-5.54q0-1.71.034-2.55a39.082,39.082,0,0,1,.646-6.21q0.577-3.15,1.6-6.88a109.363,109.363,0,0,1,3.468-10.82q1.088-2.85,1.9-4.72a30.211,30.211,0,0,1,1.87-3.61,15.3,15.3,0,0,1,1.258-1.78,7.245,7.245,0,0,1,1.394-1.28,2.711,2.711,0,0,1,1.462-.51,1.992,1.992,0,0,1,1.734,1.23,11.055,11.055,0,0,1,.561,1.07,4.869,4.869,0,0,1,.357,1.07,26.681,26.681,0,0,1,.714,5.92,17.474,17.474,0,0,1-.17,2.58,2.737,2.737,0,0,0-.034.51v0.2a0.634,0.634,0,0,0,.714.72,0.727,0.727,0,0,0,.646-0.51,1.838,1.838,0,0,0,.1-0.43c0.022-.17.045-0.31,0.068-0.42a16.306,16.306,0,0,0,.2-2.55,24.314,24.314,0,0,0-.34-3.81,29.14,29.14,0,0,0-.646-3.16,7.7,7.7,0,0,0-1.122-2.35,3.436,3.436,0,0,0-1.258-1.14,3.34,3.34,0,0,0-1.564-.39,4.058,4.058,0,0,0-1.938.51,6.641,6.641,0,0,0-1.53,1.18,12.288,12.288,0,0,0-1.36,1.68,27.542,27.542,0,0,0-2.652,4.72q-1.089,2.49-2.482,6.33a128.814,128.814,0,0,0-4.386,15.03,39.763,39.763,0,0,0-.833,5.64q-0.222,2.9-.221,6.46a8.733,8.733,0,0,1,.034.88,16.594,16.594,0,0,0,.17,1.74c0.022,0.22.073,0.62,0.153,1.19a15.242,15.242,0,0,0,.289,1.53,5.9,5.9,0,0,0,1.394,2.77,3.135,3.135,0,0,0,2.346,1.04,4.726,4.726,0,0,0,2.652-.96h0Zm22.56-6.76a2.294,2.294,0,0,0,.408.07,1.97,1.97,0,0,0,1.53-.85,6.472,6.472,0,0,0,.374-0.62,12.648,12.648,0,0,0,1.87-4.08,2.125,2.125,0,0,1,.612-1.12,2.2,2.2,0,0,1,1.19-.41,24.791,24.791,0,0,0,2.516-.47l1.19-.24a3.8,3.8,0,0,0,1.5-.58,0.807,0.807,0,0,0,.51-0.71l-0.068-.27a0.572,0.572,0,0,0-.544-0.38,1.547,1.547,0,0,0-.442.1l-0.2.09a1.721,1.721,0,0,1-.2.08,22.063,22.063,0,0,1-4.148.89l-0.34.03a0.654,0.654,0,0,1-.425-0.1,0.469,0.469,0,0,1-.119-0.37,2.075,2.075,0,0,1,.034-0.41c0.022-.16.085-0.47,0.187-0.92a3.748,3.748,0,0,0,.085-1.26c0-.11-0.006-0.3-0.017-0.58a8.147,8.147,0,0,0-.085-0.85,3.007,3.007,0,0,0-.272-0.85,1.685,1.685,0,0,0-2.856-.64,5.109,5.109,0,0,0-1.87,3.94,6.25,6.25,0,0,0,.1,1.09,3.241,3.241,0,0,1,.068.75,3.34,3.34,0,0,1-.408,1.56,9.449,9.449,0,0,0-1.224,4.56,7.222,7.222,0,0,0,.034.81,3.771,3.771,0,0,0,.255,1.14,1.118,1.118,0,0,0,.765.6h0Zm2.856-8.71a1.525,1.525,0,0,1-.816-0.61,1.446,1.446,0,0,1-.272-0.95,4.45,4.45,0,0,1,1.258-2.79,0.66,0.66,0,0,1,.442-0.24,0.635,0.635,0,0,1,.51.51,2.636,2.636,0,0,1,.1.75,5.39,5.39,0,0,1-.068.68c-0.068.75-.17,1.49-0.306,2.21a0.542,0.542,0,0,1-.476.51,1.612,1.612,0,0,1-.374-0.07h0Zm-2.142,7.01a0.861,0.861,0,0,1-.374-0.65v-0.1a21.472,21.472,0,0,1,.918-3.67,1.73,1.73,0,0,1,.816-0.99,0.992,0.992,0,0,1,.272-0.03,1.052,1.052,0,0,1,.544.17,0.413,0.413,0,0,1,.17.34,0.449,0.449,0,0,1-.034.2c-0.068.21-.21,0.6-0.425,1.19s-0.471,1.19-.765,1.8a8.4,8.4,0,0,1-1.122,1.74h0Zm13.516,1.7a2.294,2.294,0,0,0,.408.07,1.97,1.97,0,0,0,1.53-.85,6.472,6.472,0,0,0,.374-0.62,12.648,12.648,0,0,0,1.87-4.08,2.125,2.125,0,0,1,.612-1.12,2.2,2.2,0,0,1,1.19-.41,24.791,24.791,0,0,0,2.516-.47l1.19-.24a3.8,3.8,0,0,0,1.5-.58,0.807,0.807,0,0,0,.51-0.71l-0.068-.27a0.572,0.572,0,0,0-.544-0.38,1.547,1.547,0,0,0-.442.1l-0.2.09a1.721,1.721,0,0,1-.2.08,22.063,22.063,0,0,1-4.148.89l-0.34.03a0.654,0.654,0,0,1-.425-0.1,0.469,0.469,0,0,1-.119-0.37,2.075,2.075,0,0,1,.034-0.41c0.022-.16.085-0.47,0.187-0.92a3.748,3.748,0,0,0,.085-1.26c0-.11-0.006-0.3-0.017-0.58a8.147,8.147,0,0,0-.085-0.85,3.007,3.007,0,0,0-.272-0.85,1.685,1.685,0,0,0-2.856-.64,5.109,5.109,0,0,0-1.87,3.94,6.25,6.25,0,0,0,.1,1.09,3.241,3.241,0,0,1,.068.75,3.34,3.34,0,0,1-.408,1.56,9.449,9.449,0,0,0-1.224,4.56,7.222,7.222,0,0,0,.034.81,3.771,3.771,0,0,0,.255,1.14,1.118,1.118,0,0,0,.765.6h0Zm2.856-8.71a1.525,1.525,0,0,1-.816-0.61,1.446,1.446,0,0,1-.272-0.95,4.45,4.45,0,0,1,1.258-2.79,0.66,0.66,0,0,1,.442-0.24,0.635,0.635,0,0,1,.51.51,2.636,2.636,0,0,1,.1.75,5.39,5.39,0,0,1-.068.68c-0.068.75-.17,1.49-0.306,2.21a0.542,0.542,0,0,1-.476.51,1.612,1.612,0,0,1-.374-0.07h0Zm-2.142,7.01a0.861,0.861,0,0,1-.374-0.65v-0.1a21.472,21.472,0,0,1,.918-3.67,1.73,1.73,0,0,1,.816-0.99,0.992,0.992,0,0,1,.272-0.03,1.052,1.052,0,0,1,.544.17,0.413,0.413,0,0,1,.17.34,0.449,0.449,0,0,1-.034.2c-0.068.21-.21,0.6-0.425,1.19s-0.471,1.19-.765,1.8a8.4,8.4,0,0,1-1.122,1.74h0Zm16.134,18.05a0.542,0.542,0,0,0,.493-0.24,2.592,2.592,0,0,0,.289-0.71,6.226,6.226,0,0,1,.187-0.61q0.119-.345.221-0.78,1.122-5.28,3.434-15.75,0.577-2.58,1.87-6.93c0.113-.48.272-1.04,0.476-1.7q2.924-10.14,4.454-15.17c0.34-1.13.759-2.44,1.258-3.94s0.861-2.61,1.088-3.33c0.181-.5.34-0.96,0.476-1.4s0.272-.83.408-1.22c0.045-.16.113-0.37,0.2-0.65a2.156,2.156,0,0,0,.136-0.64,0.851,0.851,0,0,0-.442-0.68,0.59,0.59,0,0,0-.306-0.1,0.676,0.676,0,0,0-.578.37q-0.137.165-.442,0.6a3.5,3.5,0,0,0-.442.76l-2.142,4.96q-0.749,1.635-2.176,4.97-2.619,6.015-5,10.61a4.072,4.072,0,0,1-.391.73,1.2,1.2,0,0,1-.493.39,6.393,6.393,0,0,0-2.516,1.63,17.227,17.227,0,0,0-2.04,2.75,21.254,21.254,0,0,0-1.411,2.66,6.126,6.126,0,0,0-.459,2.41,1.189,1.189,0,0,0,.714,1.26,1.267,1.267,0,0,0,.442.1,0.745,0.745,0,0,0,.425-0.14,2.091,2.091,0,0,0,.442-0.37c0.147-.16.243-0.26,0.289-0.31l0.17-.23a18.849,18.849,0,0,0,1.615-2.16c0.487-.76,1.048-1.7,1.683-2.81l0.884-1.56a4.726,4.726,0,0,0,.272-0.58,3.584,3.584,0,0,1,.272-0.56,0.638,0.638,0,0,1,.374-0.29,0.888,0.888,0,0,1,.68.31,3.344,3.344,0,0,1,.748.91,1.2,1.2,0,0,1,.17.96c-0.295.93-.692,2.34-1.19,4.25q-2.279,8.73-3.536,14.96l-1.258,6.01a1.974,1.974,0,0,0-.1.62,0.616,0.616,0,0,0,.748.64h0Zm6.086-29.07a0.407,0.407,0,0,1-.476-0.1,7.766,7.766,0,0,1-.731-0.8,0.868,0.868,0,0,1-.187-0.53,1.44,1.44,0,0,1,.153-0.57c0.1-.23.232-0.49,0.391-0.79,0.612-1.15,1.224-2.4,1.836-3.74,0.884-1.9,1.632-3.4,2.244-4.48l-1.462,4.96q-1.02,3.6-1.768,6.05h0Zm-7.99,6.43a11.314,11.314,0,0,1,3.2-5.17c-0.091.18-.295,0.59-0.612,1.22s-0.686,1.3-1.105,1.99a12.23,12.23,0,0,1-1.479,1.96h0Z"
								transform="translate(-612.344 -4598.16)"></path>
                        </svg>
					</h2>
					<div class="sectionTitle__frame__inner__txtArea">
						<p class="sectionTitle__frame__inner__txtArea__title">
							<span>T</span> <span>I</span> <span>T</span> <span>L</span> <span>E</span>
						</p>
						<div class="sectionTitle__frame__inner__txtArea__line"></div>
						<h1 class="sectionTitle__frame__inner__txtArea__title2">
							Imovie</h1>
					</div>
				</div>
			</div>
		</h2>
		<div class="p-top-issue__marginBox"></div>
		<div class="p-top-issue__moduleArea"
			style="touch-action: pan-y; user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">

			<div class="p-top-issue__moduleArea__slider"
				style="transform: matrix(1, 0, 0, 1, 0, 0);">
				<article class="issueCard js-enter sliderTop is-active">
					<a href="">
						<div class="issueCard__topLine"></div>
						<div class="issueCard__leftLine"></div>
						<div class="issueCard__rightLine"></div>
						<div class="issueCard__img">
							<video id="js-top-mv-video" loop="true" autoplay="autoplay"
								preload="auto" muted="true" src="img/女鬼橋.mp4" style="width: 600px; height: 400px"></video>
						</div>
						<div class="issueCard__imgFrame" style="height: 300px;"></div>
						<h1 class="issueCard__txtarea">女鬼橋</h1>
						<div class="issueCard__bottoms">
							<div class="issueCard__bottoms__linkArrowCover">
								<div class="linkArrow-blk__line1"></div>
								<div class="linkArrow-blk__line2"></div>
								<div class="linkArrow-blk__line2Cover">
									<div class="linkArrow-blk__line2Cover__line2"></div>
								</div>
								<div class="linkArrow-blk__arrow">
									<svg viewBox="0 0 4.38 6.76">
                                        <path id="arrowRight.svg"
											class="arrow-right-1"
											d="M1182.5,4279.86l4.36-3.36-4.36-3.36v6.72Z"
											transform="translate(-1182.5 -4273.12)"></path>
                                    </svg>
								</div>
							</div>
							<div class="issueCard__bottoms__icon">
								<svg viewBox="0 0 17 20">
                                    <circle id="icon"
										class="issue-bottom-icon-1" cx="8" cy="10" r="2"></circle>
                                    <path id="icon-2" data-name="icon"
										class="issue-bottom-icon-2" d="M1113,5902l-10-9,10-10h6"
										transform="translate(-1102.5 -5882.5)"></path>
                                </svg>
							</div>
							<div class="issueCard__bottoms__category">EVENT</div>
							<div class="issueCard__bottoms__line"></div>
							<div class="issueCard__bottoms__date">2020.06.24</div>

						</div>
					</a>
				</article>
				<article class="issueCard js-enter is-active">
					<a href="">
						<div class="issueCard__topLine"></div>
						<div class="issueCard__leftLine"></div>
						<div class="issueCard__rightLine"></div>
						<div class="issueCard__img">
							<video id="js-top-mv-video" loop="true" autoplay="autoplay"
								preload="auto" muted="true" src="img/軍艦島.mp4" style="width: 600px; height: 400px"></video>
						</div>
						<div class="issueCard__imgFrame" style="height: 300px;"></div>
						<h1 class="issueCard__txtarea">軍艦島</h1>
						<div class="issueCard__bottoms">
							<div class="issueCard__bottoms__linkArrowCover">
								<div class="linkArrow-blk__line1"></div>
								<div class="linkArrow-blk__line2"></div>
								<div class="linkArrow-blk__line2Cover">
									<div class="linkArrow-blk__line2Cover__line2"></div>
								</div>
								<div class="linkArrow-blk__arrow">
									<svg viewBox="0 0 4.38 6.76">
                                        <path id="arrowRight.svg"
											class="arrow-right-1"
											d="M1182.5,4279.86l4.36-3.36-4.36-3.36v6.72Z"
											transform="translate(-1182.5 -4273.12)"></path>
                                    </svg>
								</div>
							</div>
							<div class="issueCard__bottoms__icon">
								<svg viewBox="0 0 17 20">
                                    <circle id="icon"
										class="issue-bottom-icon-1" cx="8" cy="10" r="2"></circle>
                                    <path id="icon-2" data-name="icon"
										class="issue-bottom-icon-2" d="M1113,5902l-10-9,10-10h6"
										transform="translate(-1102.5 -5882.5)"></path>
                                </svg>
							</div>
							<div class="issueCard__bottoms__category">EVENT</div>
							<div class="issueCard__bottoms__line"></div>
							<div class="issueCard__bottoms__date">2020.06.24</div>

						</div>
					</a>
				</article>
				<article class="issueCard js-enter is-active">
					<a href="">
						<div class="issueCard__topLine"></div>
						<div class="issueCard__leftLine"></div>
						<div class="issueCard__rightLine"></div>
						<div class="issueCard__img">
							<video id="js-top-mv-video" loop="true" autoplay="autoplay"
								preload="auto" muted="true" src="img/捍衛任務3.mp4" style="width: 600px; height: 400px"></video>
						</div>
						<div class="issueCard__imgFrame" style="height: 300px;"></div>
						<h1 class="issueCard__txtarea">捍衛任務3
						</h1>
						<div class="issueCard__bottoms">
							<div class="issueCard__bottoms__linkArrowCover">
								<div class="linkArrow-blk__line1"></div>
								<div class="linkArrow-blk__line2"></div>
								<div class="linkArrow-blk__line2Cover">
									<div class="linkArrow-blk__line2Cover__line2"></div>
								</div>
								<div class="linkArrow-blk__arrow">
									<svg viewBox="0 0 4.38 6.76">
                                        <path id="arrowRight.svg"
											class="arrow-right-1"
											d="M1182.5,4279.86l4.36-3.36-4.36-3.36v6.72Z"
											transform="translate(-1182.5 -4273.12)"></path>
                                    </svg>
								</div>
							</div>
							<div class="issueCard__bottoms__icon">
								<svg viewBox="0 0 17 20">
                                    <circle id="icon"
										class="issue-bottom-icon-1" cx="8" cy="10" r="2"></circle>
                                    <path id="icon-2" data-name="icon"
										class="issue-bottom-icon-2" d="M1113,5902l-10-9,10-10h6"
										transform="translate(-1102.5 -5882.5)"></path>
                                </svg>
							</div>
							<div class="issueCard__bottoms__category">EVENT</div>
							<div class="issueCard__bottoms__line"></div>
							<div class="issueCard__bottoms__date">2020.06.13</div>

						</div>
					</a>
				</article>
				<article class="issueCard js-enter is-active">
					<a href="">
						<div class="issueCard__topLine"></div>
						<div class="issueCard__leftLine"></div>
						<div class="issueCard__rightLine"></div>
						<div class="issueCard__img">
							<video id="js-top-mv-video" loop="true" autoplay="autoplay"
								preload="auto" muted="true" src="img/惡夜救援.mp4" style="width: 600px; height: 400px"></video>
						</div>
						<div class="issueCard__imgFrame" style="height: 300px;"></div>
						<h1 class="issueCard__txtarea">惡夜救援</h1>
						<div class="issueCard__bottoms">
							<div class="issueCard__bottoms__linkArrowCover">
								<div class="linkArrow-blk__line1"></div>
								<div class="linkArrow-blk__line2"></div>
								<div class="linkArrow-blk__line2Cover">
									<div class="linkArrow-blk__line2Cover__line2"></div>
								</div>
								<div class="linkArrow-blk__arrow">
									<svg viewBox="0 0 4.38 6.76">
                                        <defs>
                                           
                                        </defs>
                                        <path id="arrowRight.svg"
											class="arrow-right-1"
											d="M1182.5,4279.86l4.36-3.36-4.36-3.36v6.72Z"
											transform="translate(-1182.5 -4273.12)"></path>
                                    </svg>
								</div>
							</div>
							<div class="issueCard__bottoms__icon">
								<svg viewBox="0 0 17 20">
                                    <circle id="icon"
										class="issue-bottom-icon-1" cx="8" cy="10" r="2"></circle>
                                    <path id="icon-2" data-name="icon"
										class="issue-bottom-icon-2" d="M1113,5902l-10-9,10-10h6"
										transform="translate(-1102.5 -5882.5)"></path>
                                </svg>
							</div>
							<div class="issueCard__bottoms__category">EVENT</div>
							<div class="issueCard__bottoms__line"></div>
							<div class="issueCard__bottoms__date">2020.07.08</div>

						</div>
					</a>
				</article>
			</div>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')
	      $("#ticket-component").load('./ticket.jsp');	
		console.log('AAAAAAA')
	</script>
</body>

</html>