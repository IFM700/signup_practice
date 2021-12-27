import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack( alignment: Alignment.topRight,
              children: [
                // Opacity(opacity: 0.9, child: Image.asset('assets/top1.png' ,)),
                Image.asset('assets/top1.png' ,color: Colors.blue.withOpacity(.3),),
                Image.asset('assets/top2.png',color: Colors.blue.withOpacity(.3),colorBlendMode: BlendMode.modulate,),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Image.asset('assets/man.png',),
                ),
              ],
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text('LOGIN',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.blue,),)
                  ,SizedBox( height: 20,),
                  TextField(decoration: InputDecoration(labelText: 'User Name',),),
                  SizedBox( height: 20,),
                  TextField(obscureText: true,decoration: InputDecoration(labelText: 'Password',),),
                  SizedBox( height: 20,),
                  Container(
                    alignment:Alignment.topRight,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text( 'Forget your password?',style: TextStyle(color: Colors.blue,) ,textAlign: TextAlign.right,),
                    ),
                  ),


                ]  ,


              ),
            ),
            SizedBox( height: 30,),
            /*
*/
            Expanded(
              child: Stack( alignment: Alignment.bottomRight,
                children: [
                  Container( padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        FlatButton(onPressed: (){},
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                          // elevation: 10,
                          splashColor: Colors.yellow[100],
                          child: Ink(
                            decoration: new BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              gradient: new LinearGradient(colors: [Colors.yellow.shade500,Colors.yellow.shade900],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.bottomLeft
                              ),

                            ),
                            padding: EdgeInsets.symmetric(horizontal: 80,vertical: 18),

                            child: new Text('LOGIN' , style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,),),
                            //  style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.blue,)
                          ),

                        ),
                        SizedBox( height: 10,),

                        Text( 'Don\'t have an account? Sign up',style: TextStyle(color: Colors.blue,) ,textAlign: TextAlign.right,),
                      ],
                    ),
                  ),
                  // Opacity(opacity: 0.9, child: Image.asset('assets/top1.png' ,)),
                  Image.asset('assets/buttom2.png' ,color: Colors.blue.withOpacity(.2),),
                  Image.asset('assets/buttom1.png',color: Colors.blue.withOpacity(.4),colorBlendMode: BlendMode.modulate,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
