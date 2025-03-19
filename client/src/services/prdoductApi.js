import { setProductList, setProduct, setImgList, setDetailImgList, setSize } from '../features/product/productSlice.js'
import { axiosPost, axiosPut, axiosDelete, axiosGet } from "./api";

/*********************************
 * 상품 전체 리스트
*********************************/
export const getProductList = () => async (dispatch) => {
    const url = 'http://localhost:9000/product/all'
    const data = null;
    const result = await axiosGet({ data, url });
    dispatch(setProductList({ result }));
}
/*********************************
 * 상품 상세
*********************************/
export const getProduct = (pid) => async (dispatch) => {
    const url = "http://localhost:9000/product/detail";
    const data = { "pid": pid }

    const result = await axiosPost({ data, url })
    const product = result;
    const imgList = result.imgList;
    const detailImgList = result.detailImgList
    
    dispatch(setProduct({product}));
    dispatch(setImgList({imgList}));
    dispatch(setDetailImgList({detailImgList}));
};

/*********************************
 * 상품 사이즈 변경
 **********************************/
export const getSize =(size)=> (dispatch)=> {
    dispatch(setSize({size}))
}