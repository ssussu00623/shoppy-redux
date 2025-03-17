import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    isLoggedIn: false,
}

export const authSlice = createSlice({
    name: 'login',
    initialState,
    reducers: {
        // 로그인 성공 처리
        setIsLoggedIn(state, action) {
            console.log('action::', action.payload.result_rows);
            if (action.payload.result_rows) {
                state.isLoggedIn = true;
            }
        },
        // 로그아웃 처리
        setIsLogout(state) {
            state.isLoggedIn = false;
        }
    }
})

export const { setIsLoggedIn, setIsLogout } = authSlice.actions 
export default authSlice.reducer
