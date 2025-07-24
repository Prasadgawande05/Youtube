import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  void CreatAccount() {
    // Placeholder logic for account creation
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Account created successfully')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff070707)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:
            Text("Create Account", style: TextStyle(color: Color(0xff0a0a0a))),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Image.network(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQkAAAC+CAMAAAARDgovAAABCFBMVEX/////AAD+AAD9AAD6AAD4AAD0AADwAADqAADtAADjAADnAADdAAD1AADhAADbAADnNjbcj4/19fXs7OzsFRXg4OC4j4/Q09PtiYnnurrZFhbVAADy8vLn5+fa2tra6OjSOzvF0NDYhobz3NzQbGzNXFztysrgoaHOV1f609P1xcX2r6/UKireRETuoKDMeXm+w8P2TU3krq778PDPSUnad3fRQEDTHR315OTih4ftkpLNYWHQUVHodXXTLy/hOzvpKiqIi4urgICZiIimrKzDb2/pISGztLSpi4u8rq7Bn5/Fjo6/qanIhobBm5u3eXntamrdx8f3RUXzYmLczs7Wo6Pob2/4zc2j4eA9AAAHWElEQVR4nO2dC18TRxDAI+ElguEhBnIkJMQkoBKuQSBFFFstSNU+LX7/b9J939yR2rvLzS7ZzP8DJMv/NzN7WW5nSiWCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCIAiCsES7O+it7e3trTmBfW1v0B26llA63t7rvGq+rAVBUHEF++7aWfNk+9ihh/Za5/QMSFi2T2QjqJ20HXkYHu2/VRr4mh47wghha9l3kiW9TlNoUBKW3KF8CBc/WvcwfHahPEgJj1wibUgXZ5ZTpCsDQmoQq1l0hrahXQxsihh0zgIRD1KDWNBDV2gdykUQnNsUUVMBITXw9Sy4Q+lQLlhYbFkVoQJCaJALmneDtqFdcBWWoqKrRUgPUMKKbYAO7oLniFDxwoaI4euXgcoMJkJrkAubswzwYVxIFTZ2kJOmiQgeEMoCWN6sFRJCpAzmQqoIavgieheiWC6pzBAe7P39/ylFyIAq3mCLGHaCoKIiQgWEWw1GRlLFAbKJo2ZMBPegV1N2Q8KFUbGKK6K9z3JjhAhHFmI2gAoRFM9RTey9lSHBawQTcT88cKAKG0Ex3I9yw4gwq5lxAXQhVCwIFdiVotfUIcFyg6VGJMKJhbgNqQLkB+b28exuSDjXELmIVMigqOCJaF/AkEiIeOAI4IKr4PmhggKxZg54ckQhAUS40gBkSBUmKHh64P0m3aslQuJ+iFAuYFDw7WO5colm4rVJjigksnh418RXwYNiQQcFlohjUSZkcsCQSG/ip5+fIKrQQWHSA+0Xafs0qCSTI1NqvHv/4cMvc8gqRFCo3QOrZHab4yXHg6uP19fhdaeMamI2So8K1oFN92XcRNbkYCbCMKy2bg5tmegjmdiOTORKjgdPPobVaqNabf36DstEGRaKCtZ55nbtTsHMaOJptbrJaFRbnxaRVET7KDOB9UDBTSyNaaKxWd+o15mL8Kjo0pksmWzzwDWhtg5dMLOslZlgInZ2NriKavi62NIZKxRy80A3MT+GiY2d9fV16aJ1c1qwCosmEltHxgdtZaJUMi4+ryKZWFhk6XHPTayv888yLj4V99Qp0gNuo/fdhPwwpkK6CI/mp9uECov6Ji+ds8WZgA8UiCaSj5hjmQApcvOqMBOWYqJgEwWXzok2AVw8vZpIE7keMUeaKJnHi/DLmKUTmLBXJwo0AbeRZ2OVzsk3AVLk+mLKTcBt5HLKTQAXv+U9vPDFBHDxZWHKTcAn8DyHFx6ZAGER7mf/d5JXJmDpzHzu65kJ4CLrua93JuDhRaZzXw9NwNK5Mt0morCohun/ZeaniTyl01cT2Q8v/DWhXVRTHl74bMKoCK9//38XXpsQKvgeEqb4XTYNJlo3P6T4eK9NiOzYrf6R6uM9NiH/I7K7lfLjvTXBHzSZh17qr/DUhHzg3t3OcPbvpwlZIP5MUyi9NiE9NNIVSo9NqH8dpy2U3ppQG0Y/qwffTKhCOcjzfolXJlSh/CuHB69MSA9f/87lwSMTskA03uT04I0JVSjPc3vwxMQ4hdIrE7JAdPMVSo9MjFko3Zoo7j0r/WSdv1COMjGBb5wVUChHmZi47FCFslfMBYfJzQ751t3udlEXgCb7beXdr5mOINKaQI+JYt9g54XytjAPiVsNlk3kuekibjVkPKv10wS/85P1rDaliNhNl0e4Ju7eA8t4I26zvpPjrDa7CUv3wGImMqjgdwPrGzsbmc9qU4qwfDdQ3ZLMGRONzXo9+1ltThNoN2e749+cDZmKzUaxhRKoSN4hxrpN3R33NvUVv03d6uM07hh1mxrrhn27gBv2rX+wOlCMumGP1XXhuAmbs+TpuvD+85hHEClMyDLxULRnQesN+Uo07FnMnR5X+W8spBQR3zqWsUSUTsbsU4PIDEwObQKvY89ghIn7oWImHhLITRdYyQTt/0xjr5lsT1fIIkxI8DKB2A3xNGpeFO/s5dSFXEDU7g29iROj/51ub65czBgRICREcmB2ABxGfUJhB0D3LQDL5REhgdo/tnO3UWi57FqGWgFohShCArd9bBs2j12JqXDgA37zrBGhQwK3e2xJ94WU+ZHsmuqM2bgI/JCQlQLkh2mt7FyDaK4sRVioEpxz0zb1oWi3He+27cQB7KxsRKB3Hi+V3gIVKiyctx6fm4MieG5Y6EbP8iOuYl435XdoQXXmNyIQf4VCnqtSEY1qcDGmAbBiPGgRdqZWiFJhVCTGVjgBTPBQs0yszbfZkipGjDJxxEI0vQO3k/AdzuGYHzjkx4EBPepHTXRhqWFx4lGp9CKQc13AyCNHM4/M/KdHesqPpRqhOajocWCux2CZmWBy8tMy+hPVHW6DQE+IU6ParM9E0w6UBj6V4Na6B8bBpXChxuW5m5e3ZIblBav2A0Ly/FCMzFNzJB3OT5Rz8g6Rf31+l2H/sKInSgoeW5uuyb8LzBi9PHc+d/b4W3/r9vBy1RWXh7db/W8uB84SBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQBEEQ08W/C+7FHE+qV4gAAAAASUVORK5CYII="), // Keep your full base64 here
            Text(
              "Sign up for YouTube",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                hintText: "Username",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
                hintText: "Enter your Email",
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
                hintText: "Enter your Password",
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: CreatAccount,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back to Login",
                style: TextStyle(
                    color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
