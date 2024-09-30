using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
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
    /// Логика взаимодействия для Page2.xaml
    /// </summary>
    public partial class Page2 : Page
    {
        static MainWindow _mainwindow;
        public Page2(MainWindow _mainWindow)
        {
            InitializeComponent();
            ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
            _mainwindow = _mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page6(_mainwindow));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (ListKaktus.SelectedItem != null)
            {
                Kaktus selectedCactus = ListKaktus.SelectedItem as Kaktus;
                Class1.dbo.Kaktus.Remove(selectedCactus);
                Class1.dbo.SaveChanges();
                ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
                return;
            }
            else
            {
                MessageBox.Show("Кактус не выбран");
            }
        }
        private void EditCactusBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ListKaktus.SelectedItem != null)
            {
                if (EditCB.SelectedItem is ComboBoxItem item)
                {
                    if (item.Content.ToString() == "Вид")
                    {
                        Kaktus selectedKaktus = ListKaktus.SelectedItem as Kaktus;
                        selectedKaktus.Vid = Changetxt.Text;
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
                    }
                    else if (item.Content.ToString() == "Стоимость")
                    {
                        Kaktus selectedKaktus = ListKaktus.SelectedItem as Kaktus;
                        selectedKaktus.Stoimost = Convert.ToInt32(Changetxt.Text);
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
                    }
                    else if (item.Content.ToString() == "Возраст")
                    {
                        Kaktus selectedKaktus = ListKaktus.SelectedItem as Kaktus;
                        selectedKaktus.Vozrast = Convert.ToInt32(Changetxt.Text);
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
                    }
                    else if (item.Content.ToString() == "Происхождение")
                    {
                        Kaktus selectedKaktus = ListKaktus.SelectedItem as Kaktus;
                        selectedKaktus.Proishojdenie = Changetxt.Text;
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
                    }
                    else if (item.Content.ToString() == "Инструкция")
                    {
                        Kaktus selectedKaktus = ListKaktus.SelectedItem as Kaktus;
                        selectedKaktus.InstrukciaPoUhodu = Changetxt.Text;
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKaktus.ItemsSource = Class1.dbo.Kaktus.ToList();
                    }
                }
                else { MessageBox.Show("Не выбрано что менять"); }
            }
            else
            {
                MessageBox.Show("Кактус не выбран");
            }
        }
    }
}
