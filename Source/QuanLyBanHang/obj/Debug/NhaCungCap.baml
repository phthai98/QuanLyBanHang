   M S B A M L   `   `   `  ����  QuanLyBanHang    QuanLyBanHang.NhaCungCap   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��500��5      $	��700��6'   
�������  � 
ResizeMode$  NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � WindowStyle$
 None=�6�   $��Regular"�5	      $��13(�5
      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5        NhaCungCapVM � DataContext# [ 5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��1��6    5      �� 5      $��80 �6    6.   �� 5      $
��auto �6    60   �� 5      6"   .+�5      #  MaterialDesignThemes.Wpf.Card  $��0��6"   $��4q�6/   $��Center=�6:   $��Stretch=�6U   .��5      � $��0 0 0 10q�6   .+�5       �� $��5 5 15 5q�63   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Tên nhà cung cấp��6E    % !MaterialDesignFloatingHintTextBox#��[ 6y   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *Ten+6�   �� 5!      $��5 5 15 5q�66   $ Địa chỉ��6H   #��[ 6s   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *DiaChi+6�   �� 5"      $��5 5 15 5q�69   $ Điện thoại��6K   #��[ 6y   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *	DienThoai+6�   �� 5#      $��5 5 15 5q�65   $ Email��6G   #��[ 6n   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *Email+6�   �� 5$      $��5 5 15 5q�68   $ Thông tin thêm��6J   #��[ 6z   $��Champagne & Limousines)�6�   $��13(�6�   
���   ���6   �� *
ThongTin+6�   (  "System.Windows.Controls.DatePicker  5%      $��Center=�6!   $	��100��6`   $��	5 5 15 -7q�6l   $ Ngày hợp tác��6    ( $MaterialDesignFloatingHintDatePicker#��[ 6�   $��Champagne & Limousines)�6�   $��13(�6  
���   �   SelectedDate 6<   �� *
NgayHopTac+6$  5&      5'        5)      $��1��6"   $��5q�6/   .��5*      � .+�5+      �� $��Thêm��6<   $��5q�6K   $	��100��6V   ��6   �� *
AddCommand+6d   �� 5,      $��Sửa��6=   $��5q�6L   $	��100��6W   ��6   �� *EditCommand+6e   �� 5-      $��Xóa��6?   $��5q�6N   $	��100��6Y   ��6   �� *DeleteCommand+6g   5.      5/        51      $��2��6"   $��5q�6/   $��Stretch=�6:   .��52      �� $
��Auto=�6   .��53      �� ��6   �� *List+	 �� SelectedItem	 6<   �� *SelectedItem+
 �� Mode$
 OneWayToSource=� �� View 54      �� 55      .P�56   "   �� $��Tên nhà cung cấp��61    �� DisplayMemberBinding 6M   �� *Ten+6t   �� 57   "   $��Địa chỉ��61    6D   �� *DiaChi+6n   �� 58   "   $��Điện thoại��61    6G   �� *	DienThoai+6t   �� 59   "   $��Email��61    6@   �� *Email+6i   �� 5:   "   $��Thông tin thêm��61    6I   �� *
ThongTin+6u   �� 5;   "   $��Ngày hợp tác��61    6J   �� *
NgayHopTac+ �� StringFormat$ 
dd/MM/yyyy��6�   5<      5>      5?      5@      5A      � 5C   
   -   5         �Name$ GridIconBar��5C      $��2��6$   ��5D      �� 5E       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5F      �  � Color$ 	#FF263A97��6#    � Offset$ 1Q�65   � 5G      $ 	#FF3D4FBB��6#   5H      .+�5K      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $
��10,0q�6N   .+�5L      �� -   5         ��Name$ ButtonMinimize��5L       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 61   $��25��6w   $��25��6�   
��� ���
�������$	��4.0q�6�   ��6�   Z� .��5M      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5N      �� 5O      -   5        $ ButtonMaximize��5O      #��[ 61   $��25��6w   $��25��6�   
����  �
�������$	��4.0q�6�   ��6�   Z� .��5P        $ WindowMaximize=�6.   5Q      �� 5R      -   5        $ ButtonClose��5R      #��[ 6.   $��25��6t   $��25��6   
���  ��
�������$	��4.0q�6�   ��6�   Z� .��5S        $ Close=�6.   5T      5U      �� 5W      $ 
Horizontal=�6   $
��Left=�62   $
��10,0q�6M   .+�5X      �� $��Center=�6   $��Center=�69    % !MaterialDesignSubheadingTextBlock#��[ 5Y       �� TextAlignment$ Center=�6J   $��Nhà Cung Cấp��6a   5Z      5[      5\      5]      