/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package form;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

import connect.Connect;
import dao.CT_HDBanHang_Dao;
import dao.HoaDonBH_Dao;
import dao.NhanVien_Dao;
import entity.DanhMucSP;
import entity.HDBanHang;
import entity.KichCo;
import entity.MauSac;
import entity.NhaSX;
import entity.NhanVien;
import java.sql.Connection;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Hashtable;
import javax.swing.JRadioButton;
import javax.swing.JTable;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Hoàng Huy
 */
public class FormThongKeDT extends javax.swing.JPanel implements ActionListener, MouseListener {

    /**
     * Creates new form FormThongKeDT
     */
    private DefaultTableModel dataModelHDBH;
    private HoaDonBH_Dao hdbh_dao;
    private NhanVien_Dao nv_dao;

    private ArrayList<HDBanHang> ListHDBH;
    DecimalFormat df = new DecimalFormat("#,##0 VND");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

    public FormThongKeDT() {

        try {
            Connect.getInstance().connect();
        } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
        }

        initComponents();
        table.fixTable(jScrollPane);
        table.addMouseListener(this);
        hdbh_dao = new HoaDonBH_Dao();
        nv_dao = new NhanVien_Dao();
        updateTable();

    }

    private void updateTable() {
        ListHDBH = hdbh_dao.getAllHDBH();
        dataModelHDBH = (DefaultTableModel) table.getModel();
        for (HDBanHang hdbh : ListHDBH) {
            dataModelHDBH.addRow(new Object[]{hdbh.getMaHDBH(), hdbh.getNhanVien().getTenNV(), hdbh.getKhachHang().getTenKH(), sdf.format(hdbh.getNgayLapHDBH()), df.format(hdbh.getTongTien())});
        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jScrollPane = new javax.swing.JScrollPane();
        table = new swing.Table();
        jLabel2 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel11 = new javax.swing.JLabel();
        btnTim = new swing.Button();
        jLabel15 = new javax.swing.JLabel();
        cbbThang = new swing.Combobox();
        cbbNgay = new swing.Combobox();
        jLabel12 = new javax.swing.JLabel();
        cbbNam = new swing.Combobox();
        jLabel16 = new javax.swing.JLabel();
        lblTongTien = new javax.swing.JLabel();
        btnCT = new swing.Button();
        RbtnNgay = new javax.swing.JRadioButton();
        RbtnThang = new javax.swing.JRadioButton();
        rbtnNam = new javax.swing.JRadioButton();

        setBackground(new java.awt.Color(204, 204, 255));

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("THỐNG KÊ DOANH THU");

        table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Mã Hóa Đơn", "Nhân Viên", "Khách Hàng", "Ngày Lập Hóa Đơn", "Tổng Tiền"
            }
        ));
        table.setShowGrid(true);
        table.setShowVerticalLines(false);
        jScrollPane.setViewportView(table);

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel2.setText("Danh Sách Hóa Đơn Bán Hàng");

        jPanel1.setBackground(new java.awt.Color(204, 204, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(0, 153, 153), null), "Thống Kê", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel11.setText("Tháng:");

        btnTim.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/loupe.png"))); // NOI18N
        btnTim.setText("Thống Kê");
        btnTim.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTimActionPerformed(evt);
            }
        });

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel15.setText("Ngày:");

        cbbThang.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Tất Cả", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12" }));

        cbbNgay.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Tất cả", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", " " }));
        cbbNgay.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbbNgayActionPerformed(evt);
            }
        });

        jLabel12.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel12.setText("Năm:");

        cbbNam.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Tất Cả", "2021", "2022" }));

        jLabel16.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel16.setText("Doanh Thu:");

        lblTongTien.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblTongTien.setForeground(java.awt.Color.red);
        lblTongTien.setText(" 0 VND");

        btnCT.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/file.png"))); // NOI18N
        btnCT.setText("Xem Chi Tiết Hóa Đơn");
        btnCT.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnCT.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCTActionPerformed(evt);
            }
        });

        RbtnNgay.setText("Thống Kê Theo Ngày");

        RbtnThang.setText("Thống Kê Theo Tháng");

        rbtnNam.setText("Thống Kê Theo Năm");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(169, 169, 169)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel15)
                        .addGap(18, 18, 18)
                        .addComponent(cbbNgay, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(RbtnNgay))
                .addGap(60, 60, 60)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel11)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(cbbThang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(RbtnThang))
                        .addGap(55, 55, 55)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel12)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(cbbNam, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(rbtnNam)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(lblTongTien, javax.swing.GroupLayout.PREFERRED_SIZE, 162, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(43, 43, 43)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnTim, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnCT, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cbbNgay, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbbThang, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbbNam, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnTim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(RbtnNgay)
                    .addComponent(RbtnThang)
                    .addComponent(rbtnNam))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnCT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 62, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblTongTien, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(38, 38, 38))))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 1262, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane, javax.swing.GroupLayout.PREFERRED_SIZE, 385, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnTimActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimActionPerformed
        String ngay = cbbNgay.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbNgay.getSelectedItem().toString().trim();
        String thang = cbbThang.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbThang.getSelectedItem().toString().trim();
        String nam = cbbNam.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbNam.getSelectedItem().toString().trim();

        if (RbtnNgay.isSelected()) {
            if (BatLoiNgay()) {
                xoaModel(table);
                ArrayList<HDBanHang> Lis = new ArrayList<HDBanHang>();
                lblTongTien.setText(df.format(hdbh_dao.getTKDTNgay(ngay, thang, nam)));
                Lis = hdbh_dao.TKDTNNgay(ngay, thang, nam);
                if (Lis.size() > 0) {
                    for (HDBanHang hdbh : Lis) {
                        dataModelHDBH.addRow(new Object[]{hdbh.getMaHDBH(), hdbh.getNhanVien().getTenNV(), hdbh.getKhachHang().getTenKH(), sdf.format(hdbh.getNgayLapHDBH()), df.format(hdbh.getTongTien())});
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "Không Có Dữ Liệu Phù Hợp");
                    xoaModel(table);
                    updateTable();
                }

            }
        } else if (RbtnThang.isSelected()) {
            if (BatLoiThang()) {
                xoaModel(table);
                ArrayList<HDBanHang> Lis = new ArrayList<HDBanHang>();
                lblTongTien.setText(df.format(hdbh_dao.getTKDTThang(thang, nam)));
                Lis = hdbh_dao.TKDTNThang(thang, nam);
                if (Lis.size() > 0) {
                    for (HDBanHang hdbh : Lis) {
                        dataModelHDBH.addRow(new Object[]{hdbh.getMaHDBH(), hdbh.getNhanVien().getTenNV(), hdbh.getKhachHang().getTenKH(), sdf.format(hdbh.getNgayLapHDBH()), df.format(hdbh.getTongTien())});
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "Không Có Dữ Liệu Phù Hợp");
                    xoaModel(table);
                    updateTable();
                }
            }
        } else if (rbtnNam.isSelected()) {
            if (BatLoiNam()) {
                xoaModel(table);
                ArrayList<HDBanHang> Lis = new ArrayList<HDBanHang>();
                lblTongTien.setText(df.format(hdbh_dao.getTKDTNam(nam)));
                Lis = hdbh_dao.TKDTNam(nam);

                if (Lis.size() > 0) {

                    for (HDBanHang hdbh : Lis) {
                        dataModelHDBH.addRow(new Object[]{hdbh.getMaHDBH(), hdbh.getNhanVien().getTenNV(), hdbh.getKhachHang().getTenKH(), sdf.format(hdbh.getNgayLapHDBH()), df.format(hdbh.getTongTien())});
                    }
                } else {
                    JOptionPane.showMessageDialog(null, "Không Có Dữ Liệu Phù Hợp");
                    xoaModel(table);
                    updateTable();
                }
            }
        }

