(function ($) {


    /*  var currTimeCookieName = 'serverTime';
     var expireTimeCookieName = 'sessionExpiry';
     var offset;
     var warningTime = 5 * 60 * 1000;
     var timeoutWarningMessage = 'Your session is going to be end by 5 min, Please click OK to continue';
     
     function getCookie(name)
     {
     var name = name + "=";
     var ca = document.cookie.split(';');
     for (var i = 0; i < ca.length; i++)
     {
     var c = ca[i].trim();
     if (c.indexOf(name) == 0)
     return c.substring(name.length, c.length);
     }
     return "";
     }
     
     var serverTime = getCookie(currTimeCookieName);
     serverTime = serverTime == null ? null : Math.abs(serverTime);
     var offset = (new Date()).getTime() - serverTime;
     
     function getTimeToWarning() {
     var expireTime = getCookie(expireTimeCookieName);
     return expireTime + offset - currTime - warningTime;
     }
     
     function checkForTimeout() {
     var timeUntilWarning = getTimeToWarning();
     
     setTimeout(function () {
     if (getTimeToWarning() > 0) {
     checkForTimeout();
     } else {
     
     if (confirm(timeoutWarningMessage)) {
     //TODO do a backend call or other action to extend the session here
     
     setTimeout(function () {
     checkForTimeout();
     }, 1 * 60 * 1000);
     }
     }
     }, timeUntilWarning);
     }
     
     checkForTimeout();
     */
    var activeTimer = '';
    var idleTime = 60000; //1000*60;
    var idleTime20Min = 1000 * 60 * 20; //1000*60;
    var idleTime30Min = 1000 * 60 * 30; //1000*60;
    var timeOut = 60 * 10;
    var idleTimer = '';
    var idleTimer20Min = '';
    var idleTimer30Min = '';
    var notificationTimer;



    $(document).on('mousedown keyup click touchstart', function () {
        resetIdleState();
        window.clearTimeout(activeTimer);
        activeTimer = window.setTimeout(onActiveFunction, 1000);
    });

    var callflag = false;
    function trackEventFormSubmit() {
        if (callflag == false) {
            callflag = true;
            $('#eventlogId').click();
        }
    }


    function onIdleFunction() {

        $.ajax({type: "GET",
            url: "idleSession",
            async: true,
            success: function (data, textStatus, request) {

                if (data.indexOf('logout') > -1) {
                    trackEventFormSubmit();

                } else if (data.indexOf('popup') > -1) {
                    if ($(".notification-bar.timeout").is(":visible")) {
                        return;
                    }
                    $(".notification-bar.timeout").show();
                    $("body").removeClass("bgposition-normal");
                    $("body").addClass("bgposition-banner");

                    $(".notification-bar").delay(270).slideDown();
                    $("div.barspacer").delay(250).slideDown();
                    PageTitleNotification.On("Inactivity detected!");
                    var sec = $('.notification-bar input#countdownVal').val();
                    notificationTimer = setInterval(function () {
//                        $('.notification-bar span#countdown').text(--sec);
//                        sec = sec-1;
                        $('.notification-bar input#countdownVal').val(--sec);
                        const minutes = Math.floor(sec / 60);
                        const seconds = sec % 60;
                        $('.notification-bar.timeout span#countdown').text(padTo2Digits(minutes) + " mins " + padTo2Digits(seconds) + " seconds");
                        if (sec == 0) {
                            trackEventFormSubmit();
                            $('.notification-bar').slideUp();
                            resetNotificationState();
                        }
                    }, 1000);

                    $("#keepAlive").click(function () {
                        onActiveFunction();
                        if ($(".notification-bar.ec2bar").is(":visible")) {

                        } else {
                            $("body").removeClass("bgposition-banner");
                            $("body").addClass("bgposition-normal");
                            PageTitleNotification.Off();
                        }
                        return false;
                    });

                } else {
                }

            },
            error: function (request, textStatus, errorThrown) {
                trackEventFormSubmit();
            }
        });
        resetIdleState();
    }

    function onActiveFunction() {

        resetNotificationState();

        $.ajax({type: "GET",
            url: "activeSession",
            async: true,
            success: function (data, textStatus, request) {
                resetIdleState();
            },
            error: function (request, textStatus, errorThrown) {
                onIdleFunction();
            }
        });
        if (idleTimer20Min)
            window.clearTimeout(idleTimer20Min);
        if (idleTimer30Min)
            window.clearTimeout(idleTimer30Min);
        idleTimer20Min = window.setTimeout(onIdleFunction, idleTime20Min);
        idleTimer30Min = window.setTimeout(onIdleFunction, idleTime30Min);
    }

    function padTo2Digits(num) {
        return num.toString().padStart(2, '0');
    }

    function resetNotificationState() {
        if (notificationTimer)
            clearInterval(notificationTimer);
        if ($(".notification-bar.ec2bar").is(":visible")) {
        } else {
            $(".notification-bar.timeout,div.barspacer").slideUp();
            $("body").removeClass("bgposition-banner");
            $("body").addClass("bgposition-normal");
            PageTitleNotification.Off();
        }
        $(".notification-bar.timeout").hide();


        const minutes = Math.floor(timeOut / 60);
        const seconds = timeOut % 60;
        $('.notification-bar.timeout span#countdown').text(padTo2Digits(minutes) + " mins " + padTo2Digits(seconds) + " seconds");
        $('.notification-bar input#countdownVal').val(timeOut);
    }
    function resetIdleState() {
        if (idleTimer)
            window.clearTimeout(idleTimer);
        setIdleState();
    }

    function setIdleState() {
        idleTimer = window.setTimeout(onIdleFunction, idleTime);
    }
    setIdleState();

    $(".notification-bar.timeout,div.barspacer").slideUp();
    if ($(".notification-bar.ec2bar").is(":visible")) {
        $(".notification-bar.timeout,div.barspacer").show();
    }
    $(".notification-bar.timeout").hide();

    var PageTitleNotification = {
        Vars: {
            OriginalTitle: document.title,
            Interval: null
        },
        On: function (notification, intervalSpeed) {
            var _this = this;
            _this.Vars.Interval = setInterval(function () {
                document.title = (_this.Vars.OriginalTitle == document.title)
                        ? notification
                        : _this.Vars.OriginalTitle;
            }, (intervalSpeed) ? intervalSpeed : 1000);
        },
        Off: function () {
            clearInterval(this.Vars.Interval);
            document.title = this.Vars.OriginalTitle == "" ? document.title : this.Vars.OriginalTitle;
        }
    }

}
)(jQuery);