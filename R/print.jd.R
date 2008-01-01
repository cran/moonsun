`print.jd` <-
function (x,...)
 
{
	res = data.frame(jday=as.vector(x));
	class(res$jday)="jd";
	rownames(res)=names(x);
	print(res);
	invisible(res);
}

