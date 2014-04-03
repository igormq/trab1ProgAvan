
import java.util.Collections;
import java.util.Comparator;
import java.util.Vector;

public class Teste {
    public static void main(String[] args){
//        ArrayList<String> lista = new ArrayList();
        Vector<ElementoDaLista> lista = new Vector();
        
        ElementoDaLista el;
        el = new ElementoDaLista();
        el.nome = "cccc";
        el.telefones = "+11(31)2222-2222";
        lista.add(el);
        
        el = new ElementoDaLista();
        el.nome = "aaaa";
        el.telefones = "+11(31)2222-2222";
        lista.add(el);
        
        el = new ElementoDaLista();
        el.nome = "bbbbb";
        el.telefones = "+11(31)2222-2222";
        lista.add(el);
        
        Collections.sort(lista, el);
        
        for(ElementoDaLista e: lista){
            System.out.println(e.nome+"  "+e.telefones+"  serial: "+e.serial);
        }
    }
}

class ElementoDaLista implements Comparator{
    static int serialBase;
    
    public ElementoDaLista(){
        this.serial = serialBase++;
    }
    
    String nome;
    String telefones;
    int serial;

    
    @Override
    public int compare(Object o1, Object o2) {
        if(((ElementoDaLista)o1).nome.equals(((ElementoDaLista)o2).nome)){
            return 0;
        }else if(((ElementoDaLista)o1).nome.compareTo(((ElementoDaLista)o2).nome)<0){
            return -1;
        }else{
            return 1;
        }
    }
}
