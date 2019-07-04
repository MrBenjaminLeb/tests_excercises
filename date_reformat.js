function formatDate(userDate) {
    // format from M/D/YYYY to YYYYMMDD
    var dates_split = userDate.split("/");
    
    correct_date = dates_split[2] + dates_split[0] + dates_split[1];
    return correct_date;

  }
  
  console.log(formatDate("12/31/2014"));
  