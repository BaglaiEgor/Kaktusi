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

namespace WpfApp2.Pages
{
    /// <summary>
    /// Логика взаимодействия для Page5.xaml
    /// </summary>
    public partial class Page5 : Page
    {
        static MainWindow _mainwindow;
        public Page5(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainwindow = mainWindow;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page6(_mainwindow));
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page7());
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page8());
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            _mainwindow.MainFrame.Navigate(new Page1(_mainwindow));
        }
    }
}
