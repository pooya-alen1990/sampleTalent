/**
 * Created by pooya on 9/19/15.
 */
function full_name() {

    $(".popover .edit-hover").addClass("edit-hover-active");

    $.post("ajax_edit.php",
        {
            first_name : $(".popover #first_name").val(),
            last_name : $(".popover #last_name").val()
        },
        function(data,status){
            console.log("Data: " + data + "\nStatus: " + status);

            if(status == "success"){

                setTimeout(function(){
                    $(".popover .edit-hover").removeClass("edit-hover-active");
                    $('.edit_popover').popover('hide');
                    $("#full_name_label").text(data);
                },2000)
            }

        });

}

function birthday() {

    $(".popover .edit-hover").addClass("edit-hover-active");

    $.post("ajax_edit.php",
        {
            birthday_year : $(".popover #birthday_year").val(),
            birthday_month : $(".popover #birthday_month").val(),
            birthday_day : $(".popover #birthday_day").val()
        },
        function(data,status){
            console.log("Data: " + data + "\nStatus: " + status);

            if(status == "success"){

                setTimeout(function(){
                    $(".popover .edit-hover").removeClass("edit-hover-active");
                    $('.edit_popover').popover('hide');
                    $("#birthday_label").text(data);
                },2000)
            }

        });

}

function mono(param) {

    $(".popover .edit-hover").addClass("edit-hover-active");

    $.post("ajax_edit.php",
        {
            param : param + "," + $(".popover #"+param+"").val()
        },
        function(data,status){
            console.log("Data: " + data + "\nStatus: " + status);

            if(status == "success"){

                setTimeout(function(){
                    $(".popover .edit-hover").removeClass("edit-hover-active");
                    $('.edit_popover').popover('hide');
                    $("#"+param+"_label").text(data);
                },2000)
            }

        });

}

function add_item($name) {

    var formData = new FormData($("#"+$name+"_form")[0]);
    //formData.append('file', $('#files-upload')[0].files[0]);

    //$.post('ajax_edit.php', formData, function (response) {
    //    //$("#output").html(response);
    //    console.log(response);
    //});

    $.ajax({
        url : "ajax_edit.php",
        type: "POST",
        data : formData,
        processData: false,
        contentType: false,
        enctype: 'multipart/form-data',
        async: false,
        success:function(data, textStatus, jqXHR){
            console.log(data);
        },
        error: function(jqXHR, textStatus, errorThrown){
            //if fails
        }
    });

}