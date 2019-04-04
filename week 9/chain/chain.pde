String text = "A phoenix, an immortal flaming bird, eternally rising from the ashes of it's own death.";

int order = 3;

int generatedTextLength = 200;

HashMap<String, ArrayList<String>>chain = new HashMap<String, ArrayList<String>>();

void setup(){
  size(600,600);
  
  for(int i = 0; i < text.length() - order; i++){
    String gram = text.substring(i, i+order);
    ArrayList<String> characters;
    if(!chain.containsKey(gram)){
      characters = new ArrayList<String>();
      chain.put(gram, characters);
    }else{
      characters = chain.get(gram);
    }
     characters.add(text.substring(i+order, i+order+1));
  }
}

void draw(){
  background(0);
  
  fill(255);
  textAlign(CENTER);
  text(result, width/4,height/4, width/2, height/4);
}

String result= " ";

void mousePressed(){
  String currentGram = text.substring(0, order);
  result = currentGram;
  
  for(int i = 0; i< generatedTextLength; i++){
    if(chain.containsKey(currentGram)){
      ArrayList<String> characters = chain.get(currentGram);
      result += characters.get(round(random(characters.size()-1)));
      currentGram = result.substring(result.length()-order, result.length());
    }
  }
}
