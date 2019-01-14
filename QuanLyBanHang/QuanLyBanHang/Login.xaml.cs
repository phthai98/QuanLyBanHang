using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace QuanLyBanHang
{
    /// <summary>
    /// Interaction logic for Login.xaml
    /// </summary>
    public partial class Login : Window
    {
        public string Username;
        public string Password;

        public static bool isAdmin = false;

        public Login()
        {
            InitializeComponent();

        }

        private void ButtonClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ToolBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void ButtonMinimize_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Normal)
            {
                WindowState = WindowState.Minimized;
            }
            else WindowState = WindowState.Normal;
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            Username = txtUser.Text;
            Password = txtPass.Password.ToString();

            var accCount = Model.DataProvider.Ins.DB.NguoiDungs.Where(x => x.TaiKhoan == Username && x.MatKhau == Password);

            if ("" == Username || "" == Password)
            {
                MessageBox.Show("Chưa nhập username hoặc password.", "Login");
            }
            else if (accCount.Count() > 0)
            {
                MessageBox.Show("Đăng nhập thành công.", "Login");

                //Lưu lại thông tin user
                int value = (int)accCount.First().QuyenNguoiDung;

                if (value == 1)
                {
                    isAdmin = true;
                }

                MainWindow main = new MainWindow();

                main.Show();

                this.Close();
            }
            else
            {
                MessageBox.Show("Thông tin đăng nhập chưa đúng.", "Login");
            }
        }
    }
}
