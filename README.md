

 ------- 프로젝트 설명 첨부 --------
SHOW ME THE MOVIE







                                        -------- Mybatis Foreach Collection에 관해---------


=========================Mybatis=====================

       <insert id="insertTheater">
            INSERT INTO
            movieInfo(movieCode, theaterCode,movieDate,movieStartTime, movieEndTime)
            VALUES 
            <foreach item="item" index="index" collection="theaterName" separator=",">
                 <foreach item="time" index="timeIndex" collection="movieStartTime" separator=",">
                 (
                 (SELECT movieCode FROM movie WHERE movieName = #{movieName}) ,
                 (SELECT theaterCode FROM theater WHERE theaterName = #{item}) ,
                 (SELECT date_format(#{movieDate},'%Y-%m-%d') FROM dual) ,
                  #{time}, '${movieEndTime[timeIndex]}'
                 )
                 </foreach>
            </foreach>
        </insert>
   
================  DAO  ========================
   
   
         public void insertTheater(
                  @Param("movieDate") String movieDate, 
                  @Param("movieName") String movieName, 
                  @Param("theaterName") List<String> theaterName,
                  @Param("movieStartTime") List<String> movieStartTime, 
                  @Param("movieEndTime") List<String> movieEndTime
       );
       
       
   ================================================
 
 
   주목할 부분은 :  #{time}, '${movieEndTime[timeIndex]}' 
   
   컬렉션의 item인 #{time}은 리스트의 해당 순번의 것을 잘 받아옴 (ex.  list.get(i) 느낌)
   
   하지만 foreach 컬렉션 대상이 아닌 ${movieEndTime[timeIndex]}은 parameter로 List로 넘겨줬을뿐인데  #{객체}로 불러와졌음. 
   Foreach내에서도 컬렉션에 있는 대상만 부를수 있는게 아니라 매핑된 key값을 부르면 매핑이 됨. 
   단,  ${} 매핑이기 때문에  ''가 생략되어 붙혀줘야됨. 
   (  #{} 매핑은   preparedstatement처럼 ? 로 들어가서 ''가 들어간것 뿐임  )
   
   
   
   
   
   
   
   
   
   
   
   
   ------------------------------------------------- 2020. 04. 08  -------------------------------------------------
   
        학원 -  1. 영화상영정보 등록 :  영화, 여러개의 지역, 여러개의 지역내의 여러개의 상영관,  여러개의 상영관의 여러개의 시간들 등록 
                   위의 마이바티스 설명으로 처리했음
                2. 전체적인 오류 수정... 병합하니까 연쇄적으로 버그 많이생김...
                3. 10~12일 기준으로 시연용 데이터 넣기
                4. 필요한 정보 기준으로 jsp 수정
                5. 전체적인 Process Flow 기준으로 이벤트 처리 확실하게 수정 
                 ( 동적으로 생긴 Elements  이벤트 위임 -> 이벤트 캡쳐링 처리 )
   
   
   
   
         집:   전체적인 process flow  오류 다 고침
         
                             ----------------     영화예매       --------------
                              
                  1 .  영화, 지역, 극장 선택 시 시간별로 등록되어 있는 영화 정보들의 잔여좌석뜨게 함
                  2.   시간별로 등록되어있는 영화 정보들의 좌석 테이블과 JOIN 해서  DB저장  
                         (예매하면 그 시간대의 영화 좌석만 업데이트 됨)
                  3.   예매된 좌석 disabled처리
                  4.   카카오페이를 통해 결제가 완료되면 예매내역에 insert
                  5.   결제완료되면 해당 좌석의 상태값 변경( seatStatus )
                  6.   날짜 관련 value 수정


                            ----------------     마이페이지    ----------------
                             
                  1.  해당 유저의 예매내역만 가져옴
                  2.  해당 유저의 취소내역만 가져옴
                  3.  예매 취소했을 시 예매한 좌석 상태변경 ( 1 -> 0 ) 그래서 다시 좌석 예매할수있음

                           ------------------      영화 상세페이지   ----------------------
                           
                  1.  스틸 컷 갯수 표시
                  2.  더보기 누르면  닫기  로   닫기  누르면 더보기로 텍스트 변환

                            ----------------     기타    ----------------          
                            
                  1. Seat 테이블에 값이 없을 때 값을 insert해주는 로직 만듬 (임시로 bookingController에 insertSeat() )
                  2. 스노우 뷰 테이블 DAO에 주석처리,  사용중인 뷰 테이블 위에 주석처리 ( 메소드화 예정 )
   
   
   
   
   
   
   
      ------------------------------------------------- 2020. 04. 09  -------------------------------------------------
                 
                 
             1. 좌석 선택 이벤트처리 + 유효성검사 ( 인원선택 : 2, 좌석 2개 넘게 선택 시 선택 불가)
             2.  예매 좌석 배열로 DB에 저장 
             3.  취소 시 배열로 저장된 좌석 파싱 후 좌석 상태 되돌리기
             4.  Seat Table을 현재 등록된 영화상영정보 갯수만큼 데이터를 넣어줌 (연산)
             5.  필요한 정보만 VIEW에 보여줄 수 있게끔 jsp수정
             6.  VIEW 테이블 만들 수 있게끔 DAO에 주석처리해서 추가
             7.  DB에서 잘못된 정보 검색 안하게 Parameter들 수정 (Booking, MovieInfo , Cancle, Tikkect)

             1.  필요없는 jsp 지움
             2.  INSERT와 UPDATE 와  SELECT가 동시에 이루어 지는 부분은 트랜잭션 처리
   
   
   
