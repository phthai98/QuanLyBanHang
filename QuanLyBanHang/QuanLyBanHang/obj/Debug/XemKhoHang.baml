   M S B A M L   `   `   `  ����  QuanLyBanHang    QuanLyBanHang.XemKhoHang   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5        $	��500��5	      $	��700��6'   
�������  � 
ResizeMode$  NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � WindowStyle$
 None=�6�   $��Regular"�5
      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   #  MaterialDesignThemes.Wpf.Card  $��1��6   $��5q�6+   $��Stretch=�66   .��5      �  5      �� 5      $
��auto �6$   64   �� 5      $
��auto �6$   64   �� 5      6&   .+�5      � $��0��6   $��5q�6$    � ColumnDefinitions 5      �� 5       $
��auto �6+   6:   �� 5!      $
��auto �6+   6:   �� 5"      $
��auto �6+   6:   .+�5%      � $��0��6   .+�5&      �� -   5          MaterialDesignRaisedButton#��[ 5&   !   $��5q�6U   $
��auto��5'   -   $��Thống kê tồn kho��5(   -    � ToolTip$/ )Resource name: MaterialDesignRaisedButton��5)   -   6x   5*      � 5+      $��1��6   .+�5,      �� -   5        #��[ 5,   !   $��5q�6U   $
��auto��5-   -   $#��Thống kê hàng bán chạy��5.   -   $/ )Resource name: MaterialDesignRaisedButton��5/   -   6z   50      � 51      $��2��6   .+�52      �� -   5        #��[ 52   !   $��5q�6U   $
��auto��53   -   $��Thống kê doanh thu��54   -   $/ )Resource name: MaterialDesignRaisedButton��55   -   6z   56      57      � 59      $��1��6   .+�5:      �� 6"   5;      � 5<      $��2��6   .+�5=      �� -   5         ��Name$ MyItems��5=      	 �� View	 5>      �� 5?      .P�5@   "   �� $	��STT��61   
 �� DisplayMemberBinding
 6>   �� *STT+6e   �� 5A   "   $��Tên mặt hàng��61   
 6G   �� *sanPham.Ten+6v   �� 5B   "   $��Số lượng tồn��61   
 6J   �� *	soLuong+6u   �� 5C   "   $��Số đã bán��61   
 6D   �� *	soDaBan+6o   �� 5D   "   $��Hãng sản xuất��61   
 6H   �� *hangSanXuat+6w   �� 5E   "   $��Giá nhập��61   
 6C   �� *giaNhapTrungBinh+6w   �� 5F   "   $��	Giá bán��61   
 6B   �� *giaBanTrungBinh+6u   5G      5I      5J      5K      5L      � 5N   
   -   5         �Name$ GridIconBar��5N      $��2��6$   ��5O      �� 5P       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5Q      �  � Color$ 	#FF263A97��6#    � Offset$ 1Q�65   � 5R      $ 	#FF3D4FBB��6#   5S      .+�5V      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $
��10,0q�6N   .+�5W      �� -   5         ��Name$ ButtonMinimize��5W       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 61   $��25��6w   $��25��6�   
��� ���
�������$	��4.0q�6�   ��6�   Z� .��5X      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5Y      �� 5Z      -   5        $ ButtonMaximize��5Z      #��[ 61   $��25��6w   $��25��6�   
����  �
�������$	��4.0q�6�   ��6�   Z� .��5[        $ WindowMaximize=�6.   5\      �� 5]      -	   5        $ ButtonClose��5]      #��[ 6.   $��25��6t   $��25��6   
���  ��
�������$	��4.0q�6�   ��6�   Z� .��5^        $ Close=�6.   5_      5`      �� 5b      $ 
Horizontal=�6   $
��Left=�62   $
��10,0q�6M   .+�5c      �� $��Center=�6   $��Center=�69    % !MaterialDesignSubheadingTextBlock#��[ 5d       �� TextAlignment$ Center=�6J   $��	Kho Hàng��6a   5e      5f      5g      5h      