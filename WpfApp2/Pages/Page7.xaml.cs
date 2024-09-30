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

namespace WpfApp2.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page7.xaml
    /// </summary>
    public partial class Page7 : Page
    {
        static MainWindow _mainWindow;
        public Page7(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string NameVist = VName.Text;
            string Data = VData.Text;
            string Mesto = VMesto.Text;



            var Vistavka = Class1.dbo.Vistavka.FirstOrDefault(name => name.Name == NameVist);


            if (VName.Text.Length == 0 || VData.Text.Length == 0 || VMesto.Text.Length == 0)
            {
                MessageBox.Show("Вы не заполнили даннные!");
                return;
            }
            else if (Vistavka != null)
            {
                MessageBox.Show("Выставка с таким названием уже есть");
            }
            else
            {
                var tempVistavka = new Vistavka() { Name = VName.Text, Data = VData.Text, Mesto = VMesto.Text };
                Class1.dbo.Vistavka.Add(tempVistavka);
                Class1.dbo.SaveChanges();
                MessageBox.Show("Выставка сохранена!");
            }
        }
    }
}
