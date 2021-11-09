function btn_click(src){
	if (src == "modify") {
		frm.action = "/member/mModify";
		frm.method = "post";
	} else {
		frm.action = "/member/mRemove";
		frm.method = "post";
	}
}