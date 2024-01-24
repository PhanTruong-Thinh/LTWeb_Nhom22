package vn.edu.hcmuaf.model;

import java.util.TreeMap;

public class Cart {

    TreeMap<String, Integer> list;

    public Cart(){
        this.list = new TreeMap<>();
    }

    public TreeMap<String, Integer> getList() {
        return list;
    }

    public void setList(TreeMap<String, Integer> list) {
        this.list = list;
    }

    /*
    thêm sản phẩm vào giỏ hàng
     */
    public void inserCart(String id, int number){
        boolean check = list.containsKey(id);
        if (check){
            list.put(id, list.get(id) + number);
        }else {
            list.put(id, number);
        }
    }

    /*
    xóa sản phẩm khỏi giỏ hàng
     */
    public void removeProduct(String id){

        if (list.containsKey(id)) list.remove(id);
    }

    /*
    cập nhật giỏ hàng
     */
    public void update(String id, int number){
        if (list.containsKey(id)){
            if (number >=0){
                list.put(id, number);
            }else {
                list.put(id, 0);
            }
        }
    }

    /*
    tinh gia san pham voi so luong dat mua
     */
//    public void total


}
