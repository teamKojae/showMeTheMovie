package com.show.movie.util.calc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.show.movie.model.domain.MovieInfo;

public class Time<T> {
	public Time() {
	}

	private T t;

	public void set(T t) {
		this.t = t;
	}

	public T get() {
		return t;
	}

	public List<List<MovieInfo>> calcMovieTime(T list) {
		
		List<List<MovieInfo>> returnValue = new ArrayList<List<MovieInfo>>();
		//List<Object> returnValue = new ArrayList<Object>();
		
		try {
			for (List<MovieInfo> mo : (List<List<MovieInfo>>) list) {
				List<MovieInfo> emptyAddMovie = new ArrayList<MovieInfo>();
				int afterTime = 0;
				int calcTime = 0;
				int beforeTime = 0;
				for (int i = 0; i < mo.size(); i++) {
					int movieTime = mo.get(i).getMovie().getMovieTime();
					afterTime = parseTime(mo.get(i).getMovieStartTime());
					if (i != 0) {
						beforeTime = parseTime(mo.get(i - 1).getMovieEndTime());
					} else {
						beforeTime = afterTime;
					}
					// 9시부터 최초 등록된 영화상영시간까지 루프
					if ( i  == 0) {
						int firstMovie = afterTime - 540;
						int firstAddMovieTime = 540;
						int calcFirstMovieTimeCount = firstMovie / movieTime;
						for (int j = 0; j < calcFirstMovieTimeCount; j++) {
							String[] times = times(firstAddMovieTime,movieTime);
//							String startTime = transStartTime(firstAddMovieTime);
//							String endTime = transEndTime(firstAddMovieTime, movieTime);
							emptyAddMovie.add(setTime(times[0], times[1]));
							firstAddMovieTime += (10+movieTime);
						}
					}

					// 등록된 상영시간 다음 등록된 상영시간 계산해서 그 사이 등록하고 싶은 영화시간만큼 시간 비었으면 출력
					// ex) 11:00~ 13:00, 18:00 ~ 20:00. 영화시간 128분이면 13:15 ~ 15:23, 15:35~17:43이 뜨게
					calcTime = afterTime - beforeTime;
					int addMovieCount = calcTime / movieTime;
					if ((addMovieCount > 0)) {

//						String startTime = transStartTime(beforeTime);
//						String endTime = transEndTime(beforeTime, movieTime);
						
						String[] times = times(beforeTime,movieTime);
						
						System.out.println("시간 :  " + times[0] + "  ~  " + times[1]);
						for (int j = 0; j < addMovieCount; j++) {
							emptyAddMovie.add(setTime(times[0], times[1]));
						}
					}

					// 마지막 등록된 시간이랑 25시랑 비교해서 그 사이에 무비시간만큼 넣음
					// ex) 마지막 등록된 영화 : 16:05 ~ 18:20 이면 18:35~20:43 .. 등등 3개뜸
					if (i == mo.size() - 1) {
						calcCanAddMovieFor24Hour(mo.get(i).getMovieEndTime(), movieTime, emptyAddMovie);
					}
				}
				returnValue.add(emptyAddMovie);
				
			}
			for (List<MovieInfo> movieInfos : returnValue) {
					for(MovieInfo movieInfo : movieInfos) {
						System.out.println("결과값   =  시작시간 :    " + movieInfo.getMovieStartTime() + "     끝 시간 :    "
								+ movieInfo.getMovieEndTime());

					}
			}
			
			
		} catch (IndexOutOfBoundsException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return returnValue;
	}

	public String transStartTime(int time) {
		return transFormat(time, 0)[0] + ":" + transFormat(time, 0)[1];
	}

	public String transEndTime(int time, int movieTime) {
		return transFormat(time, movieTime)[0] + ":" + transFormat(time, movieTime)[1];
	}

	/**
	 * @param time : hour or min , movieTime : EndTime값을 구할때 넣어주고 아니면 0
	 */
	public String[] transFormat(int time, int movieTime) {
		String transStartTimeStringFormat = String.format("%02d", ((time + movieTime + 10) / 60));
		String transEndTimeStringFormat = String.format("%02d", ((time + movieTime + 10) % 60));
		String[] returnValue = new String[] { transStartTimeStringFormat, transEndTimeStringFormat };
		return returnValue;
	}

	public int parseTime(String time) {
		String[] parse = time.split(":");
		return (Integer.parseInt(parse[0]) * 60) + (Integer.parseInt(parse[1]));
	}

	public MovieInfo setTime(String startTime, String endTime) {
		MovieInfo movieInfo = new MovieInfo();
		movieInfo.setMovieStartTime(startTime);
		movieInfo.setMovieEndTime(endTime);
		return movieInfo;
	}

	public void calcCanAddMovieFor24Hour(String time, int movieTime, List<MovieInfo> emptyAddMovie) {
		System.out.println("24 :  " + time);
		int registeredEndTime = parseTime(time);
		int canAddMovieTimeFor24hour = 1500 - registeredEndTime;
		int canAddMovieCount = canAddMovieTimeFor24hour / movieTime;
		for (int j = 0; j < canAddMovieCount; j++) {
			if (j == 0) {
				registeredEndTime += 10;
			} else {
				registeredEndTime += movieTime;
			}
//			String startTime = transStartTime(registeredEndTime);
//			String endTime = transEndTime(registeredEndTime, movieTime);
			String[] times = times(registeredEndTime,movieTime);
			emptyAddMovie.add(setTime(times[0], times[1]));
		}
	}
	public String[] times(int time, int movieTime) {
		String startTime = transStartTime(time);
		String endTime = transEndTime(time, movieTime);
		return new String[] {startTime,endTime};
	}
}
