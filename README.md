# SqlResource
게임서버 데이터베이스 ERD 및 TABLE,SP 생성 프로시저

설명
- ERD : 데이터베이스 설계에 필요한 ERD(erdcloud로 작성 하여 출력)
- WebSite : 요청 구현부

요청 설명
- Command.ashx를 호출하여 cmd QueryString에 요청할 내용을 읽어 각 요청들은 요청Handler를 호출하여 결과를 Json데이터로 전달
- SystemInfo : 시스템 관련 데이트 요청
- metadat : 인게임 메타데이터 요청
- login : 게임서버에 접속할 accessToken 요청, 접근시 id 필요
