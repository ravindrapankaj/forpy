! Copyright (C) 2017-2018  Elias Rabel
!
! This program is free software: you can redistribute it and/or modify
! it under the terms of the GNU Lesser General Public License as published by 
! the Free Software Foundation, either version 3 of the License, or 
! (at your option) any later version.
!
! This program is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of 
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU Lesser General Public License for more details.
!
! You should have received a copy of the GNU Lesser General Public License
! along with this program.  If not, see <http://www.gnu.org/licenses/>.

#ifdef __GFORTRAN__
#define TEST(X) call setN("X");call preT;call X;call postT
#else
#define TEST(X) call setN(#X);call preT;call X;call postT
#endif

program test_ndarray
use test_ndarray_mod
implicit none

call setUpClass
TEST(test_ndarray_expected)
TEST(test_ndarray_get_data_01)
TEST(test_check_ndarray_1d)
TEST(test_check_ndarray_2d)
TEST(test_compare_ndarray_2d_with_get_data)
TEST(test_check_ndarray_3d)
TEST(test_get_ndarray_2d)
TEST(test_get_ndarray_wrong_order)
TEST(test_get_ndarray_bad_dim)
TEST(test_get_ndarray_bad_type)
TEST(test_get_ndarray_discont)
TEST(test_get_ndarray_c_order)
TEST(test_bad_order_param)
TEST(test_order_1d_array)
TEST(test_check_transpose2d)
TEST(test_copy)
TEST(test_copy_order)
TEST(test_is_ordered_fortran)
TEST(test_is_ordered_c)
TEST(test_is_ordered_discont)
TEST(test_is_ordered_1d)
TEST(test_get_dtype_name)
TEST(test_ndim)
TEST(test_ndarray_create_empty01)
TEST(test_ndarray_create_empty02)
TEST(test_ndarray_create_empty03)
TEST(test_ndarray_create_zeros01)
TEST(test_ndarray_create_zeros02)
TEST(test_ndarray_create_zeros03)
TEST(test_ndarray_create_ones01)
TEST(test_ndarray_create_ones02)
TEST(test_ndarray_create_ones03)
TEST(test_dtype_int32)
TEST(test_dtype_int64)
TEST(test_dtype_float32)
TEST(test_dtype_float64)
TEST(test_dtype_complex64)
TEST(test_dtype_complex128)
call tearDownClass

end program
