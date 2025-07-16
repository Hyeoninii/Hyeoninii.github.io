---
# the default layout is 'page'
title: Question Notes
icon: fas fa-sticky-note
order: 5
---



> 궁금했던 것들을 정리하는 공간

{: .prompt-tip }

### ❓ Question
- [25-07-16]

> ### 자바에서 String은 불변 객체로써 메모리에 저장되고, 변하게 되면 새로운 객체를 생성한다. System.out.println("test1" + "test2")를 했을 때 어떻게 저장되는가?
>
> `+` 기호로 연결되어 있는 문자열들은 JVM에서 컴파일 타임에 "test1test2" 라는 String 리터럴이 저장된다. constant pool에 저장된다.
> 그러나 변수로 저장하게 되면 컴파일 타임에 문자열을 정의할 수 없다.  
> String a = "test1"; String b = "test2";  
> System.out.println(a + b);  
> 그래서 이런 경우에는 런타임에 StringBuilder가 문자열을 합치고, toString()을 사용하여 새로운 객체를 생성한다.
> 이 때, new연산자로 생성하기 때문에 constant pool에 저장되지 않는다.

> ### Constant Pool이 정확하게 무엇인가?
>
> ***상수 값들을 저장하는 메모리 영역***이다. 메서드 영역에 올라간다.
> String a = "test", String b = "test" 처럼 같은 문자열을 선언할 경우 JVM에서는 상수 풀에 내부적으로 하나의 객체?만을 생성하고 a, b가 같은 참조를 가지게 한다.  
> System.out.print(a==b) //true  
> String a = new String("test"); String b = "test"  
> 이런 경우에는 "test"가 상수 풀(b의 참조)에 저장되지만, 별개로 new로 선언한 String객체(a의 참조)도 힙에 따로 생성된다.  
> System.out.print(a==b) //false



---

{: .prompt-info }
> 이 페이지는 지속적으로 업데이트됩니다. 