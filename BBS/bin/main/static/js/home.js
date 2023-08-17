$(document)
.on('click','#tblBoard tbody tr',function(){
	let seqno = $(this).find('td:eq(0)').text();
	document.location='/view?seqno='+seqno;
	return false;
})