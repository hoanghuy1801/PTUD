package form;

import connect.Connect;
import dao.*;
import entity.*;
import gui.Main;
import static gui.Main.panelTransaction;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.*;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

public class FormNhanVien extends javax.swing.JPanel implements ActionListener, MouseListener {

    public FormNhanVien() {
        try {
            Connect.getInstance().connect();
        } catch (SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        initComponents();
        table.fixTable(jScrollPane1);
        table.addMouseListener(this);
        nv_dao = new NhanVien_Dao();
        cv_dao = new ChucVu_Dao();
        cl_dao = new CaLam_Dao();
        tk_dao = new TaiKhoan_Dao();
        updateTable();
        upcomBoBox();
        if (ma != null) {
            upTableTim();
            ma = null;
        }
    }

    public static String ma = null;
    private NhanVien_Dao nv_dao;
    private TaiKhoan_Dao tk_dao;
    private DefaultTableModel dataModel;
    private ChucVu_Dao cv_dao;
    private CaLam_Dao cl_dao;
    DecimalFormat df = new DecimalFormat("#,##0 VND");
    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

    public void upcomBoBox() {
        ArrayList<CaLam> dsCL = cl_dao.getAllCL();
        ArrayList<ChucVu> dsCV = cv_dao.getAllCV();

        for (ChucVu dm : dsCV) {
            cbbChucVu.addItem(dm.getTenCV());
        }
        for (CaLam nsx : dsCL) {
            cbboxBuoi.addItem(nsx.getBuoi());
        }

    }

    public void upTableTim() {
        NhanVien nv = nv_dao.getNV(ma);
        xoaModel(table);
        dataModel.addRow(
                new Object[]{nv.getMaNV(), nv.getCaLam().getBuoi(), nv.getTenNV(), nv.getGioiTinh(), nv.getCmnd(),
                    nv.getDiaChi(), nv.getSdt(), sdf.format(nv.getNgaySinh()), nv.getChucVu().getTenCV(), df.format(nv.getChucVu().getLuong())});

    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        txtTen = new swing.TextField();
        txtCMND = new swing.TextField();
        txtDiaChi = new swing.TextField();
        txtSDT = new swing.TextField();
        txtNgaySinh = new swing.TextField();
        txtLuong = new swing.TextField();
        btnThem = new swing.Button();
        btnXoa = new swing.Button();
        btnSua = new swing.Button();
        btnLamMoi = new swing.Button();
        btnTim = new swing.Button();
        cbbChucVu = new swing.Combobox();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        cbbGioiTinh = new swing.Combobox();
        jScrollPane1 = new javax.swing.JScrollPane();
        table = new swing.Table();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        cbboxBuoi = new swing.Combobox();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        lblBD = new javax.swing.JLabel();
        lblKT = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        txtTenDN = new swing.TextField();
        txtMK = new swing.TextField();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();

        setBackground(new java.awt.Color(204, 204, 255));
        setToolTipText("");

        jPanel1.setBackground(new java.awt.Color(204, 204, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(0, 153, 153), null), "Nh??n Vi??n", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        txtTen.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtTen.setHintText("Nguy???n Th??? B");

        txtCMND.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtCMND.setHintText("9 ho???c 12 s???");

        txtDiaChi.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtDiaChi.setHintText("S???,???????ng,Ph?????ng,Qu???n,TP");

        txtSDT.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtSDT.setHintText("S??? ??i???n Tho???i");

        txtNgaySinh.setHintText("01/01/2001");

        txtLuong.setEditable(false);
        txtLuong.setHintText("0.00");

        btnThem.setText("Th??m Nh??n Vi??n");
        btnThem.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        btnXoa.setText("X??a Nh??n Vi??n");
        btnXoa.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        btnSua.setText("S???a Nh??n Vi??n");
        btnSua.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        btnLamMoi.setText("L??m M???i");
        btnLamMoi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLamMoiActionPerformed(evt);
            }
        });

