package com.mul.Healthygym.dto;

import java.io.Serializable;

// BBS  Bulletin Board System
public class BbsDto implements Serializable {

	 	private int bbsseq;
	    private int memberseq;
	    private String title;
	    private String content;

	    private String wdate;

	    private int del;
	    private int ref;
	    private String nickname;
	    
	    private int report;
	    
	    public BbsDto() {}

		public BbsDto(int bbsseq, int memberseq, String title, String content, String wdate, int del, int ref, String nickname, int report) {
			super();
			this.bbsseq = bbsseq;
			this.memberseq = memberseq;
			this.title = title;
			this.content = content;

			this.wdate = wdate;
			this.del = del;
			this.ref = ref;
			
			this.nickname = nickname;
			
			this.report = report;
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

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getContent() {
			return content;
		}

		public void setContent(String content) {
			this.content = content;
		}


		public String getRegdate() {
			return wdate;
		}

		public void setRegdate(String wdate) {
			this.wdate = wdate;
		}

		public int getDel() {
			return del;
		}

		public void setDel(int del) {
			this.del = del;
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
		
		public int getReport() {
			return report;
		}

		public void setReport(int report) {
			this.report = report;
		}


		@Override
		public String toString() {
			return "BbsDto [bbsseq=" + bbsseq + ", memberseq=" + memberseq + ", title=" + title + ", content=" + content + ", del=" + del + ", "
					+ "ref=" + ref + ", nickname=" + nickname + ", report=" + report + "]";
		}
	    
	    
		
	}
