package kr.co.ch03.advice;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
public class AfterAdvice {
	
	@Pointcut("execution(* kr.co.ch03.AOPService.insert*(..))")
	public void insertPointcut() {}

	@After("insertPointcut()")
	public void after1() {
		System.out.println("횡단관심 = aftrer1");
	}
	
	public void after2() {
		System.out.println("횡단관심 = aftrer2");
	}
	
	public void after3() {
		System.out.println("횡단관심 = aftrer3");
	}
}
