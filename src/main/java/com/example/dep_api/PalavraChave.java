package com.example.dep_api;

public class PalavraChave {
    private String palavra;

    /**
     * @return the palavra
     */
    public String getPalavra() {
        return palavra;
    }

    public PalavraChave() {

    }

    /**
     * @param palavra the palavra to set
     */
    public void setPalavra(String palavra) {
        this.palavra = palavra;
    }

    @Override
    public String toString() {
        return palavra;
    }
}
