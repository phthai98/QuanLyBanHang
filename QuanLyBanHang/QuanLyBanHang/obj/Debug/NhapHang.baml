   M S B A M L   `   `   `  ����  QuanLyBanHang    QuanLyBanHang.NhapHang   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��500��5	      $	��700��6'   
�������  � 
ResizeMode$  NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � WindowStyle$
 None=�6�   $��Regular"�5
      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5        
NhapHangVM � DataContext# [ 5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��1��6    5      �� 5      $��80 �6    6.   �� 5      $
��auto �6    60   �� 5      6"   .+�5      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��4q�6/   $��Center=�6:   $��Stretch=�6U   .��5       � $��0 0 0 10q�6   .+�5!      �� -   5        $��5 5 15 5q�5!       �� DisplayMemberPath$	 Ten��61   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Sản phẩm��6�   	 �� 
IsEditable	 .  & "MaterialDesignFloatingHintComboBox#��[ 6   $��Champagne & Limousines)�6<  $��13(�6d  
���   ���6I   �� *	SanPham+
 �� SelectedItem
 6i   �� *SelectedSanPham+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�  (  "System.Windows.Controls.DatePicker  5"      $��Center=�6!   $	��100��6_   $��	5 5 15 -7q�6k   $ Ngày nhập��6~    ( $MaterialDesignFloatingHintDatePicker#��[ 6�   $��13(�6�   
���   �   SelectedDate 6<   �� *
NgayNhap+6�   �� 5#      $��5 5 15 5q�6\   $ Số lượng��6n    % !MaterialDesignFloatingHintTextBox#��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *	SoLuong+$ PropertyChanged=�6  �� 5$      $��5 5 15 5q�6\   $ Giá nhập��6n   #��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *	GiaNhap+$ PropertyChanged=�6  �� 5%      $��5 5 15 5q�6\   $ Giá xuất��6n   #��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *	GiaXuat+$ PropertyChanged=�6  5(      5)        5+      $��1��6"   $��5q�6/   .��5,      � .+�5-      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5.      $��Sửa��6=   $��5q�6L   $	��100��6W   ��6   �� *EditCommand+6e   �� 5/      $��Xóa��6?   $��5q�6N   $	��100��6Y   ��6   �� *DeleteCommand+6g   50      51        53      $��2��6"   $��5q�6/   $��Stretch=�6:   .��54      �� $
��Auto=�6   .��55      �� ��6   �� *List+
 6<   �� *SelectedItem+$ OneWayToSource=� �� View 56      �� 57      .P�58   "   �� $��Tên mặt hàng��61    �� DisplayMemberBinding 6G   �� *SanPham.Ten+6v   �� 59   "   $��Ngày nhập��61    6F   �� *
NgayNhap+ �� StringFormat$ 
dd/MM/yyyy��6�   �� 5:   "   $��Số lượng��61    6E   �� *	SoLuong+6p   �� 5;   "   $��Giá nhập��61    6E   �� *	GiaNhap+6p   �� 5<   "   $��Giá xuất��61    6E   �� *	GiaXuat+6p   5=      5?      5@      5A      5B      � 5D   
   -   5         �Name$ GridIconBar��5D      $��2��6$   ��5E      �� 5F       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5G      �  � Color$ 	#FF263A97��6#    � Offset$ 1Q�65   � 5H      $ 	#FF3D4FBB��6#   5I      .+�5L      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $
��10,0q�6N   .+�5M      �� -   5         ��Name$ ButtonMinimize��5M       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 61   $��25��6w   $��25��6�   
��� ���
�������$	��4.0q�6�   ��6�   Z� .��5N      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5O      �� 5P      -   5        $ ButtonMaximize��5P      #��[ 61   $��25��6w   $��25��6�   
����  �
�������$	��4.0q�6�   ��6�   Z� .��5Q        $ WindowMaximize=�6.   5R      �� 5S      -   5        $ ButtonClose��5S      #��[ 6.   $��25��6t   $��25��6   
���  ��
�������$	��4.0q�6�   ��6�   Z� .��5T        $ Close=�6.   5U      5V      �� 5X      $ 
Horizontal=�6   $
��Left=�62   $
��10,0q�6M   .+�5Y      �� $��Center=�6   $��Center=�69    % !MaterialDesignSubheadingTextBlock#��[ 5Z       �� TextAlignment$ Center=�6J   $��Nhập Hàng��6a   5[      5\      5]      5^      