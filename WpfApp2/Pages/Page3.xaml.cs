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
    /// Логика взаимодействия для Page3.xaml
    /// </summary>
    public partial class Page3 : Page
    {
        static MainWindow _mainwindow;
        public Page3(MainWindow _mainWindow)
        {
            InitializeComponent();
            ListVistavka.ItemsSource = Class1.dbo.Vistavka.ToList();
            _mainwindow = _mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page7(_mainwindow));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (ListVistavka.SelectedItem != null)
            {
                Vistavka selectedVistavka = ListVistavka.SelectedItem as Vistavka;
                Class1.dbo.Vistavka.Remove(selectedVistavka);
                Class1.dbo.SaveChanges();
                ListVistavka.ItemsSource = Class1.dbo.Vistavka.ToList();
                return;
            }
            else
            {
                MessageBox.Show("Выставка не выбрана");
            }
        }
        private void EditCactusBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ListVistavka.SelectedItem != null)
            {
                if (EditCB.SelectedItem is ComboBoxItem item)
                {
                    if (item.Content.ToString() == "Название")
                    {
                        Vistavka selectedVistavka = ListVistavka.SelectedItem as Vistavka;
                        selectedVistavka.Name = Changetxt.Text;
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListVistavka.ItemsSource = Class1.dbo.Vistavka.ToList();
                    }
                    else if (item.Content.ToString() == "Дата")
                    {
                        Vistavka selectedVistavka = ListVistavka.SelectedItem as Vistavka;
                        selectedVistavka.Data = Changetxt.Text;
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListVistavka.ItemsSource = Class1.dbo.Vistavka.ToList();
                    }
                    else if (item.Content.ToString() == "Место")
                    {
                        Vistavka selectedVistavka = ListVistavka.SelectedItem as Vistavka;
                        selectedVistavka.Mesto = Changetxt.Text;
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListVistavka.ItemsSource = Class1.dbo.Vistavka.ToList();
                    }
                }
                else { MessageBox.Show("Не выбрано что менять"); }
            }
            else
            {
                MessageBox.Show("Выставка не выбрана");
            }
        }
    }
}
