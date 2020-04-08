

 ------- 프로젝트 설명 첨부 --------
SHOW ME THE MOVIE







                                        -------- Mybatis Foreach Collection에 관해---------


=========================Mybatis=====================

  <insert id="insertTheater">
       INSERT INTO
       movieInfo(movieCode, theaterCode,movieDate,movieStartTime, movieEndTime)
       VALUES 
 
       <foreach item="item" index="index" collection="theaterName"
        separator=",">
            <foreach item="time" index="timeIndex" collection="movieStartTime"
            separator=",">
            (
            (SELECT movieCode FROM movie WHERE movieName =
            #{movieName}),
            (SELECT
            theaterCode FROM theater WHERE theaterName =
            #{item}),
            (SELECT
            date_format(#{movieDate},'%Y-%m-%d') FROM dual)
            ,#{time}, '${movieEndTime[timeIndex]}'
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
   하지만 foreach 컬렉션 대상이 아닌 ${movieEndTime[timeIndex]}은 parameter로 List로 넘겨줬을뿐인데
   #{객체}로 불러와졌음.  Foreach내에서도 컬렉션에 있는 대상만 부를수 있는게 아니라 매핑된 key값을 부르면
   매핑이 됨. 단,  #{} 매핑이기 때문에  ''가 생략되어 붙혀줘야됨. 
   (  ${} 매핑은   preparedstatement처럼 ? 로 들어가서 ''가 들어간것 뿐임  )
   
   
   
   
   
   
