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
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp2.dbo;
using static System.Net.Mime.MediaTypeNames;

namespace WpfApp2.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page8.xaml
    /// </summary>
    public partial class Page8 : Page
    {
        static MainWindow _mainwindow;
        public Page8(MainWindow _mainWindow)
        {
            InitializeComponent();
            _mainwindow = _mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            int? idk = VKK.SelectedIndex;
            int? idv = VKV.SelectedIndex;
            string kol = VKkol.Text;

            var kaktus_Vistavka = Class1.dbo.Kaktus_Vistavka.FirstOrDefault(name => name.Id_kaktus_vistavka == idk);

            if (VKK.Text.Length == 0 || VKV.Text.Length == 0 || VKkol.Text.Length == 0)
            {
                MessageBox.Show("Вы не заполнили даннные!");
                return;
            }
            else
            {
                var tempkaktus_Vistavka = new Kaktus_Vistavka() { Id_kaktus = VKK.SelectedIndex, Id_vistavka = VKV.SelectedIndex, kolichestvo = Convert.ToInt32(VKkol.Text) };
                Class1.dbo.Kaktus_Vistavka.Add(kaktus_Vistavka);
                Class1.dbo.SaveChanges();
                MessageBox.Show("Информация сохранена!");
            }
        }

        private void Button_Click1(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
