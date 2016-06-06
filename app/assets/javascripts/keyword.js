console.log('laodoadz');

$(function(){

  $('#monday').click(function(){drawChart(getExampleData('monday'), '#exampleChart')})
  $('#tuesday').click(function(){drawChart(getExampleData('tuesday'), '#exampleChart')})
  $('#wednesday').click(function(){drawChart(getExampleData('wednesday'), '#exampleChart')})
  $('#thursday').click(function(){drawChart(getExampleData('thursday'), '#exampleChart')})
  $('#friday').click(function(){drawChart(getExampleData('friday'), '#exampleChart')})
})





var getExampleData = function(day){
  $('#exampleChart').empty()
  arr0 =   parseInt($('#'+day+'0').text())
  arr1 =   parseInt($('#'+day+'1').text())
  arr2 =   parseInt($('#'+day+'2').text())
  arr3 =   parseInt($('#'+day+'3').text())

  dataArr = [ arr0, arr1, arr2, arr3]

return dataArr
}
