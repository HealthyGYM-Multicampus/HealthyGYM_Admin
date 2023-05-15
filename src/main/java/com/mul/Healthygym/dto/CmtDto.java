package com.mul.Healthygym.dto;

import java.io.Serializable;

// BBS  Bulletin Board System
public class CmtDto implements Serializable {

		private int commentseq;
	 	private int bbsseq;
	    private int memberseq;
	    private String cmtcontent;

	    private String regdate;

	    private int cmtdel;
	    private int ref;
	    private String nickname;
	    
	    public CmtDto() {}

		public CmtDto(int commentseq, int bbsseq, int memberseq, String cmtcontent, String regdate, int cmtdel, int ref, String nickname) {
			super();
			this.commentseq = commentseq;
			this.bbsseq = bbsseq;
			this.memberseq = memberseq;
			this.cmtcontent = cmtcontent;

			this.regdate = regdate;
			this.cmtdel = cmtdel;
			this.ref = ref;
			this.nickname = nickname;
			
		}
		
		public int getCommentseq() {
			return commentseq;
		}

		public void setCommentseq(int commentseq) {
			this.commentseq = commentseq;
		}

		public int getSeq() {
			return bbsseq;
		}

		public void setSeq(int bbsseq) {
			this.bbsseq = bbsseq;
		}

		public int getId() {
			return memberseq;
		}

		public void setId(int memberseq) {
			this.memberseq = memberseq;
		}

		public String getCmtcontent() {
			return cmtcontent;
		}

		public void setCmtcontent(String cmtcontent) {
			this.cmtcontent = cmtcontent;
		}


		public String getRegdate() {
			return regdate;
		}

		public void setRegdate(String regdate) {
			this.regdate = regdate;
		}

		public int getCmtdel() {
			return cmtdel;
		}

		public void setCmtdel(int cmtdel) {
			this.cmtdel = cmtdel;
		}

		public int getRef() {
			return ref;
		}

		public void setRef(int ref) {
			this.ref = ref;
		}
		
		public String getName() {
			return nickname;
		}

		public void setName(String nickname) {
			this.nickname = nickname;
		}


		@Override
		public String toString() {
			return "BbsDto [commentseq=" + commentseq + ", bbsseq=" + bbsseq + ", memberseq=" + memberseq + ", cmtcontent=" + cmtcontent + ", cmtdel=" + cmtdel + ", " + "ref=" + ref + ", nickname=" + nickname + "]";
		}
	    
	    
		
	}
