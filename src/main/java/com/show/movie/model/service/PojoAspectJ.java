package com.show.movie.model.service;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;


@Aspect
public class PojoAspectJ {
	public PojoAspectJ(){
		System.out.println("::" + getClass() + " default Construct");
	}
	
	//Around  Advice
		public Object invoke(ProceedingJoinPoint joinPoint) throws Throwable {
			System.out.println("-------------------------------------------------------");
			System.out.println("[Log] 호출 method :"+
														joinPoint.getSignature().getName());
			if(joinPoint.getArgs().length !=0){
				System.out.println("[Log] 받은 parameter: "+ joinPoint.getArgs()[0]);
			}
			
			try {
				
			}catch (Exception e) {
				System.out.println("[Log] 오류 : "+ joinPoint.getTarget()+"에서 오류남 !");
			}
			Object obj = joinPoint.proceed();
			

			System.out.println("[Log] return value  : "+obj);
			System.out.println("-------------------------------------------------------");

			return obj;
		}
}
