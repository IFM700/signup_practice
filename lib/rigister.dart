import 'package:flutter/material.dart';

class Register  extends StatelessWidget {
  const Register ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      resizeToAvoidBottomInset: false,
      body:
      SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: Stack( alignment: Alignment.topRight,
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
              ),

              SingleChildScrollView(scrollDirection: Axis.vertical,

                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text('REGISTER',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black,),),
                      TextField(decoration: InputDecoration(labelText: 'User Name',),),

                      TextField(decoration: InputDecoration(labelText: 'Name',),),
                      TextField(decoration: InputDecoration(labelText: 'Mobile Phone',),),

                      TextField(obscureText: true,decoration: InputDecoration(labelText: 'Password',suffixIcon: Icon(Icons.visibility_off_outlined)),),
                      SizedBox( height: 10,),
                    ]  ,


                  ),
                ),
              ),
              SizedBox( height: 10,),

              Expanded(
                child: Stack( alignment: Alignment.bottomRight,
                  children: [
                    Container( padding: EdgeInsets.symmetric(horizontal: 10),
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
                              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                              child: new Text('Sign up' , style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w700,),),
                              //  style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.blue,)
                            ),

                          ),
                          SizedBox( height: 10,),

                          Text( 'Already have an account?',style: TextStyle(color: Colors.blue,) ,textAlign: TextAlign.right,),
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
      ),

    );
  }
}