        btnTim.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/loupe.png"))); // NOI18N
        btnTim.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTimActionPerformed(evt);
            }
        });

        cbbChucVu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbbChucVuActionPerformed(evt);
            }
        });

        jLabel6.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel6.setText("T??n Nh??n Vi??n:");

        jLabel7.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel7.setText("T??m Nh??n vi??n:");

        jLabel8.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel8.setText("Ng??y Sinh:");

        jLabel9.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel9.setText("?????a Ch???:");

        jLabel10.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel10.setText("Gi???i T??nh:");

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel11.setText("S??? ??i???n Tho???i:");

        jLabel13.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel13.setText("CMND:");

        jLabel14.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel14.setText("Ch???c V???:");

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel15.setText("L????ng:");

        cbbGioiTinh.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Nam", "N???" }));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel7)
                .addGap(10, 10, 10)
                .addComponent(btnTim, javax.swing.GroupLayout.PREFERRED_SIZE, 36, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel6)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, 195, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(34, 34, 34)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(12, 12, 12)
                                .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 132, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(219, 219, 219)
                                .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 131, javax.swing.GroupLayout.PREFERRED_SIZE))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel10)
                            .addComponent(jLabel9))
                        .addGap(46, 46, 46)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(68, 68, 68)
                                .addComponent(btnLamMoi, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(157, 157, 157))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(cbbGioiTinh, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel8)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(txtNgaySinh, javax.swing.GroupLayout.PREFERRED_SIZE, 144, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel14)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(cbbChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, 335, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel13)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(txtCMND, javax.swing.GroupLayout.PREFERRED_SIZE, 149, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 6, Short.MAX_VALUE)
                                        .addComponent(jLabel11)
                                        .addGap(18, 18, 18))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel15)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtSDT, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtLuong, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                .addContainerGap(32, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(jPanel1Layout.createSequentialGroup()
                            .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(5, 5, 5)))
                    .addComponent(btnTim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(26, 26, 26)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbbGioiTinh, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtNgaySinh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbbChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtSDT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtDiaChi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtCMND, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtLuong, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 47, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnLamMoi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(55, 55, 55))
        );

        table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "M?? Nh??n Vi??n", "Bu???i", "T??n Nh??n Vi??n", "Gi???i T??nh", "CMND", "?????a Ch???", "S??? ??i???n Tho???i", "Ng??y Sinh", "Ch???c V???", "L????ng"
            }
        ));
        table.setShowGrid(true);
        table.setShowVerticalLines(false);
        jScrollPane1.setViewportView(table);

        jPanel2.setBackground(new java.awt.Color(204, 204, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(0, 153, 153), null), "Ca L??m", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("Bu???i: ");

        cbboxBuoi.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbboxBuoiActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel2.setText("Th???i Gian B???t ?????u: ");

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel3.setText("Th???i Gian K???t Th??c: ");

        lblBD.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lblBD.setForeground(new java.awt.Color(255, 0, 51));

        lblKT.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        lblKT.setForeground(new java.awt.Color(255, 0, 51));

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(29, 29, 29)
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(cbboxBuoi, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(55, 55, 55)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel3)
                                .addGap(30, 30, 30)
                                .addComponent(lblKT))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(lblBD)))))
                .addContainerGap(40, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(cbboxBuoi, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(10, 10, 10)
                        .addComponent(lblBD))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel2)))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblKT)
                    .addComponent(jLabel3))
                .addContainerGap(38, Short.MAX_VALUE))
        );

        jPanel3.setBackground(new java.awt.Color(204, 204, 255));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(0, 153, 153), null), "T??i Kho???n", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        txtTenDN.setHintText("T??n ????ng nh???p");

        txtMK.setHintText("M???t Kh???u");

        jLabel4.setText("T??n ????ng Nh???p:");

        jLabel5.setText("M???t Kh???u:");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtTenDN, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(txtMK, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTenDN, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addGap(18, 18, 18)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtMK, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addGap(17, 17, 17))
        );

        jLabel16.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("TH??NG TIN NH??N VI??N");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
            .addComponent(jLabel16, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
            .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.LEADING)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel16, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 42, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 343, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(15, 15, 15))
        );
    }// </editor-fold>//GEN-END:initComponents

    public TaiKhoan getTK() {
        TaiKhoan tk = new TaiKhoan();
        tk.setTenDN(txtTenDN.getText().toString().trim());
        tk.setMatKhau(txtMK.getText().toString().trim());
        String quyen = cbbChucVu.getSelectedItem().toString();
        if (quyen.equalsIgnoreCase("Qu???n L??")) {
            tk.setQuyen("QL");
        } else {
            tk.setQuyen("NV");
        }

        NhanVien nv = nv_dao.getNVMoiNhat();
        tk.setNhanVien(nv);
        return tk;

    }


    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        int r = table.getSelectedRow();
        if (r >= 0) {
            String maNV = (String) table.getValueAt(r, 0);
            int click = JOptionPane.showConfirmDialog(null, "B???n c?? ch???c x??a nh??n vi??n ", "Th??ng B??o", 2);
            if (click == JOptionPane.OK_OPTION) {
                if (tk_dao.xoa(maNV)) {
                    if (nv_dao.xoa(maNV)) {
                        JOptionPane.showMessageDialog(null, "X??a nh??n vien th??nh c??ng");
                    }
                    dataModel.removeRow(r);
                    xoaRongTextfields();
                }
            } else {
                if (click == JOptionPane.CANCEL_OPTION) {
                    this.setVisible(true);
                }
            }
        } else {
            JOptionPane.showMessageDialog(null, "Xin Ch???n Nh??n Vi??n C???n X??a ");
        }
    }//GEN-LAST:event_btnXoaActionPerformed

    private void btnTimActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimActionPerformed

        panelTransaction.showForm(new FormTKNV());
