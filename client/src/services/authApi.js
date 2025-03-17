import { setIsLoggedIn, setIsLogout } from "../features/auth/authSlice.js";
import { axiosPost } from "./api.js";

export const getLogout = () => (dispatch) => {
    // 데이터를 넘기는게 아니므로 비동기처리(async/await)는 생략!
    localStorage.removeItem("token");
    localStorage.removeItem("user_id");
    dispatch(setIsLogout());
}

export const getLogin = (formData) => async (dispatch) => {

    //리액트 ---> 노드서버(express) 데이터 전송 로그인
    const url = 'http://localhost:9000/member/login'
    const data = formData;
    
    const loginResult = await axiosPost({url, data})
    const result_rows = loginResult.result_rows;

    if (result_rows) {
        alert("로그인 성공!!");
        localStorage.setItem("token", loginResult.token);
        localStorage.setItem("user_id", formData.id);
        dispatch(setIsLoggedIn({ result_rows })); 
    }
    // await axiosPost
    //     .post(loginResult)
    //     .then(res => {
    //         // console.log('res.data-->', res.data) 
    //         if (res.data.result_rows === 1) {
    //             const result_rows = res.data.result_rows;
    //             alert("로그인 성공!!");
    //             localStorage.setItem("token", res.data.token);
    //             localStorage.setItem("user_id", formData.id);
    //             dispatch(setIsLoggedIn({ result_rows }));
    //             // auth Reducer(Slice)의 함수 호출 
    //             // res.data.result_rows를 넘겨야하지만 변수 형태로 넘겨야하기 때문에 const로 선언하여 넘긴다
    //             // navigate('/');
    //         } else {
    //             alert("로그인 실패!!");
    //         }
    //     })
    //     .catch(error => {
    //         alert("로그인 실패!!");
    //         console.log(error);
    //     });
}
// 단방향이라 리턴을 줄 수는 있지만 의미없다.