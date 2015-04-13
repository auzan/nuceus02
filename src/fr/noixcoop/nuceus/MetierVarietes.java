package fr.noixcoop.nuceus;

import java.util.ArrayList;
import java.util.List;

public class MetierVarietes {
	
	private List<Variete> varietes = new ArrayList<Variete>() ;

	public MetierVarietes() {
		super();
		// TODO Auto-generated constructor stub
		varietes.add(new Variete("Franquette",true)) ;
		varietes.add(new Variete("Mayette",true)) ;
		varietes.add(new Variete("Parisienne",true)) ;
		varietes.add(new Variete("Maylanaise",false)) ;
		varietes.add(new Variete("Pleureur",false)) ;
		varietes.add(new Variete("Rubis",false)) ;
		varietes.add(new Variete("Soleze",false)) ;
		varietes.add(new Variete("Verdelet",false)) ;
		varietes.add(new Variete("Verdot",false));
		varietes.add(new Variete("Serr",false));
		varietes.add(new Variete("Grandjean",false));
		varietes.add(new Variete("Fernett",false));
		varietes.add(new Variete("Fernor",false));
		varietes.add(new Variete("Chandler",false));
		varietes.add(new Variete("Bijou",false));
	}
	public Variete consulter(String libelle){
		int pos = rechercher(libelle) ;
		if(pos != -1){
			return varietes.get(pos) ;
		}
		else {
			return null ;
		}
		
	}
	public List<Variete> consulterVariete(){
		return this.varietes ;
	}
	private int rechercher(String libelle){
		int pos = -1 ;
		int i = 0 ;
		while(i < varietes.size() && pos == -1){
			if(libelle.toUpperCase().equals(varietes.get(i).getLibelle().toUpperCase())){
				pos = i ;
			}
			else {
				i += 1 ;
			}
		}
		return pos ;
	}
	
	public boolean rechercherPuissant(String libelle){
		boolean val = false;
		int i = 0;
		while(i < varietes.size() && val==false){
			if(libelle.toUpperCase().equals(varietes.get(i).getLibelle().toUpperCase())){
				val = true;
				}
			}
		return val;
	}
	
	public boolean ajouter(String variete, boolean aoc){
		this.varietes.add(new Variete(variete, aoc));
		return true;
	}
	
	public boolean supprimer(String libelle){
		int pos = rechercher(libelle) ;
		if(pos != -1){
			varietes.remove(pos) ;
			return true ;
		}
		
		else {
			return false ;
		}
	}
	
	public boolean supprimerVariete(String libelle){
		varietes.remove(libelle);
		return true;
	}
	

}
