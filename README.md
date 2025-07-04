mason설치안됐다면 컴퓨터에 깔아야함
dart pub global activate mason_cli
설치 후 경로까지추가해줘야 터미널에서 인식
echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"' >> ~/.zshrc && source ~/.zshrc




템플릿 적용하고자하는 프로젝트 터미널에서 mason init 하면 준비 완료

init하면 프로젝트에 mason.yaml이 생김 그럼 깃에 저장해놨으면 아래처럼 하면됨 


bricks:
  flutter_app_template:
    git:
      url: https://github.com/yourname/flutter_app_template.git


그후 mason get (깃에있는거 다운받기)

그후 mason make my_app_template 



//////////

템플릿 만드는방법 

mason new flutter_app_template(제목) 
하면 폴더가 만들어지는데 __brick__안에 lib안의 경로 다넣으면됨 
