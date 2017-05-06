# 2분기 팀프로젝트
# https://teamproject2-j1h00n.c9users.io/
~~히익 2분기 프로젝트가 벌써 시작했다구?~~

### 민우팀의 팀구성

천민우 (튜터), 김지훈(팀장), 송지연, 김승하

# 아이디어는?
## 이름

님아 그 집을 가지마오

## 목적

맛집, 체험, 데이트코스 등 을 찾을때 우리가 정보를 얻는 채널은 한정적이다. 네이버, 페이스북 솔직히 이 두곳이 가장 크다. 하지만, 광고로 점철된 네이버 블로그 후기, 페이스북 페이지에 맛집이라고 가보면 실망스러운 일을 겪게되기 마련이다.

우리는 돈주고 가게를 소개하는 현재 상황과 진실되지 못한 맛과 재미를 허위로 광고하는 사장들을 피하기 위해, 우리의 소중한 권리를 지키기 위해 이 서비스를 만든다.

## 내용
어떤 것을 먹을지 정할 때 우리는 '뭘 먹지?' 떠올린다. 딱히 정하진 않았지만, 나오는 메뉴마다 족족 싫다고 말하는 사람들을 위한 방법은 '소거'다. 뭘 먹을지를 정하는게 아니라 뭘 안먹을지 생각하는게 도움된다.

마음에 드는 이성과의 식사도 마찬가지다. 삼시세끼 먹는 곳에서 식사를 하지 않기 때문에 우리는 네이버에 검색한다. 네이버랑 페이스북으로 찾으면 상대방은 이미 가본 곳일 수 있다. 허위로 광고된 맛집에서 맛까지 망친다면? 생각만해도 끔찍하다.

애인과의 데이트를 한다거나, 친구들과 함께 즐기기 위해 찾은 곳이 가격만 비싸고 별로 좋지도 않으면 시간낭비, 돈낭비 낭비 퍼레이드다.

우리에게 필요한 것은 그 가게에 대한 '단점'이다. 진실된 이야기. 네이버와 페이스북이 말해주지 않은 뒷이야기를 통해 우리는 피할 수 있다. 어디갈지 정하는데서 오는 불필요하고 효율적이지 못한 정함은 우리를 피곤하게 하며, 이것을 가장 빠르게 해결 할 수 있는 점은 단점이다. 열개의 장점을 찾고 아는 것 보다 한 개의 단점이 치명적일 수 있다. 하지만 단점을 먼저 알 수 있다면?

**어디갈지 정할 수 있는 지표로 활용할 수 있다.**

## 계획설명
### 전반적인 부분

사실 생각하는 모든 부분을 구현해 내려면 많은 배움이 필요하다. 우리의 시간은 그렇게 많지 않기 때문에 현재 배운것을 바탕으로 기획하고 추후에 확장할 것을 고려하여 설계를 한다.

#### 현재 배운 것들
- CRUD
- 다음맵스
- Paperclip

먼저 CRUD는 모든 사람이 안맛집에 대해 쓸 수 있도록 하기 위해 필요한 기능이다. 우리가 필요한 model의 구성은 이름(나중에 검색을 할 수 있도록)과 내용의 두 부분이다. (레퍼런스 위키 참조)

view는 많이 구성하지 않고 CRUD를 구현할 수 있는 최소한으로 사용. 나중에 추가될 수 있는 기능으로 top5 가면안될집, 수정이 오랫동안 이루어지지 않은 가면 안될 집, 최근 등록된 가면 안될 집 등 index에서 이목을 끌 수 있을 만한 것들로 구성한다.

가면 안될집을 들을 보여주는 show는 당연하게 이름과 내용이 주가되어야 할 것이고 눈에 띄어야함.

내가 가려고 하는 집이 창-렬인지 확인해 보기 위해 우리 서비스를 이용하는 사람들을 위해 안맛집을 검색해 볼 수 있도록 기능을 만들어야 한다. 정확하게 맞지 않더라도 일부만 맞아도 보여줄 수 있도록 구현해야하기 때문에 이것 또한 추후에 구현하는걸로!

해당 가면 안될집 에 대한 내용을 쓸때 현재는 꾸며지지 않고 있지만, 추후에는 마크다운 문법을 이용하여 가독성을 높이고 구조화 시킬 수 있도록 해야한다.

디자인적으로는 고화질의 사진이나 배경을 통한 것이 아니라 한 가지 색을 바탕으로 심플하고 단순하게 꾸며서 구성할 예정

관리자가 삭제할 수 있도록 destroy를 구현해두어야 해서 만들어 둠 (나중에 일반사용자들에게는 안보이게 조치)

### 구현할 기능 정리
- CRUD
    - 누구나 가면 안될 집에 대해 쓸 수 있어야 한다를 원칙으로 하고 있음.
    - 만들고, 수정이 자유롭도록!
- Paperclip
    - 내용을 등록할때 사진을 추가하기 쉽도록 적용
- 오늘의 가면 안될 집 기능
    - 등록된 안맛집 (model)을 랜덤하게 불러와 해당 view로 넘어갈 수 있게 