//    
    }//GEN-LAST:event_btnTimActionPerformed
    public void xoaModel(JTable table) {
        DefaultTableModel del = (DefaultTableModel) table.getModel();
        del.getDataVector().removeAllElements();
    }
    private void btnCTActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCTActionPerformed
        int r = table.getSelectedRow();
        String ma = dataModelHDBH.getValueAt(r, 0).toString();
        System.out.println(ma);
        printBill(ma, "src\\main\\java\\report\\reportHDBH.jrxml");
    }//GEN-LAST:event_btnCTActionPerformed
    private boolean BatLoiNam() {
        String nam = cbbNam.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbNam.getSelectedItem().toString().trim();
        if (!(nam.length() > 0)) {
            JOptionPane.showMessageDialog(null, "Bạn Chưa Chọn Năm");
            return false;
        }
        return true;

    }

    private boolean BatLoiThang() {
        String thang = cbbThang.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbThang.getSelectedItem().toString().trim();
        String nam = cbbNam.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbNam.getSelectedItem().toString().trim();
        if (!(thang.length() > 0)) {
            JOptionPane.showMessageDialog(null, "Bạn Chưa Chọn Tháng");
            return false;
        }
        if (!(nam.length() > 0)) {
            JOptionPane.showMessageDialog(null, "Bạn Chưa Chọn Năm");
            return false;
        }

        return true;

    }

    private boolean BatLoiNgay() {
        String ngay = cbbNgay.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbNgay.getSelectedItem().toString().trim();
        String thang = cbbThang.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbThang.getSelectedItem().toString().trim();
        String nam = cbbNam.getSelectedItem().toString().trim().equalsIgnoreCase("Tất Cả") ? "" : cbbNam.getSelectedItem().toString().trim();
        if (!(ngay.length() > 0)) {
            JOptionPane.showMessageDialog(null, "Bạn Chưa Chọn Ngày");
            return false;
        }
        if (!(thang.length() > 0)) {
            JOptionPane.showMessageDialog(null, "Bạn Chưa Chọn Tháng");
            return false;
        }
        if (!(nam.length() > 0)) {
            JOptionPane.showMessageDialog(null, "Bạn Chưa Chọn Năm");
            return false;
        }

        return true;

    }
    private void cbbNgayActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbbNgayActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cbbNgayActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton RbtnNgay;
    private javax.swing.JRadioButton RbtnThang;
    private swing.Button btnCT;
    private swing.Button btnTim;
    private swing.Combobox cbbNam;
    private swing.Combobox cbbNgay;
    private swing.Combobox cbbThang;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane;
    private javax.swing.JLabel lblTongTien;
    private javax.swing.JRadioButton rbtnNam;
    private swing.Table table;
    // End of variables declaration//GEN-END:variables
public void printBill(String data, String source) {
        try {
            Connect.getInstance();
            Connection con = Connect.getConnection();
            Hashtable map = new Hashtable();
            JasperReport report = JasperCompileManager.compileReport(source);
            map.put("maHDBH", data);
            JasperPrint p = JasperFillManager.fillReport(report, map, con);
            JasperViewer.viewReport(p, false);
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mousePressed(MouseEvent e) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mouseReleased(MouseEvent e) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mouseEntered(MouseEvent e) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mouseExited(MouseEvent e) {
        // TODO Auto-generated method stub

    }

    @Override
    public void actionPerformed(ActionEvent e) {
        // TODO Auto-generated method stub

    }

    private void ìf(boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}