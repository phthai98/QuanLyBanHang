﻿#pragma checksum "..\..\BDTonKho.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "800423984B01546C7C786FD1325DA6F82BA09F4B"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.DataVisualization.Charting;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace QuanLyBanHang {
    
    
    /// <summary>
    /// BDTonKho
    /// </summary>
    public partial class BDTonKho : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 25 "..\..\BDTonKho.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataVisualization.Charting.Chart MyChart1;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\BDTonKho.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid GridIconBar;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\BDTonKho.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonMinimize;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\BDTonKho.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonMaximize;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\BDTonKho.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonClose;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/QuanLyBanHang;component/bdtonkho.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\BDTonKho.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 4 "..\..\BDTonKho.xaml"
            ((QuanLyBanHang.BDTonKho)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.MyChart1 = ((System.Windows.Controls.DataVisualization.Charting.Chart)(target));
            
            #line 25 "..\..\BDTonKho.xaml"
            this.MyChart1.Loaded += new System.Windows.RoutedEventHandler(this.Chart_Loaded1);
            
            #line default
            #line hidden
            return;
            case 3:
            this.GridIconBar = ((System.Windows.Controls.Grid)(target));
            
            #line 35 "..\..\BDTonKho.xaml"
            this.GridIconBar.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.GridIconBar_MouseDown);
            
            #line default
            #line hidden
            return;
            case 4:
            this.ButtonMinimize = ((System.Windows.Controls.Button)(target));
            
            #line 44 "..\..\BDTonKho.xaml"
            this.ButtonMinimize.Click += new System.Windows.RoutedEventHandler(this.ButtonMinimize_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.ButtonMaximize = ((System.Windows.Controls.Button)(target));
            
            #line 47 "..\..\BDTonKho.xaml"
            this.ButtonMaximize.Click += new System.Windows.RoutedEventHandler(this.ButtonMaximize_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.ButtonClose = ((System.Windows.Controls.Button)(target));
            
            #line 50 "..\..\BDTonKho.xaml"
            this.ButtonClose.Click += new System.Windows.RoutedEventHandler(this.ButtonClose_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

