   M S B A M L   `   `   `  ����|  xSystem.Windows.Controls.DataVisualization.Toolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35�{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit2System.Windows.Controls.DataVisualization.Charting  5   	    QuanLyBanHang   QuanLyBanHang.BDTonKho   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35U QWPFToolkit, Version=3.5.40128.1, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   �DataV{clr-namespace:System.Windows.Controls.DataVisualization.Charting;assembly=System.Windows.Controls.DataVisualization.Toolkit     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5	   	   V RMaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   -   5        $	��500��5      $	��700��6'   
�������  � 
ResizeMode$  NoResize=�6F    � WindowStartupLocation$ CenterScreen=�6\    � WindowStyle$
 None=�6�   $��Regular"�5      $��13(�5      &   System.Windows.Media.TextOptions   TextFormattingMode$ Ideal=�5         TextRenderingMode$
 Auto=�5         MaterialDesignPaper#���   5        MaterialDesignFont#���  5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      6   .+�5   
   � $��1��6   .+�5      >   8System.Windows.Controls.DataVisualization.Charting.Chart  -   5          Name$ MyChart1��5      $
��auto��6,   $
��auto��69   
���   �   Series 5      E   ?System.Windows.Controls.DataVisualization.Charting.ColumnSeries  ?   9System.Windows.Controls.DataVisualization.Charting.Series   Title$ Số tồn kho��6)   $��12(�5   [   H   BSystem.Windows.Controls.DataVisualization.Charting.DataPointSeries	   IndependentValueBinding	 5   )   �� 
 �� Path$

 name�   DependentValueBinding 5   )   �� $
 
soLuongCon�5      5       5!      � 5#   
   -   5         �Name$ GridIconBar��5#      $��2��6$   ��5$      �� 5%       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��5&      �  � Color$ 	#FF263A97��6#    � Offset$ 1Q�65   � 5'      $ 	#FF3D4FBB��6#   5(      .+�5+      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   $
��10,0q�6N   .+�5,      �� -   5         ��Name$ ButtonMinimize��5,       0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 61   $��25��6w   $��25��6�   
��� ���
�������$	��4.0q�6�   ��6�   Z� .��5-      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.0.1205, Culture=neutral, PublicKeyToken=null]]   Kind$ WindowMinimize=�6.   5.      �� 5/      -   5        $ ButtonMaximize��5/      #��[ 61   $��25��6w   $��25��6�   
����  �
�������$	��4.0q�6�   ��6�   Z� .��50        $ WindowMaximize=�6.   51      �� 52      -   5        $ ButtonClose��52      #��[ 6.   $��25��6t   $��25��6   
���  ��
�������$	��4.0q�6�   ��6�   Z� .��53        $ Close=�6.   54      55      �� 57      $ 
Horizontal=�6   $
��Left=�62   $
��10,0q�6M   .+�58      �� $��Center=�6   $��Center=�69    % !MaterialDesignSubheadingTextBlock#��[ 59       �� TextAlignment$ Center=�6J   $"��Biểu đồ hàng tồn kho��6a   5:      5;      5<      5=      