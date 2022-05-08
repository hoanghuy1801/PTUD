/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app;

import connect.Connect;
import dao.*;
import dao.TaiKhoan_Dao;
import entity.*;
import entity.TaiKhoan;
import java.sql.SQLException;

/**
 *
 * @author PhamDuy
 */
public class App {

    public static void main(String[] args) {

        try {
            Connect.getInstance().connect();
        } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        NhanVien_Dao nv_dao = new NhanVien_Dao();
        TaiKhoan_Dao tk_dao = new TaiKhoan_Dao();
        TaiKhoan tk = null;
        NhanVien nv = null;
        nv = nv_dao.getNV("NV001");
//        tk = tk_dao.getTKDN("phamlekhanhduy", "19432121");

        HoaDonBH_Dao hd_dao = new HoaDonBH_Dao();
        hd_dao.getHDTheoSDT("0964505517").forEach(e -> {System.out.println(e);});

    }
}
