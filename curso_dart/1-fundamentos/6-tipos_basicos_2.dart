/**
 * List
 * Set
 * Map
 */
void main() {
  //List
  List aprovados = ["Ana", "Carlos", "Daniel", "Rafael"];
  aprovados.add("Daniel");
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[0]);
  // print(aprovados[4]);
  print(aprovados.length);

  // Map
  var telefones = {
    "Joao": "+55 (11) 98072-9868",
    "Maria": "+55 (21) 12345-4567",
    "Pedro": "+55 (85) 45678-1234",
    "Joao": "+55 (11) 77777-7777",
  };
  print(telefones is Map);
  print(telefones);
  print(telefones["Joao"]);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);
  print(telefones.entries);

  //Set
  var times = {"Vasco", "Flamengo", "Fortaleza", "São Paulo"};
  print(times is Set);
  times.add("Palmeiras");
  times.add("Palmeiras");
  times.add("Palmeiras");
  // times.add(123); permite somente um tipo nesse caso
  print(times.length);
  print(times.contains("Vasco"));
  print(times.first);
  print(times.last);
  print(times);
}
