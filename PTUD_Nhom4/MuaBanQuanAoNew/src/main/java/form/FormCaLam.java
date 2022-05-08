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
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

import connect.Connect;
import dao.CaLam_Dao;
import entity.*;

/**
 *
 * @author Hoàng Huy
 */
public class FormCaLam extends javax.swing.JPanel implements ActionListener, MouseListener {

    /**
     * Creates new form FormCaLam
     */
    public FormCaLam() {
    	try {
			Connect.getInstance().connect();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
        initComponents();
        table.fixTable(jScrollPane1);
        table.addMouseListener(this);
        cl_dao = new CaLam_Dao();
        updateTable();
    }
    private CaLam_Dao cl_dao;
    private DefaultTableModel dataModel;
    private String ma = null;

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel16 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        txtTGBD = new swing.TextField();
        jLabel11 = new javax.swing.JLabel();
        btnSua = new swing.Button();
        btnXoa = new swing.Button();
        btnThem = new swing.Button();
        txtTim = new swing.TextField();
        btnTim = new swing.Button();
        jLabel15 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        txtBuoi = new swing.TextField();
        jLabel13 = new javax.swing.JLabel();
        txtTGKT = new swing.TextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        table = new swing.Table();

        setBackground(new java.awt.Color(204, 204, 255));

        jLabel16.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        jLabel16.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel16.setText("THÔNG TIN CA LÀM");

        jPanel1.setBackground(new java.awt.Color(204, 204, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(0, 153, 153), null), "Ca Làm", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 18))); // NOI18N

        txtTGBD.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtTGBD.setHintText("8.00 Giờ Sáng");

        jLabel11.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel11.setText("Buổi:");

        btnSua.setText("Sửa ");
        btnSua.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnSua.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSuaActionPerformed(evt);
            }
        });

        btnXoa.setText("Xóa ");
        btnXoa.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnXoa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnXoaActionPerformed(evt);
            }
        });

        btnThem.setText("Thêm ");
        btnThem.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        btnThem.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnThemActionPerformed(evt);
            }
        });

        txtTim.setHintText("Theo Tên");
        txtTim.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTimActionPerformed(evt);
            }
        });

        btnTim.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/loupe.png"))); // NOI18N
        btnTim.setText("Tìm Kiếm");
        btnTim.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTimActionPerformed(evt);
            }
        });

        jLabel15.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel15.setText("Tìm:");

        jLabel12.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel12.setText("Thời Gian Kết Thúc:");

        txtBuoi.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtBuoi.setHintText("Sáng");

        jLabel13.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        jLabel13.setText("Thời Gian Bắt Đầu:");

        txtTGKT.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtTGKT.setHintText("14.00 Giờ Chiều");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(154, 154, 154)
                .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(117, 117, 117)
                .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(658, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, 190, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(388, 388, 388))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(150, 150, 150)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel15)
                    .addComponent(jLabel11))
                .addGap(39, 39, 39)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(txtTim, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(31, 31, 31)
                        .addComponent(btnTim, javax.swing.GroupLayout.PREFERRED_SIZE, 119, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(txtBuoi, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(24, 24, 24)
                        .addComponent(jLabel13)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtTGBD, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel12)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtTGKT, javax.swing.GroupLayout.PREFERRED_SIZE, 186, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnTim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTim, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(41, 41, 41)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel11, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtBuoi, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTGBD, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtTGKT, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 72, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnSua, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnXoa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnThem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(27, 27, 27))
        );

        table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Mã Ca Làm", "Buổi Làm", "Thời Gian Bắt Đầu", "Thời Gian Kết Thúc"
            }
        ));
        table.setShowGrid(true);
        table.setShowVerticalLines(false);
        jScrollPane1.setViewportView(table);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel16, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 1321, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane1))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel16)
                .addGap(31, 31, 31)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(41, 41, 41)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 37, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnSuaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSuaActionPerformed

        int r = table.getSelectedRow();
        if (r >= 0) {
        	String buoi = txtBuoi.getText().toString();
    		String bd = txtTGBD.getText().toString();
    		String kt = txtTGKT.getText().toString();
            CaLam ncc = new CaLam(ma, buoi, bd, kt);
            int click = JOptionPane.showConfirmDialog(null, "Bạn có muốn sửa", "Thông Báo", 2);
            if (click == JOptionPane.OK_OPTION) {
                // if (validData()) {
                    if (cl_dao.sua(ncc)) {
                        table.setValueAt(txtBuoi.getText(), r, 1);
                        table.setValueAt(txtTGBD.getText(), r, 2);
                        table.setValueAt(txtTGKT.getText(), r, 3);
                        JOptionPane.showMessageDialog(null, "Sửa thành công");
                        xoaRongTextfields();
                        xoaModel(table);
                        updateTable();

                    } else {
                        if (click == JOptionPane.CANCEL_OPTION) {
                            this.setVisible(true);
                        }

                    }

                }
            }
    }//GEN-LAST:event_btnSuaActionPerformed

    private void btnXoaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnXoaActionPerformed
        int r = table.getSelectedRow();
        if (r >= 0) {
            String maNCC = (String) table.getValueAt(r, 0);
            int click = JOptionPane.showConfirmDialog(null, "Bạn có chắc xóa Ca Làm  ", "Thông Báo", 2);
            if (click == JOptionPane.OK_OPTION) {
                // else ) {
                if (cl_dao.xoa(maNCC)) {
                    JOptionPane.showMessageDialog(null, "Xóa Ca Làm thành công");
                }
                dataModel.removeRow(r);
                xoaRongTextfields();
            } else {
                if (click == JOptionPane.CANCEL_OPTION) {
                    this.setVisible(true);

                }
            }

        }
    }//GEN-LAST:event_btnXoaActionPerformed

    private void btnThemActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnThemActionPerformed

        CaLam ncc = reverSPFromTextFile();
        if (txtTGBD.getText().equals("")||txtBuoi.getText().equals("")||txtTGKT.getText().equals("")) {
            JOptionPane.showMessageDialog(null, "Bạn chưa nhập dữ liệu");
        }
        else if (cl_dao.them(ncc)) {
            xoaModel(table);
            updateTable();
            xoaRongTextfields();
            JOptionPane.showMessageDialog(null, "Thêm Ca Làm thành công");

        }
    }//GEN-LAST:event_btnThemActionPerformed

    private void txtTimActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTimActionPerformed

    }//GEN-LAST:event_txtTimActionPerformed

    private void btnTimActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTimActionPerformed
        xoaModel(table);
        ArrayList<CaLam> LisTimNCC = new ArrayList<CaLam>();
        LisTimNCC = cl_dao.traCuuCL(txtTim.getText().toString().trim());
        if (LisTimNCC.size() > 0) {
            for (CaLam cv : LisTimNCC) {
            	dataModel.addRow(
                        new Object[]{cv.getMaC(), cv.getBuoi(),cv.getTgBD(), cv.getTgKT()});
            }
        } else {
            JOptionPane.showMessageDialog(null, "Không Có Ca Làm Nào Phù Hợp");
            xoaModel(table);
            updateTable();
        }
    }//GEN-LAST:event_btnTimActionPerformed

    private void updateTable() {
        dataModel = (DefaultTableModel) table.getModel();
        ArrayList<CaLam> ListNCC = cl_dao.getAllCL();
        for (CaLam ncc : ListNCC) {
            dataModel.addRow(
                    new Object[]{ncc.getMaC(), ncc.getBuoi(),ncc.getTgBD(), ncc.getTgKT()});
        }
    }
    

	
    public void xoaModel(JTable table) {
		DefaultTableModel del = (DefaultTableModel) table.getModel();
		del.getDataVector().removeAllElements();
	}

	private CaLam reverSPFromTextFile() {
		String buoi = txtBuoi.getText().toString();
		String bd = txtTGBD.getText().toString();
		String kt = txtTGKT.getText().toString();

		return new CaLam(buoi, bd, kt);
	}
	private void xoaRongTextfields() {
		txtBuoi.setText("");
		txtTGBD.setText("");
		txtTGKT.setText("");
	}
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private swing.Button btnSua;
    private swing.Button btnThem;
    private swing.Button btnTim;
    private swing.Button btnXoa;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private swing.Table table;
    private swing.TextField txtBuoi;
    private swing.TextField txtTGBD;
    private swing.TextField txtTGKT;
    private swing.TextField txtTim;
    // End of variables declaration//GEN-END:variables

	@Override
	public void mouseClicked(MouseEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent e) {
		int r = table.getSelectedRow();
        ma = table.getValueAt(r, 0).toString();
        txtBuoi.setText(table.getValueAt(r, 1).toString());
        txtTGBD.setText(table.getValueAt(r, 2).toString());
        txtTGKT.setText(table.getValueAt(r, 3).toString());
		
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
