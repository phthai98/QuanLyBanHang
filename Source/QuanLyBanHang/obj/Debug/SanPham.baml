   M S B A M L   `   `   `  ����  QuanLyBanHang    QuanLyBanHang.SanPham   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��500��5      $	��700��6'   
�������  � 
ResizeMode$  NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � WindowStyle$
 None=�6�   $��Regular"�5      $��13(�5	      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5
         TextRenderingMode$
 Auto=�5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5        	SanPhamVM � DataContext# [ 5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��1��6    5      �� 5      $��80 �6    6.   �� 5      $
��auto �6    60   �� 5      6"   .+�5      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��4q�6/   $��Center=�6:   $��Stretch=�6U   .��5      � $��0 0 0 10q�6   .+�5      �� -   5        $��5 5 15 5q�5       �� DisplayMemberPath$	 Ten��61   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Nhà cung cấp��6�   	 �� 
IsEditable	 .  & "MaterialDesignFloatingHintComboBox#��[ 6
  $��Champagne & Limousines)�6F  $��13(�6n  
���   ���6I   �� *
NhaCungCap+
 �� SelectedItem
 6l   �� *SelectedNhaCungCap+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�  �� 5       $��5 5 15 5q�6X   $
 Tên��6j    % !MaterialDesignFloatingHintTextBox#��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *Ten+$ PropertyChanged=�6   �� 5!      $��5 5 15 5q�6`   $ Hãng sản xuất��6r   #��[ 6�   $��Champagne & Limousines)�6�   $��13(�6  
���   ���6   �� *HangSanXuat+$ PropertyChanged=�6  �� 5"      $��5 5 15 5q�6\   $ Hình ảnh��6n   #��[ 6�   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *	HinhAnh+$ PropertyChanged=�6	  �� 5#      $��5 5 15 5q�6   $ HinhAnh��61   $ Link hình có sẵn��6�   	 . #��[ 6	  $��Champagne & Limousines)�6E  $��13(�6m  
���   ���6M   �� *List+
 6j   �� *SelectedSanPham+$ TwoWay=�$ PropertyChanged=�6�  5$      5%        5'      $��1��6"   $��5q�6/   .��5(      � .+�5)      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5*      $��Sửa��6=   $��5q�6L   $	��100��6W   ��6   �� *EditCommand+6e   �� 5+      $��Xóa��6?   $��5q�6N   $	��100��6Y   ��6   �� *DeleteCommand+6g   5,      5-        5/      $��2��6"   $��5q�6/   $��Stretch=�6:   .��50      �� $
��Auto=�6   .��51      �� ��6   �� *List+
 6<   �� *SelectedItem+$ OneWayToSource=� �� View 52      �� 53      .P�54   "   �� $��Tên mặt hàng��61    �� DisplayMemberBinding 6G   �� *Ten+6n   �� 55   "   $��Hãng sản xuất��61    6H   �� *HangSanXuat+6w   �� 56   "   $��Nhà cung cấp��61    6G   �� *NhaCungCap.Ten+6y   �� 57   "   $��Hình ảnh��61    6C   �� *	HinhAnh+6n   58      5:      5;      5<      5=      � 5?   
   -   5         �Name$ GridIconBar��5?      $��2��6$   ��5@      �� 5A       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5B      �  � Color$ 	#FF263A97��6#    � Offset$ 1Q�65   � 5C      $ 	#FF3D4FBB��6#   5D      .+�5G      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $
��10,0q�6N   .+�5H      �� -   5         ��Name$ ButtonMinimize��5H       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 61   $��25��6w   $��25��6�   
��� ���
�������$	��4.0q�6�   ��6�   Z� .��5I      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5J      �� 5K      -   5        $ ButtonMaximize��5K      #��[ 61   $��25��6w   $��25��6�   
����  �
�������$	��4.0q�6�   ��6�   Z� .��5L        $ WindowMaximize=�6.   5M      �� 5N      -   5        $ ButtonClose��5N      #��[ 6.   $��25��6t   $��25��6   
���  ��
�������$	��4.0q�6�   ��6�   Z� .��5O        $ Close=�6.   5P      5Q      �� 5S      $ 
Horizontal=�6   $
��Left=�62   $
��10,0q�6M   .+�5T      �� $��Center=�6   $��Center=�69    % !MaterialDesignSubheadingTextBlock#��[ 5U       �� TextAlignment$ Center=�6J   $��Sản phẩm��6a   5V      5W      5X      5Y      