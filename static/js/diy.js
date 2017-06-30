$(function() {
    var orderTable=$('#dataTables-example').DataTable({
        responsive: true,
        processing:true,
        serverSide:true,
        ajax:"/orders/json",
    });
});