//        String sdt = txtTim.getText().toString();
//        if (sdt.length() == 10) {
//            try {
//                if (nv_dao.TimNVTheoSDT(sdt) != null) {
//                    NhanVien nv = nv_dao.TimNVTheoSDT(sdt);
//                    xoaModel(table);
//                    dataModel.addRow(
//                            new Object[]{nv.getMaNV(), nv.getCaLam().getBuoi(), nv.getChucVu().getTenCV(), nv.getTenNV(), nv.getGioiTinh(),
//                                nv.getCmnd(), nv.getDiaChi(), nv.getSdt(), nv.getNgaySinh(), df.format(nv.getChucVu().getLuong())});
//                } else {
//                    JOptionPane.showMessageDialog(null, "Kh??ng T??m Th???y Nh??n Vi??n");
//                }
//            } catch (SQLException ex) {
//                ex.printStackTrace();
//            }
//        } else {
//            JOptionPane.showMessageDialog(null, "S??? ??i???n Tho???i Kh??ng H???p L???");
//        }
    }//GEN-LAST:event_btnTimActionPerformed

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed
        NhanVien nv = null;
        if (validData(nv)) {
            try {
                nv = reverSPFromTextFile();
            } catch (ParseException ex) {
                Logger.getLogger(FormNhanVien.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (nv_dao.themNV(nv)) {
                TaiKhoan tk = getTK();
                if (tk_dao.themTK(tk)) {
                    xoaModel(table);
                    updateTable();
                    xoaRongTextfields();
                    JOptionPane.showMessageDialog(null, "Th??m nh??n vi??n th??nh c??ng");
                }
            }
        }
    }//GEN-LAST:event_btnThemActionPerformed

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed

        int r = table.getSelectedRow();
        if (r >= 0) {
            String ma = (String) table.getValueAt(r, 0);
            CaLam Ca = cl_dao.getMLtheobuoi(cbboxBuoi.getSelectedItem().toString());
            ChucVu chuc = cv_dao.getCVTenCV(cbbChucVu.getSelectedItem().toString());
            String ten = txtTen.getText().toString();
            String gT = cbbGioiTinh.getSelectedItem().toString();
            String cmnd = txtCMND.getText().toString();
            String diaChi = txtDiaChi.getText().toString();
            String sdt = txtSDT.getText().toString();
            String ngaySinh = txtNgaySinh.getText().toString();
            Date date1 = null;
            try {
                date1 = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(ngaySinh);
            } catch (ParseException ex) {
                Logger.getLogger(FormNhanVien.class.getName()).log(Level.SEVERE, null, ex);
            }
            NhanVien nv = new NhanVien(ma, Ca, chuc, ten, gT, cmnd, diaChi, sdt, date1);
            String tenDN = txtTenDN.getText().toString();
            String mk = txtMK.getText().toString();
            TaiKhoan tk = getTK();

            int click = JOptionPane.showConfirmDialog(null, "B???n c?? mu???n s???a", "Th??ng B??o", 2);
            if (click == JOptionPane.OK_OPTION) {
                if (validData(nv)) {
                    if (tk_dao.sua(tk)) {
                        if (nv_dao.sua(nv)) {
                            table.setValueAt(cbboxBuoi.getSelectedItem(), r, 1);
                            table.setValueAt(txtTen.getText().toString(), r, 2);
                            table.setValueAt(cbbGioiTinh.getSelectedItem(), r, 3);
                            table.setValueAt(txtCMND.getText().toString(), r, 4);
                            table.setValueAt(txtDiaChi.getText().toString(), r, 5);
                            table.setValueAt(txtSDT.getText().toString(), r, 6);
                            table.setValueAt(txtNgaySinh.getText().toString(), r, 7);
                            table.setValueAt(cbbChucVu.getSelectedItem(), r, 8);
                            ChucVu cv = cv_dao.getCVTenCV(cbbChucVu.getSelectedItem().toString());
                            table.setValueAt(df.format(cv.getLuong()), r, 9);
                            JOptionPane.showMessageDialog(null, "S???a nh??n vi??n th??nh c??ng");
                            xoaRongTextfields();
                        }
                    }
                }
                xoaModel(table);
                updateTable();
            } else if (click == JOptionPane.CANCEL_OPTION) {
                return;
            }

        } else {
            JOptionPane.showMessageDialog(null, "Xin Ch???n S???n Ph???m C???n S???a");
        }
    }//GEN-LAST:event_btnSuaActionPerformed

    private void cbbChucVuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbbChucVuActionPerformed
        ChucVu chuc = cv_dao.getCVTenCV(cbbChucVu.getSelectedItem().toString());
        txtLuong.setText(df.format(chuc.getLuong()));
    }//GEN-LAST:event_cbbChucVuActionPerformed

    private void cbboxBuoiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbboxBuoiActionPerformed
        CaLam ca = cl_dao.getMLtheobuoi(cbboxBuoi.getSelectedItem().toString());
        lblBD.setText(ca.getTgBD());
        lblKT.setText(ca.getTgKT());
    }//GEN-LAST:event_cbboxBuoiActionPerformed

    private void btnLamMoiActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLamMoiActionPerformed
        xoaRongTextfields();
        Main.panelTransaction.showForm(new FormNhanVien());
    }//GEN-LAST:event_btnLamMoiActionPerformed

    private boolean validData(NhanVien nv) {
        String te"n = txtTen.getText().trim();
        String ngay = txtNgaySinh.getText().trim();
        String sdt = txtSDT.getText().trim();
        String diaChi = txtDiaChi.getText().trim();
        String cmnd = txtCMND.getText().trim();
        String tenDN = txtTenDN.getText().trim();
        String mk = txtMK.getText().trim();
        if (!(ten.length() > 0)) {
            JOptionPane.showMessageDialog(null, "T??n kh??ng ???????c ????? r???ng");
            return false;
        }
        if (!(ngay.length() > 0 && ngay.matches("[0-9]{2}/[0-9]{2}/[0-9]{4}"))) {
            JOptionPane.showInternalMessageDialog(null, "Nh???p ng??y sai!! M???u:01/01/2000");
            return false;
        }
        if (!(sdt.length() > 0 && sdt.matches("[0-9]{10}"))) {
            JOptionPane.showInternalMessageDialog(null, "S??? ??i???n tho???i g???m 10 ch??? s???");
            return false;
        }
        if (!(diaChi.length() > 0)) {
            JOptionPane.showMessageDialog(null, "?????a ch??? kh??ng ???????c ????? r???ng");
            return false;
        }
        if (!(cmnd.length() > 0 && cmnd.matches("[0-9]{9}||[0-9]{12}"))) {
            JOptionPane.showInternalMessageDialog(null, "S??? cmnd 9 ho???c 12 s???");
            return false;
        }
        if (!(tenDN.length() > 0)) {
            JOptionPane.showMessageDialog(null, "T??n ????ng nh???p kh??ng ???????c ????? r???ng");
            return false;
        }
        if (!(mk.length() >= 8)) {
            JOptionPane.showMessageDialog(null, "M???t kh???u t???i thi???u 8 k?? t??? ");
            return false;
        }
        ArrayList<NhanVien> lsnv = nv_dao.getAllNV();
        if (nv != null) {
            for (NhanVien s : lsnv) {
                if (s.getMaNV().equals(nv.getMaNV())) {
                    lsnv.remove(s);
                    break;
                }
            }
        }
        for (NhanVien s : lsnv) {
            if (s.getSdt().equals(sdt)) {
                JOptionPane.showMessageDialog(null, "S??? ??i???n tho???i ???? ???????c ????ng k??");
                return false;
            } else if (s.getCmnd().equals(cmnd)) {
                JOptionPane.showMessageDialog(null, "CMDN ???? ???????c ????ng k??");
                return false;
            }
        }

        ArrayList<TaiKhoan> lstk = tk_dao.getAllTK();
        if (nv != null) {
            for (TaiKhoan tk : lstk) {
                if (tk.getNhanVien().getMaNV().equals(nv.getMaNV())) {
                    lstk.remove(tk);
                    break;
                }
            }
        }
        for (TaiKhoan tk : lstk) {
            if (tk.getTenDN().equalsIgnoreCase(tenDN)) {
                JOptionPane.showMessageDialog(null, "T??n ????ng nh???p ???? ???????c ????ng k??");
                return false;
            }
        }
        return true;
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private swing.Button btnLamMoi;
    private swing.Button btnSua;
    private swing.Button btnThem;
    private swing.Button btnTim;
    private swing.Button btnXoa;
    private swing.Combobox cbbChucVu;
    private swing.Combobox cbbGioiTinh;
    private swing.Combobox cbboxBuoi;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblBD;
    private javax.swing.JLabel lblKT;
    private swing.Table table;
    private swing.TextField txtCMND;
    private swing.TextField txtDiaChi;
    private swing.TextField txtLuong;
    private swing.TextField txtMK;
    private swing.TextField txtNgaySinh;
    private swing.TextField txtSDT;
    private swing.TextField txtTen;
    private swing.TextField txtTenDN;
    // End of variables declaration//GEN-END:variables

    private void updateTable() {
        dataModel = (DefaultTableModel) table.getModel();
        ArrayList<NhanVien> ListNV = nv_dao.getAllNV();
        for (NhanVien nv : ListNV) {
            dataModel.addRow(new Object[]{nv.getMaNV(), nv.getCaLam().getBuoi(), nv.getTenNV(), nv.getGioiTinh(), nv.getCmnd(),
                nv.getDiaChi(), nv.getSdt(), sdf.format(nv.getNgaySinh()), nv.getChucVu().getTenCV(), df.format(nv.getChucVu().getLuong())});
        }
    }

    public void xoaModel(JTable table) {
        DefaultTableModel del = (DefaultTableModel) table.getModel();
        del.getDataVector().removeAllElements();
    }

    public NhanVien reverSPFromTextFile() throws ParseException {
        CaLam Ca = cl_dao.getMLtheobuoi(cbboxBuoi.getSelectedItem().toString());
        ChucVu chuc = cv_dao.getCVTenCV(cbbChucVu.getSelectedItem().toString());
        String ten = txtTen.getText().toString();
        String gT = cbbGioiTinh.getSelectedItem().toString();
        String cmnd = txtCMND.getText().toString();
        String diaChi = txtDiaChi.getText().toString();
        String sdt = txtSDT.getText().toString();
        String ngaySinh = txtNgaySinh.getText().toString();
        Date date1 = (Date) new SimpleDateFormat("dd/MM/yyyy").parse(ngaySinh);
        return new NhanVien(Ca, chuc, ten, gT, cmnd, diaChi, sdt, date1);
    }

    private void xoaRongTextfields() {
        txtTen.setText("");
        txtNgaySinh.setText("");
        txtSDT.setText("");
        txtDiaChi.setText("");
        txtCMND.setText("");
        txtTenDN.setText("");
        txtMK.setText("");
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        // TODO Auto-generated method stub

    }

    @Override
    public void mousePressed(MouseEvent e) {
        int r = table.getSelectedRow();
        cbboxBuoi.setSelectedItem(table.getValueAt(r, 1).toString());
        txtTen.setText(table.getValueAt(r, 2).toString());
        cbbGioiTinh.setSelectedItem(table.getValueAt(r, 3).toString());
        txtNgaySinh.setText(table.getValueAt(r, 7).toString());
        cbbChucVu.setSelectedItem(table.getValueAt(r, 8).toString());
        txtSDT.setText(table.getValueAt(r, 6).toString());
        txtDiaChi.setText(table.getValueAt(r, 5).toString());
        txtCMND.setText(table.getValueAt(r, 4).toString());
        txtLuong.setText(table.getValueAt(r, 9).toString());
        try {
            TaiKhoan tk = tk_dao.getTaiKhoan(table.getValueAt(r, 0).toString());
            txtTenDN.setText(tk.getTenDN());
            txtMK.setText(tk.getMatKhau());
        } catch (SQLException ex) {
            Logger.getLogger(FormNhanVien.class.getName()).log(Level.SEVERE, null, ex);
        }

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

}
AlertDialog.Builder mydialog = new AlertDialog.Builder(this);
        mydialog.setTitle("Th??ng B??o");

 mydialog.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                Toast.makeText(MainActivity.this,"B???n ???? ch???n n??t yes!", Toast.LENGTH_SHORT).show();
            }
        });
   AlertDialog dialog= mydialog.create();
        dialog.show();