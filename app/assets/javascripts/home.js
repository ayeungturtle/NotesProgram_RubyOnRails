$( function CallThisWhatever() {
    $( "#sortthis"  ).sortable({update: send_ids});
    $( "#sortthis"  ).disableSelection();
})

send_ids = () => {
    $.ajax({
        url: "/notes/reorder",
        method: "GET",
        data: {sort_array: $("#sortthis").sortable("toArray")},
        success: function (data) {
        }
    });
}