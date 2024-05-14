import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opamobile/pages/register/register_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opamobile/pages/token-page/token_page.dart';
import 'package:opamobile/utils/opa_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: OpaColors.yellowOpa,
        actions: [],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(27),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  OpaColors.white,
                  OpaColors.white70,
                ],
              ),
            ),
            child: SingleChildScrollView(
              // Adicionado SingleChildScrollView
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    child: Image.asset('assets/OPA_logo.png'),
                  ),
                  const SizedBox(height: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email:",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Color(0xFF525252),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      const SizedBox(height: 5),
                      CupertinoTextField(
                        cursorColor: OpaColors.yellowOpa,
                        padding: const EdgeInsets.all(15),
                        placeholder: "Insira seu email",
                        placeholderStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xFF818181),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFD0D0D0), width: 2.0),
                          color: const Color(0xFFF8F8F8),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Senha:",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          color: Color(0xFF525252),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      const SizedBox(height: 5),
                      CupertinoTextField(
                        padding: const EdgeInsets.all(15),
                        cursorColor: Colors.yellow,
                        placeholder: "Insira sua senha",
                        obscureText: true,
                        placeholderStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xFF818181),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xFF818181),
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFD0D0D0), width: 2.0),
                          color: const Color(0xFFF8F8F8),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoButton(
                      padding: const EdgeInsets.all(17),
                      color: OpaColors.yellowOpa,
                      child: Text("LOGIN",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.brown,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0),
                          )),
                      onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TokenPage())
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: CupertinoButton(
                      child: Text("CRIAR CONTA",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.brown,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}