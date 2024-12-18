﻿using System;
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
using WpfApp2.Pages;

namespace WpfApp2
{
    /// <summary>
    /// Логика взаимодействия для Page1.xaml
    /// </summary>
    public partial class Page1 : Page
    {
        static MainWindow _mainwindow;
        public Page1(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainwindow = mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
           _mainwindow.MainFrame.Navigate(new Page2(_mainwindow));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page3(_mainwindow));
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page4(_mainwindow));

        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page5(_mainwindow));
        }
    }
}
