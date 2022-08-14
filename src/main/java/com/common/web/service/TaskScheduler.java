package com.common.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

public class TaskScheduler{

    private static final Logger logger = LoggerFactory.getLogger(TaskScheduler.class);
    
    @Autowired
    CommonService commonService;

//  @Scheduled(fixedDelay=1000)
//  public void TaskScheduler1() {
//      logger.debug("매초 스케줄링");
//  }
    
    @Scheduled(cron="0 0 10 * * *")
    public void syncDB() {
//        boolean dept = commonService.SyncDEPT();
//        boolean user = commonService.SyncUSER();
//        if(dept && user) {
//            logger.debug("DB 동기화 성공!!");
//        }
        logger.debug("매 10:00:00 마다 스케줄링");
    }
    
}

/**
초 0-59 , - * / 
분 0-59 , - * / 
시 0-23 , - * / 
일 1-31 , - * ? / L W
월 1-12 or JAN-DEC , - * / 
요일 1-7 or SUN-SAT , - * ? / L # 
년(옵션) 1970-2099 , - * /
* : 모든 값
? : 특정 값 없음
- : 범위 지정에 사용
, : 여러 값 지정 구분에 사용
/ : 초기값과 증가치 설정에 사용
L : 지정할 수 있는 범위의 마지막 값
W : 월~금요일 또는 가장 가까운 월/금요일
# : 몇 번째 무슨 요일 2#1 => 첫 번째 월요일

  초 분 시 일 월 주(년)
 "0 0 12 * * ?" : 아무 요일, 매월, 매일 12:00:00
 "0 15 10 ? * *" : 모든 요일, 매월, 아무 날이나 10:15:00 
 "0 15 10 * * ?" : 아무 요일, 매월, 매일 10:15:00 
 "0 15 10 * * ? *" : 모든 연도, 아무 요일, 매월, 매일 10:15 
 "0 15 10 * * ? : 2005" 2005년 아무 요일이나 매월, 매일 10:15 
 "0 * 14 * * ?" : 아무 요일, 매월, 매일, 14시 매분 0초 
 "0 0/5 14 * * ?" : 아무 요일, 매월, 매일, 14시 매 5분마다 0초 
 "0 0/5 14,18 * * ?" : 아무 요일, 매월, 매일, 14시, 18시 매 5분마다 0초 
 "0 0-5 14 * * ?" : 아무 요일, 매월, 매일, 14:00 부터 매 14:05까지 매 분 0초 
 "0 10,44 14 ? 3 WED" : 3월의 매 주 수요일, 아무 날짜나 14:10:00, 14:44:00 
 "0 15 10 ? * MON-FRI" : 월~금, 매월, 아무 날이나 10:15:00 
 "0 15 10 15 * ?" : 아무 요일, 매월 15일 10:15:00 
 "0 15 10 L * ?" : 아무 요일, 매월 마지막 날 10:15:00 
 "0 15 10 ? * 6L" : 매월 마지막 금요일 아무 날이나 10:15:00 
 "0 15 10 ? * 6L 2002-2005" : 2002년부터 2005년까지 매월 마지막 금요일 아무 날이나 10:15:00 
 "0 15 10 ? * 6#3" : 매월 3번째 금요일 아무 날이나 10:15:00

*/