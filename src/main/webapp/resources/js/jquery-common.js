/**
 * serializeObject
 */
$.fn.serializeObject = function() {

    var data = {};
    var array = this.serializeArray();
    //$.LOGGER.debug('array', array);
    $.each(array, function() {
        if (data[this.name]) {
            if (!data[this.name].push) {
                data[this.name] = [data[this.name]];
            }
            data[this.name].push(this.value || '');
        } else {
            data[this.name] = this.value || '';
        }
    });
    return (data);
};

/**
 * serializeData
 * HTML data tag to JSON Array
 */
$.fn.serializeData = function() {

    var array = [];
    $(this).each(function (index, attr) {
        var data = {};
        for (var n in $(attr).data()){
            data[n] = $(attr).data(n);
        }
        array.push(data);
    });
    return (array);
};

/**
 * 문자열이 빈 문자열인지 체크하여 결과값을 리턴한다.
 * @param str       : 체크할 문자열
 */
function isEmpty(str) {
     
    return ('undefined' == typeof str || null == str || '' == str)
}
 
/**
 * 문자열이 빈 문자열인지 체크하여 기본 문자열로 리턴한다.
 * @param str           : 체크할 문자열
 * @param defaultStr    : 문자열이 비어있을경우 리턴할 기본 문자열
 */
function nvl(str, defaultStr) {

    return (isEmpty(str) ? defaultStr : str);
}

/**
 * 숫자에 콤마를 추가
 * @param n
 * @returns
 */
function currencyString(n) {
    //Seperates the components of the number
    var components = n.toString().split(".");
    //Comma-fies the first part
    components [0] = components [0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    //Combines the two sections
    return components.join(".");
}

function getCurrencyString(num) {

    var min = -9223372036854775808;
    var max = 9223372036854775807;
    var value = '0';
    if (num) {
        num += '';
        num = num.replace(/^\s+|\s+$/g, '');
        var value = parseFloat(num.replace(/,/g, ''));
        if (value < min) {
            value = min;
        } else if(value > max) {
            value = max;
        }
        value = value.toLocaleString(undefined, {minimumFractionDigits:0, maximumFractionDigits:0});
    }
    return (value);
}

/**
 * HTML file 객체 리셋 (<input type="file" />)
 * @param file
 * @returns
 */
function htmlFileReset(file) {

    if (file) {
        var agent = navigator.userAgent.toLowerCase();
        if ((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf('msie') != -1)) {
            // ie 일때 input[type=file] init.
            $(file).replaceWith($(file).clone(true));
        } else {
            // other browser 일때 input[type=file] init.
            $(file).val('');
        }
    }
}

/**
 * getFileSizeString
 * @param v
 * @returns
 */
function getFileSizeString(v) {

    v = Number(v || '0');
    return v < 1024
        ? (String.comma(v) + 'Bytes') // 1KB 미만
        : (v < 1024 * 1024
            ? ((v / 1024).toFixed(0) + 'KB') // 1MB 미만
            : ((v / 1024 / 1024).toFixed(1) + 'MB'));
}

function resetFileObject(file) {

    if (file) {
        var agent = navigator.userAgent.toLowerCase();
        if ((navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf('msie') != -1) ){
            // ie 일때 input[type=file] init.
            $(file).replaceWith($(file).clone(true));
        } else {
            //other browser 일때 input[type=file] init.
            $(file).val('');
        }
    }
}

function max(a, b) { return (a > b ? a : b); }
function min(a, b) { return (a < b ? a : b); }

function hexToRgb(hexCode) {
    
    var patt = /^#([\da-fA-F]{2})([\da-fA-F]{2})([\da-fA-F]{2})$/;
    var matches = patt.exec(hexCode);
    var rgb = "rgb(" + parseInt(matches[1], 16) + "," + parseInt(matches[2], 16) + "," + parseInt(matches[3], 16) + ")";
    return rgb;
}

function hexToRgba(hexCode, opacity) {
    
    var patt = /^#([\da-fA-F]{2})([\da-fA-F]{2})([\da-fA-F]{2})$/;
    var matches = patt.exec(hexCode);
    var rgb = "rgba(" + parseInt(matches[1], 16) + "," + parseInt(matches[2], 16) + "," + parseInt(matches[3], 16) + "," + opacity + ")";
    return rgb;
}

function parseDate(sDate) {

    if (sDate) {
        var date = sDate.split('-');
        if (date && 3 == date.length) {
            return (new Date(date[0], date[1] - 1, date[2]));
        }
    }
    return (null);
}

//Numeric only control handler
jQuery.fn.numericOnly =
function() {
    return this.each(function() {
        $(this).keydown(function(e) {
            var key = e.charCode || e.keyCode || 0;
            // allow backspace, tab, delete, enter, arrows, numbers and keypad numbers ONLY
            // home, end, period, and numpad decimal
            return (
                key == 8 || 
                key == 9 ||
                key == 13 ||
                key == 46 ||
                key == 110 ||
                key == 190 ||
                (key >= 35 && key <= 40) ||
                (key >= 48 && key <= 57) ||
                (key >= 96 && key <= 105));
        });
    });
};

$.fn.setCursorPosition = function(pos) {

    this.each( function( index, elem ) {
        if (elem.setSelectionRange) {
            elem.setSelectionRange(pos, pos);
        } else if (elem.createTextRange) {
            var range = elem.createTextRange();
            range.collapse(true);
            range.moveEnd('character', pos);
            range.moveStart('character', pos);
            range.select();
        }
    });
    return this;
};
