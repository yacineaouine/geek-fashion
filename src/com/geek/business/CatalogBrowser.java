package com.geek.business;

import java.util.ArrayList;
import java.util.List;

import com.geek.dao.ArticleDAO;

public class CatalogBrowser {

	private int currentPosition = 1;
	private Article currentArticle;
	private int articleCount = ArticleDAO.getArticleCount();
	
	private List<ShoppingCartLine> shoppingCart = new ArrayList<>();
	
	
	public CatalogBrowser() {
		currentArticle = ArticleDAO.getArticleById( currentPosition );
	}
	
	public Article getCurrentArticle() {
		return currentArticle;
	}

	public List<ShoppingCartLine> getShoppingCart() {
		return shoppingCart;
	}
	
	public int getShoppingCartSize() {
		int fullQuantity = 0;
		for (ShoppingCartLine shoppingCartLine : shoppingCart) {
			fullQuantity += shoppingCartLine.getQuantity();
		}
		return fullQuantity;
	}
	
	public void goPrevious() {
		if ( --currentPosition < 1 ) {
			currentPosition = articleCount;
		}
		currentArticle = ArticleDAO.getArticleById( currentPosition );
	}
	
	public void goNext() {
		if ( ++currentPosition > articleCount ) {
			currentPosition = 1;
		}
		currentArticle = ArticleDAO.getArticleById( currentPosition );
	}
	
	public void addCurrentArticle() {
		for (ShoppingCartLine shoppingCartLine : shoppingCart) {
			if ( shoppingCartLine.getArticle().getIdArticle() == currentArticle.getIdArticle() ) {
				shoppingCartLine.increaseQuantity();
				return;
			}
		}
		shoppingCart.add( new ShoppingCartLine( currentArticle, 1 ) );
	}
	
}
