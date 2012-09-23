@echo off
CLS
color 17
@title Hosts自动更新程序  By  FGQI  2012-05-07

:MENU
echo.          =-=-=-=-=Hosts自动更新程序菜单=-=-=-=-= 
echo.
echo. 本程序只会更新相应的hosts地址，不会影响你hosts里面原有的其它地址
echo.
echo. 2011-05-07 换IP段
echo.
echo. 1 运行Google脚本，使用北京服务器地址更新Google服务地址（推荐使用这个）
echo.
echo. 2 运行Google脚本，使用www.g.cn的地址更新Google服务地址
echo.
echo. 3 恢复Google顶部的黑色导航栏
echo.
echo. 4 运行Youtube脚本（现在只能进Youtube的网页，但不能播放视频）
echo.
echo. 5 运行Facebook、Twitter脚本（注意要把http改成https才可以访问）
echo.
echo. 6 退出
echo.
echo. 7 还原前一个hosts
echo.
echo. 8 Android手机专用的Google服务hosts(Google hosts for Android）
echo.
echo. 9 访问发布页，提出意见并查看hosts的最新更新情况
echo.

echo. 请输入选择项目的序号并按回车键运行：
set /p XUANXIANG= 
if "%XUANXIANG%"=="1" goto 1
if "%XUANXIANG%"=="2" goto 2
if "%XUANXIANG%"=="3" goto 3
if "%XUANXIANG%"=="4" goto 4
if "%XUANXIANG%"=="5" goto 5
if "%XUANXIANG%"=="6" goto 6
if "%XUANXIANG%"=="7" goto 7
if "%XUANXIANG%"=="8" goto 8
if "%XUANXIANG%"=="9" goto 9

:1
echo.
echo 正在使用Google北京服务器地址更新hosts，请稍等
setlocal enabledelayedexpansion
set min=20
set max=30
set /a mod=!max!-!min!+1
set /a r=!random!%%!mod!+!min!
set GOOGLE=203.208.47.%r%
type %windir%\System32\drivers\etc\hosts|find "FGQI" /i /v|find "Google" /i /v|find "ggpht" /i /v|find "gmail" /i /v|find "gstatic" /i /v|find "appspot" /i /v|findstr "." >>%windir%\System32\drivers\etc\hostsfgqi
if exist %windir%\System32\drivers\etc\hosts.backup1 del %windir%\System32\drivers\etc\hosts.backup1 /q
if exist %windir%\System32\drivers\etc\hosts.backup ren %windir%\System32\drivers\etc\hosts.backup hosts.backup1
if exist %windir%\System32\drivers\etc\hosts ren %windir%\System32\drivers\etc\hosts hosts.backup
ren %windir%\System32\drivers\etc\hostsfgqi hosts
echo	#Google By FGQI	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.239	github.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	drive.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	doc-10-3o-docs.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	play.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	3hdrrlnlknhi77nrmsjnjr152ueo3soc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	accounts.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.71.139	www.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ajax.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	android.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	apis.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	appengine.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks0.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks1.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks2.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks3.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks4.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks5.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks6.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks7.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks8.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks9.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	blogsearch.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	blogsearch.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	browserchannel-docs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	browserchannel-spreadsheets.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	browsersync.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	cache.pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	calendar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	checkout.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	chrome.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients7.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	code.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	csi.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	desktop.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	desktop2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ditu.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ditu.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	dl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	earth.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	feedback.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	finance.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	fonts.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	g0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	gg.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ghs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ghs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	74.125.71.82	www.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	googlecl.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	googlehosted.l.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	groups.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	id.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	id.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	id.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images1-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images2-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images3-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images4-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images5-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images6-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images-lso-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images-pos-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	investor.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	khms0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	khms1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	labs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	large-uploads.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh4.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh5.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh6.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	m.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mail-attachment.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.gstatic.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps-api-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt0.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt1.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt2.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt3.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mts0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mts1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	music.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	music.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	music-streaming.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mw2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	news.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	news.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	news.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	newsfeed-dot-latest-dot-rovio-ad-engine.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt0.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	oauth.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ode25pfjgmvpquh3b1oqo31ti5ibg5fr-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	pack.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	picasa.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	picasaweb.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	picasaweb.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	places.google.com	>>%windir%\System32\drivers\etc\hosts
echo	46.103.111.111	plus.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	plusone.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	pop.gmail.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	profiles.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	safebrowsing.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	safebrowsing-cache.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	sandbox.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	services.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	sites.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	sketchup.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	spreadsheets.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ssl.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ssl.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	suggestqueries.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t.doc-0-0-sj.sj.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t1.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t2.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t3.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	talkgadget.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	talkx.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	themes.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbarqueries.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbarqueries.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	tools.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	uploadsj.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	v8mq9slfbk1dglresapkg0i5f8pm64lc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	video.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	video.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	video.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	voice.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	wave.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	webcache.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	wenda.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.gmail.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.googleadservices.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	r3270-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bt26mravu2qpe56n8gnmjnpv2inl84bf-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	rbjhe237k979f79d87gmenp3gejfonu9-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	k6v18tjr24doa89b55o3na41kn4v73eb-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	8kubpeu8314p2efdd7jlv09an9i2ljdo-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	adstvca8k2ooaknjjmv89j22n9t676ve-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ob7f2qc0i50kbjnc81vkhgmb5hsv7a8l-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	53rd6p0catml6vat6qra84rs0del836d-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	u807isd5egseeabjccgcns005p2miucq-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	r70rmsn4s0rhk6cehcbbcbfbs31pu0va-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	59cbv4l9s05pbaks9v77vc3mengeqors-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	i8brh95qor6r54nkl52hidj2ggcs4jgm-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	upt14k1i2veesusrda9nfotcrbp9d7p5-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	debh8vg7vd93bco3prdajidmm7dhql3f-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	4fjvqid3r3oq66t548clrdj52df15coc-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	hsco54a20sh11q9jkmb51ad2n3hmkmrg-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	qhie5b8u979rnch1q0hqbrmbkn9estf7-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	e6ha3snmi09c57cs4h4dnoa006cgfjfu-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	66fl6oqbdsqf5fjl032t5iulimtqjhpa-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	vvpk2b7flnbhcm2p10u4hcnatnp40i3i-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	0rgn8o7pqk7dq7rm8q0639erjd8gnf7g-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	cfmmurgvo3fqrmfu0tjfcpgdt7mh6ccv-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts

echo.
echo 成功运行完Google脚本
echo.
echo Google Reader、Groups、Map（加星功能）服务请使用Https链接
echo.
echo 按任意键返回菜单，之前的hosts备份为hosts.backup
pause
CLS
goto MENU

:2
echo.
echo 请稍等,正在获取Google服务器的IP
for /f "tokens=2 delims=[]" %%i in ('ping www.g.cn') do set GOOGLE=%%i
for /f "delims=." %%i in ("%GOOGLE%") do if %%i==203 (echo 你获取的是北京服务器的地址，正在更新hosts，请稍等) else echo 你获取的是%GOOGLE%，不是Google北京服务器地址，正在更新hosts，请稍等
for /f "delims=." %%i in ("%GOOGLE%") do if not %%i==203 echo 因为地址不是北京服务器，可能导致服务不能用，推荐使用选项 1 更新hosts
type %windir%\System32\drivers\etc\hosts|find "FGQI" /i /v|find "Google" /i /v|find "ggpht" /i /v|find "gmail" /i /v|find "gstatic" /i /v|find "appspot" /i /v|find "g.cn" /i /v|findstr "." >>%windir%\System32\drivers\etc\hostsfgqi
if exist %windir%\System32\drivers\etc\hosts.backup1 del %windir%\System32\drivers\etc\hosts.backup1 /q
if exist %windir%\System32\drivers\etc\hosts.backup ren %windir%\System32\drivers\etc\hosts.backup hosts.backup1
if exist %windir%\System32\drivers\etc\hosts ren %windir%\System32\drivers\etc\hosts hosts.backup
ren %windir%\System32\drivers\etc\hostsfgqi hosts
echo	#Google By FGQI	>>%windir%\System32\drivers\etc\hosts
echo	207.97.227.239	github.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	3hdrrlnlknhi77nrmsjnjr152ueo3soc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	accounts.google.com	>>%windir%\System32\drivers\etc\hosts
echo	74.125.71.139	www.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ajax.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	android.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	apis.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	appengine.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks0.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks1.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks2.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks3.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks4.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks5.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks6.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks7.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks8.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bks9.books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	blogsearch.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	blogsearch.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	books.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	browserchannel-docs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	browserchannel-spreadsheets.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	browsersync.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	cache.pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	calendar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	chatenabled.mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	checkout.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	chrome.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients4.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients5.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients6.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients7.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	clients7.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	code.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	csi.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	desktop.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	desktop2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ditu.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ditu.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	dl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	docs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	earth.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	encrypted-tbn3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	feedback.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	finance.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	fonts.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	g0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	gg.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ghs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ghs.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	googlecl.googlecode.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	googlehosted.l.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	groups.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	id.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	id.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	id.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images0-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images1-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images2-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images3-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images4-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images5-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images6-focus-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images-lso-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	images-pos-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	investor.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	khms0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	khms1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	labs.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	large-uploads.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh4.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh5.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh6.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	lh6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	m.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mail.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mail-attachment.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.gstatic.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	maps-api-ssl.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt0.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt1.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt2.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt3.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mt3.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mts0.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mts1.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	music.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	music.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	music-streaming.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	mw2.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	news.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	news.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	news.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	newsfeed-dot-latest-dot-rovio-ad-engine.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt0.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt1.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt2.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	nt3.ggpht.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	oauth.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ode25pfjgmvpquh3b1oqo31ti5ibg5fr-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	pack.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	pack.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	picasa.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	picasaweb.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	picasaweb.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	places.google.com	>>%windir%\System32\drivers\etc\hosts
echo	46.103.111.111	plus.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	plusone.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	pop.gmail.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	profiles.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s1.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s2.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s3.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s4.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s5.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	s6.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	safebrowsing.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	safebrowsing-cache.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	sandbox.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	scholar.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	services.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	sites.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	sketchup.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	spreadsheets.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ssl.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ssl.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	suggestqueries.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t.doc-0-0-sj.sj.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t0.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t1.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t2.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	t3.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	talkgadget.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	talkx.l.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	themes.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbar.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbar.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbarqueries.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	toolbarqueries.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	tools.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	translate.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	uploadsj.clients.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	v8mq9slfbk1dglresapkg0i5f8pm64lc-a-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	video.google.cn	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	video.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	video.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	voice.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	wave.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	webcache.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	wenda.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.gmail.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.google.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.google.com.hk	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.googleadservices.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.google-analytics.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.googleapis.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.googlelabs.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www.gstatic.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www-calendar-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	www-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	r3270-dot-latest-dot-project-slingshot-gp.appspot.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	bt26mravu2qpe56n8gnmjnpv2inl84bf-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	rbjhe237k979f79d87gmenp3gejfonu9-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	k6v18tjr24doa89b55o3na41kn4v73eb-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	8kubpeu8314p2efdd7jlv09an9i2ljdo-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	adstvca8k2ooaknjjmv89j22n9t676ve-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	ob7f2qc0i50kbjnc81vkhgmb5hsv7a8l-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	53rd6p0catml6vat6qra84rs0del836d-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	u807isd5egseeabjccgcns005p2miucq-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	r70rmsn4s0rhk6cehcbbcbfbs31pu0va-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	59cbv4l9s05pbaks9v77vc3mengeqors-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	i8brh95qor6r54nkl52hidj2ggcs4jgm-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	upt14k1i2veesusrda9nfotcrbp9d7p5-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	debh8vg7vd93bco3prdajidmm7dhql3f-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	4fjvqid3r3oq66t548clrdj52df15coc-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	hsco54a20sh11q9jkmb51ad2n3hmkmrg-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	qhie5b8u979rnch1q0hqbrmbkn9estf7-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	e6ha3snmi09c57cs4h4dnoa006cgfjfu-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	66fl6oqbdsqf5fjl032t5iulimtqjhpa-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	vvpk2b7flnbhcm2p10u4hcnatnp40i3i-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	0rgn8o7pqk7dq7rm8q0639erjd8gnf7g-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts
echo	%GOOGLE%	cfmmurgvo3fqrmfu0tjfcpgdt7mh6ccv-a-oz-opensocial.googleusercontent.com	>>%windir%\System32\drivers\etc\hosts


echo.
echo 成功运行完Google脚本
echo.
echo Google Reader、Groups、Map（加星功能）服务请使用Https链接
echo.
echo 按任意键返回菜单，之前的hosts备份为hosts.backup
pause
CLS
goto MENU

:3
echo.
start http://www.google.com/ncr
CLS
goto MENU


:4
echo.
echo 正在运行Youtube脚本（现在只能进Youtube的网页，但不能播放视频）
echo 请稍等,正在获取Youtube服务器的IP

for /f "tokens=2 delims=[]" %%i in ('ping www.g.cn') do set YOUTUBE=%%i
for /f "delims=." %%i in ("%YOUTUBE%") do if not %%i==203 set YOUTUBE=203.208.46.181
if %YOUTUBE%==203.208.46.181 (echo 你获取的不是北京服务器的地址，已手动帮你设置为203.208.46.181北京服务器地址) else echo 你获取的是Youtube北京服务器地址，正在更新hosts，请稍等
type %windir%\System32\drivers\etc\hosts|find "Youtube" /i /v|find "ytimg" /i /v|find "gvt0" /i /v|findstr "." >>%windir%\System32\drivers\etc\hostsfgqi
if exist %windir%\System32\drivers\etc\hosts.backup1 del %windir%\System32\drivers\etc\hosts.backup1 /q
if exist %windir%\System32\drivers\etc\hosts.backup ren %windir%\System32\drivers\etc\hosts.backup hosts.backup1
if exist %windir%\System32\drivers\etc\hosts ren %windir%\System32\drivers\etc\hosts hosts.backup
ren %windir%\System32\drivers\etc\hostsfgqi hosts

echo	#Youtube By FGQI	>>%windir%\System32\drivers\etc\hosts

echo	%YOUTUBE%	youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	www.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	gdata.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	m.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	help.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	upload.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	accounts.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	insight.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	apiblog.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	clients1.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	s.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	s2.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	i.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	s.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	i1.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	i2.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	i3.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	i4.ytimg.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	0.gvt0.cn	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	1.gvt0.cn	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	2.gvt0.cn	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	3.gvt0.cn	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	4.gvt0.cn	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v1.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v2.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v3.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v4.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v5.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v6.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v7.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v8.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v9.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v10.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v11.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v12.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v13.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v14.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v15.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v16.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v17.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v18.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v19.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v20.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v21.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v22.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v23.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s11.v24.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v1.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v2.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v3.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v4.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v5.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v6.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v7.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v8.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v9.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v10.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v11.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v12.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v13.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v14.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v15.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v16.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v17.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v18.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v19.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v20.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v21.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v22.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v23.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	o-o.preferred.sjc07s15.v24.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r1.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r2.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r3.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r4.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r5.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r6.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r7.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r8.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r9.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r10.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r11.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r12.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r13.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r14.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r15.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r16.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r17.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r18.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r19.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r20.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r21.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r22.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r23.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r24.pek01s01.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r1.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r2.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r3.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r4.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r5.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r6.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r7.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r8.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r9.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r10.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r11.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r12.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r13.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r14.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r15.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r16.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r17.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r18.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r19.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r20.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r21.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r22.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r23.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r24.pek01s02.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r1.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r2.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r3.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r4.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r5.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r6.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r7.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r8.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r9.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r10.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r11.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r12.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r13.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r14.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r15.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r16.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r17.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r18.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r19.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r20.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r21.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r22.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r23.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r24.pek01s03.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r1.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r2.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r3.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r4.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r5.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r6.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r7.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r8.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r9.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r10.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r11.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r12.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r13.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r14.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r15.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r16.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r17.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r18.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r19.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r20.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r21.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r22.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r23.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r24.pek01s04.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r1.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r2.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r3.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r4.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r5.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r6.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r7.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r8.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r9.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r10.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r11.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r12.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r13.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r14.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r15.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r16.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r17.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r18.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r19.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r20.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r21.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r22.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r23.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	r24.pek01s05.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v1.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v2.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v3.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v4.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v5.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v6.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v7.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v8.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v9.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v10.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v11.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v12.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v13.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v14.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v15.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v16.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v17.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v18.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v19.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v20.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v21.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v22.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v23.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	tc.v24.cache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache1.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache2.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache3.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache4.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache5.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache6.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache7.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v1.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v2.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v3.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v4.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v5.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v6.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v7.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v8.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v9.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v10.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v11.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v12.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v13.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v14.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v15.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v16.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v17.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v18.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v19.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v20.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v21.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v22.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v23.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts
echo	%YOUTUBE%	v24.lscache8.c.youtube.com	>>%windir%\System32\drivers\etc\hosts

echo.
echo 成功运行完Youtube脚本，暂时只能进入网站，但不能播放视频
echo.
echo 按任意键返回菜单，之前的hosts备份为hosts.backup
pause
CLS
goto MENU

:5
echo.
echo 正在运行Facebook、Twitter脚本
type %windir%\System32\drivers\etc\hosts|find "facebook" /i /v|find "fbcdn" /i /v|find "twitter" /i /v|find "twimg" /i /v|findstr "." >>%windir%\System32\drivers\etc\hostsfgqi
if exist %windir%\System32\drivers\etc\hosts.backup1 del %windir%\System32\drivers\etc\hosts.backup1 /q
if exist %windir%\System32\drivers\etc\hosts.backup ren %windir%\System32\drivers\etc\hosts.backup hosts.backup1
if exist %windir%\System32\drivers\etc\hosts ren %windir%\System32\drivers\etc\hosts hosts.backup
ren %windir%\System32\drivers\etc\hostsfgqi hosts

echo	#Facebook By FGQI	>>%windir%\System32\drivers\etc\hosts

echo	118.214.114.110	s-static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	118.214.190.105	profile.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	202.157.186.28	static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	202.157.186.34	b.static.ak.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.146.18	apps.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.146.50	graph.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.147.62	ssl.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	66.220.149.36	api.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.178.57	secure-media-sf2p.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.178.57	secure-profile.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.179.70	secure.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.16	zh-CN.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.20	login.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.31	m.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.181.31	touch.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.189.16	facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.171.228.14	www.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	69.63.190.18	apps.facebook.com	>>%windir%\System32\drivers\etc\hosts
echo	118.214.190.128	profile.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	124.155.222.50	vthumb.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-a.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-b.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-c.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-d.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-e.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-f.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	125.56.199.9	photos-g.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	202.157.186.34	creative.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	69.63.176.21	s-hprofile-sf2p.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	69.63.187.17	fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	97.65.135.139	external.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	97.65.135.163	b.static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	97.65.135.163	static.ak.fbcdn.net	>>%windir%\System32\drivers\etc\hosts
echo	69.63.180.51	upload.facebook.com	>>%windir%\System32\drivers\etc\hosts

echo	#Twitter By FGQI	>>%windir%\System32\drivers\etc\hosts

echo	199.59.149.243	oauth.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	www.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	mobile.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	api.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.201	search.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.139	userstream.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	ssl.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	status.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets0.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets1.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets2.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	assets3.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	static.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	184.29.36.124	platform.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	219.76.10.138	platform0.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.206	help.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.148.206	support.twitter.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si0.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si1.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si2.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si3.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si4.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	209.84.4.102	si5.twimg.com	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.243	upload.twitter.com	#twitter	>>%windir%\System32\drivers\etc\hosts
echo	199.59.149.210	t.co	#twitter	>>%windir%\System32\drivers\etc\hosts

echo.
echo 成功运行完Facebook、Twitter脚本
echo.
echo 访问Facebook、Twitter请使用https链接，并在设置里面启用默认使用https链接的功能
echo.
echo 按任意键返回菜单，之前的hosts备份为hosts.backup
pause
CLS
goto MENU

:7
echo.
if exist %windir%\System32\drivers\etc\hosts ren %windir%\System32\drivers\etc\hosts hosts.backup2
if exist %windir%\System32\drivers\etc\hosts.backup ren %windir%\System32\drivers\etc\hosts.backup hosts
if exist %windir%\System32\drivers\etc\hosts.backup2 ren %windir%\System32\drivers\etc\hosts.backup2 hosts.backup
echo 已经还原完hosts，之前的hosts备份为hosts.backup
pause
CLS
goto MENU

:8
start https://plus.google.com/109906764666611489817/posts/Z854TLWuTPV
CLS
goto MENU

:9
start https://plus.google.com/109906764666611489817/posts/iRs7zi4hHqB
CLS
goto MENU


:6

