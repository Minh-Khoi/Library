function myFunction() {
    // Declare variables 
    var input, filter, table, tr, td1 , td2, i, txtValue, txtValue2;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
      td1 = tr[i].getElementsByTagName("td")[0];
      td2 = tr[i].getElementsByTagName("td")[1];
      if (td1 ) {
        txtValue = td1.textContent || td1.innerText;
        txtValue2= td2.textContent || td2.innerText;
        if ((txtValue.toUpperCase().indexOf(filter) > -1) || 
                (txtValue2.toUpperCase().indexOf(filter) > -1) ) {
          tr[i].style.display = "";
          console.log("run ok");
        } else {
          tr[i].style.display = "none";
        }
      } 
    }
}