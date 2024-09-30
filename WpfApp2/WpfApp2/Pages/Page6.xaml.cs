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
    /// Логика взаимодействия для Page6.xaml
    /// </summary>
    public partial class Page6 : Page
    {
        static MainWindow _mainWindow;
        public Page6(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string vidKaktus = KVid.Text;
            string prois = KProis.Text;
            string vozr = KVoz.Text;
            string stoim = KStoim.Text;
            string inst = KInstr.Text;


            var kaktus = Class1.dbo.Kaktus.FirstOrDefault(vid => vid.Vid == vidKaktus);


            if (KVid == null ||  KProis == null || KVoz == null || KStoim == null || KInstr == null) 
            {
                MessageBox.Show("Вы не заполнили даннные!");
                return;
            }
            else if (kaktus != null)
            {
                MessageBox.Show("Кактус такого вида");
            }
            else
            {
                var tempKaktus = new Kaktus() { Vid = KVid.Text, Proishojdenie = KProis.Text, Vozrast = Convert.ToInt32(KVoz.Text), Stoimost = Convert.ToInt32(KStoim.Text), InstrukciaPoUhodu = KInstr.Text };
                Class1.dbo.Kaktus.Add(tempKaktus);
                Class1.dbo.SaveChanges();
                MessageBox.Show("Кактус сохранен!");
            }
        }
    }
}
