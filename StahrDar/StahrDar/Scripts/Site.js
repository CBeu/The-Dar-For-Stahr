﻿function service(method, data, success, fail) {
    $.ajax({
        type: "POST",
        url: "api.asmx/" + method,
        data: data,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: success,
        error: fail
    });
}