   M S B A M L   `   `   `  ����  QuanLyBanHang    QuanLyBanHang.NguoiDung   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��500��5      $	��700��6'   
�������  � 
ResizeMode$  NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � WindowStyle$
 None=�6�   $��Regular"�5      $��13(�5	      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5
         TextRenderingMode$
 Auto=�5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5        NguoiDungVM � DataContext# [ 5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��1��6    5      �� 5      $��80 �6    6.   �� 5      $
��auto �6    60   �� 5      6"   .+�5      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��4q�6/   $��Center=�6:   $��Stretch=�6U   .��5      � $��0 0 0 10q�6   .+�5      �� $��5 5 15 5q�6X   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên hiển thị��6j    % !MaterialDesignFloatingHintTextBox#��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *Ten+ �� UpdateSourceTrigger$ PropertyChanged=�6  �� 5       $��5 5 15 5q�6]   $ Tên đăng nhập��6o   #��[ 6�   $��Champagne & Limousines)�6�   $��13(�6  
���   ���6   �� *
TaiKhoan+$ PropertyChanged=�6  �� 5!      $��5 5 15 5q�6\   $ Mật Khẩu��6n   #��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *	MatKhau+$ PropertyChanged=�6	  �� 5"      -   5        $��5 5 15 5q�5"      	 �� DisplayMemberPath$		 Ten��61   $ Quyền��6�   
 �� 
IsEditable
 .  & "MaterialDesignFloatingHintComboBox#��[ 6�   $��Champagne & Limousines)�66  $��13(�6^  
���   ���6I   �� *Quyen+ �� SelectedItem 6g   �� *SelectedQuyen+ �� Mode$ TwoWay=�$ PropertyChanged=�6�  5#      5$        5&      $��1��6"   $��5q�6/   .��5'      � .+�5(      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5)      $��Sửa��6=   $��5q�6L   $	��100��6W   ��6   �� *EditCommand+6e   �� 5*      $��Xóa��6?   $��5q�6N   $	��100��6Y   ��6   �� *DeleteCommand+6g   5+      5,        5.      $��2��6"   $��5q�6/   $��Stretch=�6:   .��5/      �� $
��Auto=�6   .��50      �� ��6   �� *List+ 6<   �� *SelectedItem+$ OneWayToSource=� �� View 51      �� 52      .P�53   "   �� $��Tên hiển thị��61    �� DisplayMemberBinding 6I   �� *Ten+6p   �� 54   "   $��Tên đăng nhập��61    6I   �� *
TaiKhoan+6u   �� 55   "   $��Mật Khẩu��61    6C   �� *	MatKhau+6n   �� 56   "   $��Chức vụ��61    6D   �� *QuyenNguoiDung1.Ten+6{   57      59      5:      5;      5<      � 5>   
   -   5         �Name$ GridIconBar��5>      $��2��6$   ��5?      �� 5@       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5A      �  � Color$ 	#FF263A97��6#    � Offset$ 1Q�65   � 5B      $ 	#FF3D4FBB��6#   5C      .+�5F      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $
��10,0q�6N   .+�5G      �� -   5         ��Name$ ButtonMinimize��5G       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 61   $��25��6w   $��25��6�   
��� ���
�������$	��4.0q�6�   ��6�   Z� .��5H      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5I      �� 5J      -   5        $ ButtonMaximize��5J      #��[ 61   $��25��6w   $��25��6�   
����  �
�������$	��4.0q�6�   ��6�   Z� .��5K        $ WindowMaximize=�6.   5L      �� 5M      -   5        $ ButtonClose��5M      #��[ 6.   $��25��6t   $��25��6   
���  ��
�������$	��4.0q�6�   ��6�   Z� .��5N        $ Close=�6.   5O      5P      �� 5R      $ 
Horizontal=�6   $
��Left=�62   $
��10,0q�6M   .+�5S      �� $��Center=�6   $��Center=�69    % !MaterialDesignSubheadingTextBlock#��[ 5T       �� TextAlignment$ Center=�6J   $��Người Dùng��6a   5U      5V      5W      5X      