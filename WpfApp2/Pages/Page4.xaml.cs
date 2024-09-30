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
    /// Логика взаимодействия для Page4.xaml
    /// </summary>
    public partial class Page4 : Page
    {
        static MainWindow _mainwindow;

        public Page4(MainWindow _mainWindow)
        {
            InitializeComponent();
            ListKV.ItemsSource = Class1.dbo.Kaktus_Vistavka.ToList();
            _mainwindow = _mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page8(_mainwindow));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (ListKV.SelectedItem != null)
            {
                Kaktus_Vistavka selectedkaktus_Vistavka = ListKV.SelectedItem as Kaktus_Vistavka;
                Class1.dbo.Kaktus_Vistavka.Remove(selectedkaktus_Vistavka);
                Class1.dbo.SaveChanges();
                ListKV.ItemsSource = Class1.dbo.Kaktus_Vistavka.ToList();
                return;
            }
            else
            {
                MessageBox.Show("Кактус_выставка не выбрана");
            }
        }
        private void EditCactusBtn_Click(object sender, RoutedEventArgs e)
        {
            if (ListKV.SelectedItem != null)
            {
                if (EditCB.SelectedItem is ComboBoxItem item)
                {
                    if (item.Content.ToString() == "Кактус")
                    {
                        Kaktus_Vistavka selectedKV = ListKV.SelectedItem as Kaktus_Vistavka;
                        selectedKV.Id_kaktus = Convert.ToInt32(Changetxt.Text);
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKV.ItemsSource = Class1.dbo.Kaktus_Vistavka.ToList();
                    }
                    else if (item.Content.ToString() == "Выставка")
                    {
                        Kaktus_Vistavka selectedKV = ListKV.SelectedItem as Kaktus_Vistavka;
                        selectedKV.Id_vistavka = Convert.ToInt32(Changetxt.Text);
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKV.ItemsSource = Class1.dbo.Kaktus_Vistavka.ToList();
                    }
                    else if (item.Content.ToString() == "Количество кактусов")
                    {
                        Kaktus_Vistavka selectedKV = ListKV.SelectedItem as Kaktus_Vistavka;
                        selectedKV.kolichestvo = Convert.ToInt32(Changetxt.Text);
                        EditCB.SelectedValue = null;
                        Changetxt.Text = null;
                        Class1.dbo.SaveChanges();
                        ListKV.ItemsSource = Class1.dbo.Kaktus_Vistavka.ToList();
                    }
                }
                else { MessageBox.Show("Не выбрано что менять"); }
            }
            else
            {
                MessageBox.Show("Ничего не выбрано");
            }
        }
    }
}