- 다음 API를 통한 지도 (보류)
	- 해당하는 가면 안될 집이 어디에 있는지 찍어 줄 수 있도록 함.

### 추후에 추가한다면 좋을 기능
- 내용관리부분
    - 누구나 가면 안될 집에 대해 쓸 수 있지만, 수정하는 과정에서 전체 내용이 사라지거나 맛집이라고 수정하는 불순한 사람들이 있을 수 있음.
    - 이 부분을 해결하기 위한 방법구상
        - version 관리 : 수정하는 전과정에 걸쳐서 버젼이 생성되고 내용이 사라지거나 운영원칙에 위배되는 내용이 수정될 경우 이전 version으로 rollback 가능
        - 관리자 승인 후 수정 : 이건 관리자가 확인하기 까지 너무 오랜 시간이 걸린다. 그냥 수정이 되고 수정된 걸 볼 수 있도록해서 원칙에 맞지 않을 경우에만 rollback 하는걸로 (중대사항에 대해서는 관리자 승인을 통해 이루어지도록 해야하기 때문에 어쨌든 구현해야 함)
        - 관리자 승인 후 수정 추가내용 : 내용은 수정해도 되지만 이름이 변경될 경우 검색기능과 연결되어 있기 때문에 변경이 되면 검색이 안되는 결과를 초래할 수 있음. 안맛집의 이름은 승인 후 수정으로 해야할 듯.
- quality controll
    - 회원가입제도
        - 회원가입을 통해 회원이라는 소속감을 주고 열심히 활동할 수 있도록 함 
    - IP ban
        - 운영원칙에 위배되는 행위시 IP ban을 위해 수정한 사람들의 IP를 수집 및 기록
        - 다시 유입될 수 없도록 IP를 ban
- 별점
    - 기존 서비스와 달리 맛없는 정도를 별점으로 표현
    - 여기에 나온 별점을 토대로 진짜 맛없는 집 top5를 선정해 유저가 접속시 첫화면에서 재미를 느낄 수 있도록 함
- 검색기능
    - 안맛집을 검색할 수 있음
- 내용 등록, 수정시 마크다운 문법 사용가능
	- 가독성을 높이고 구조화된 글을 쓰고 볼 수 있도록 함

### 레퍼런스
- 나무위키
- 위키피디아
- 오늘 뭐먹지?
- 다이닝 코드


## 각자 적을 내용
### 송지연
1. 내가 맡은 일은 paperclip 및 추가로 구현하고 싶은 기능의 gem을 찾는 것이다.
2. 수업자료보고 코드 따라치면 웬만큼 되는 것 같다. 수업자료로 부족해서 따라한 영상
    https://youtu.be/Z5W-Y3aROVE
3. 참고사항
    -sudo apt-get install imagemagick 하고나면 아마 imagemagick이 없다고 뜰텐데
     sudo apt-get update 를 먼저 진행하자
4. 이미지 크기는 app/models/gajima.rb 에서 설정할 수 있다.
5. 사진은 다 해놨는데 관련해서 수정사항 아래 적어주세요
6. 딱히 없으면 댓글과 좋아요를 해보도록 하겠습니다.
- 댓글과 좋아요 보다는 랜덤하게 한 곳을 불러오는 기능을 구현해 줬으면함 - 지훈
- 네비바를 통해서 클릭하면 랜덤하게 한 곳으로 링크 되게끔!! (동일 페이지로는 x)
7. 에러있는 css와 font는 주석으로 바꿔 놓았음
    -application.css의 font 주석
    -application.html.erb의 css, js 주석송지연은 여기에

### 김승하
-html/css
부트스트랩의 템플릿을 활용하려고 해서 구글링을 통해 템플릿을 다운받았는데
다운받은 템플릿들이 html파일도 여러개고 css파일도 여러개라 적용하기가 생각처럼 쉽지 않았음
어떻게 적용해야 할지 몰라서 제일 맘에 들어 보이는 템플릿을 다운받아서 
index.html파일과 css파일만 따로 가져와서 필요없는 부분과 복잡한 부분을 다 삭제함
css파일의 필요없는 부분은 아직까지 삭제하지 못하고 있음

--그동안 사이즈를px로 조절하였는데 화면이 이걸로 조정하면 크기에 따라 기기에서 크기가 다르게
보이는 것을 처음 알았음
http://aboooks.tistory.com/142
em으로 크기를 바꾸려고 하는데 em으로 바꾸어도 해결되지 않아 더 해봐야 알듯


### 김지훈
CRUD 구현
- 워낙에 많이 설명해서 딱히 어려운 점은 없었음.
- 하지만 아직도 복수/단수 형태를 언제 써야할지 몰라서 디버깅때 문제가 생겼었음
    - 이 부분에 대해서는 추가로 공부!! (왜 거기에는 컨트롤러 이름인지, 모델이름인지)

기획 및 기타
- 들어갈 내용들을 채워넣음
- 새로운 기능을 넣기 위해 action과 view를 추가하고 각 view에서 연결

### 천민우
- git으로 버전관리하면서 진행하면좋겠쑤다.
- application.html.erb에 외부에서 가져온 css나 js 경로 확인하고 불필요한거 지우기~