package com.napmkmk.testhome.dto;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberDto {
	private String mid;//아이디
	private String mpw;//비밀번호
	private String mname;//이름
	private String memail;//이메일
	private String mdate;//가입일시
	
}