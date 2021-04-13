package com.itbank.cart;

import java.util.List;

public interface CartDAO {

	List<CartDTO> selectCartList(int cartidx);
	List<CartDTO> selectCartList();

}
