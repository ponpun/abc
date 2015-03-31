namespace SoThuSaiGon
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.mnuMenu = new System.Windows.Forms.MenuStrip();
            this.hồSơToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuLoad = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuSave = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.mnuClose = new System.Windows.Forms.ToolStripMenuItem();
            this.sửaĐổiToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuCopy = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuCut = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuPaste = new System.Windows.Forms.ToolStripMenuItem();
            this.lstThuMoi = new System.Windows.Forms.ListBox();
            this.lstDanhSach = new System.Windows.Forms.ListBox();
            this.lblTime = new System.Windows.Forms.Label();
            this.lblThuMoi = new System.Windows.Forms.Label();
            this.lblDanhSach = new System.Windows.Forms.Label();
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.bntSave = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.mnuMenu.SuspendLayout();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // mnuMenu
            // 
            this.mnuMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.hồSơToolStripMenuItem,
            this.sửaĐổiToolStripMenuItem});
            this.mnuMenu.Location = new System.Drawing.Point(0, 0);
            this.mnuMenu.Name = "mnuMenu";
            this.mnuMenu.Size = new System.Drawing.Size(395, 24);
            this.mnuMenu.TabIndex = 0;
            this.mnuMenu.Text = "menuStrip1";
            // 
            // hồSơToolStripMenuItem
            // 
            this.hồSơToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuLoad,
            this.mnuSave,
            this.toolStripSeparator1,
            this.mnuClose});
            this.hồSơToolStripMenuItem.Name = "hồSơToolStripMenuItem";
            this.hồSơToolStripMenuItem.Size = new System.Drawing.Size(50, 20);
            this.hồSơToolStripMenuItem.Text = "Hồ sơ";
            // 
            // mnuLoad
            // 
            this.mnuLoad.Image = global::SoThuSaiGon.Properties.Resources.File_26;
            this.mnuLoad.Name = "mnuLoad";
            this.mnuLoad.Size = new System.Drawing.Size(151, 22);
            this.mnuLoad.Text = "Tải danh sách";
            this.mnuLoad.Click += new System.EventHandler(this.mnuLoad_Click);
            // 
            // mnuSave
            // 
            this.mnuSave.Image = global::SoThuSaiGon.Properties.Resources.Save_26;
            this.mnuSave.Name = "mnuSave";
            this.mnuSave.Size = new System.Drawing.Size(151, 22);
            this.mnuSave.Text = "Lưu danh sách";
            this.mnuSave.Click += new System.EventHandler(this.Save);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(148, 6);
            // 
            // mnuClose
            // 
            this.mnuClose.Image = global::SoThuSaiGon.Properties.Resources.Close_Window_26;
            this.mnuClose.Name = "mnuClose";
            this.mnuClose.Size = new System.Drawing.Size(151, 22);
            this.mnuClose.Text = "Kết thúc";
            this.mnuClose.Click += new System.EventHandler(this.mnuClose_Click);
            // 
            // sửaĐổiToolStripMenuItem
            // 
            this.sửaĐổiToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mnuCopy,
            this.mnuCut,
            this.mnuPaste});
            this.sửaĐổiToolStripMenuItem.Name = "sửaĐổiToolStripMenuItem";
            this.sửaĐổiToolStripMenuItem.Size = new System.Drawing.Size(58, 20);
            this.sửaĐổiToolStripMenuItem.Text = "Sửa đổi";
            // 
            // mnuCopy
            // 
            this.mnuCopy.Image = global::SoThuSaiGon.Properties.Resources.Copy_26;
            this.mnuCopy.Name = "mnuCopy";
            this.mnuCopy.ShortcutKeyDisplayString = "";
            this.mnuCopy.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.C)));
            this.mnuCopy.Size = new System.Drawing.Size(139, 22);
            this.mnuCopy.Text = "Sao ";
            // 
            // mnuCut
            // 
            this.mnuCut.Image = global::SoThuSaiGon.Properties.Resources.Cut_26;
            this.mnuCut.Name = "mnuCut";
            this.mnuCut.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.X)));
            this.mnuCut.Size = new System.Drawing.Size(139, 22);
            this.mnuCut.Text = "Cắt ";
            // 
            // mnuPaste
            // 
            this.mnuPaste.Image = global::SoThuSaiGon.Properties.Resources.Paste_26;
            this.mnuPaste.Name = "mnuPaste";
            this.mnuPaste.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.V)));
            this.mnuPaste.Size = new System.Drawing.Size(139, 22);
            this.mnuPaste.Text = "Dán ";
            // 
            // lstThuMoi
            // 
            this.lstThuMoi.AccessibleDescription = "";
            this.lstThuMoi.AccessibleName = "";
            this.lstThuMoi.AllowDrop = true;
            this.lstThuMoi.FormattingEnabled = true;
            this.lstThuMoi.Location = new System.Drawing.Point(3, 19);
            this.lstThuMoi.Name = "lstThuMoi";
            this.lstThuMoi.Size = new System.Drawing.Size(124, 95);
            this.lstThuMoi.TabIndex = 1;
            this.lstThuMoi.DragDrop += new System.Windows.Forms.DragEventHandler(this.listBox_DragDrop);
            this.lstThuMoi.DragEnter += new System.Windows.Forms.DragEventHandler(this.listBox_DragEnter);
            this.lstThuMoi.MouseDown += new System.Windows.Forms.MouseEventHandler(this.listBox_MouseDown);
            // 
            // lstDanhSach
            // 
            this.lstDanhSach.AllowDrop = true;
            this.lstDanhSach.FormattingEnabled = true;
            this.lstDanhSach.Location = new System.Drawing.Point(133, 19);
            this.lstDanhSach.Name = "lstDanhSach";
            this.lstDanhSach.Size = new System.Drawing.Size(124, 95);
            this.lstDanhSach.TabIndex = 1;
            this.lstDanhSach.DragDrop += new System.Windows.Forms.DragEventHandler(this.listBox_DragDrop);
            this.lstDanhSach.DragEnter += new System.Windows.Forms.DragEventHandler(this.listBox_DragEnter);
            // 
            // lblTime
            // 
            this.lblTime.AutoSize = true;
            this.tableLayoutPanel1.SetColumnSpan(this.lblTime, 2);
            this.lblTime.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTime.Location = new System.Drawing.Point(3, 117);
            this.lblTime.Name = "lblTime";
            this.lblTime.Size = new System.Drawing.Size(210, 16);
            this.lblTime.TabIndex = 2;
            this.lblTime.Text = "Bây giờ ngày 25 tháng 3 năm 2015";
            this.lblTime.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lblThuMoi
            // 
            this.lblThuMoi.AutoSize = true;
            this.lblThuMoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblThuMoi.Location = new System.Drawing.Point(3, 0);
            this.lblThuMoi.Name = "lblThuMoi";
            this.lblThuMoi.Size = new System.Drawing.Size(56, 16);
            this.lblThuMoi.TabIndex = 4;
            this.lblThuMoi.Text = "Thú mới";
            // 
            // lblDanhSach
            // 
            this.lblDanhSach.AutoSize = true;
            this.lblDanhSach.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDanhSach.Location = new System.Drawing.Point(133, 0);
            this.lblDanhSach.Name = "lblDanhSach";
            this.lblDanhSach.Size = new System.Drawing.Size(117, 16);
            this.lblDanhSach.TabIndex = 4;
            this.lblDanhSach.Text = "Danh sách con thú";
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 3;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.Controls.Add(this.lblThuMoi, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.lblDanhSach, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.lstThuMoi, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.lstDanhSach, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.lblTime, 0, 2);
            this.tableLayoutPanel1.Controls.Add(this.bntSave, 2, 2);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 25);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 3;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle());
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(395, 148);
            this.tableLayoutPanel1.TabIndex = 5;
            // 
            // bntSave
            // 
            this.bntSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.bntSave.ImageIndex = 0;
            this.bntSave.ImageList = this.imageList1;
            this.bntSave.Location = new System.Drawing.Point(263, 120);
            this.bntSave.Name = "bntSave";
            this.bntSave.Size = new System.Drawing.Size(107, 23);
            this.bntSave.TabIndex = 3;
            this.bntSave.Text = "Lưu danh sách";
            this.bntSave.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.bntSave.UseVisualStyleBackColor = true;
            this.bntSave.Click += new System.EventHandler(this.Save);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Save-26.png");
            // 
            // timer1
            // 
            this.timer1.Enabled = true;
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(395, 175);
            this.Controls.Add(this.mnuMenu);
            this.Controls.Add(this.tableLayoutPanel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MainMenuStrip = this.mnuMenu;
            this.Name = "Form1";
            this.Text = "Sở thú Xì Gòn";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.mnuMenu.ResumeLayout(false);
            this.mnuMenu.PerformLayout();
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip mnuMenu;
        private System.Windows.Forms.ToolStripMenuItem hồSơToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sửaĐổiToolStripMenuItem;
        private System.Windows.Forms.ListBox lstThuMoi;
        private System.Windows.Forms.ListBox lstDanhSach;
        private System.Windows.Forms.ToolStripMenuItem mnuLoad;
        private System.Windows.Forms.ToolStripMenuItem mnuSave;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem mnuClose;
        private System.Windows.Forms.ToolStripMenuItem mnuCopy;
        private System.Windows.Forms.ToolStripMenuItem mnuCut;
        private System.Windows.Forms.ToolStripMenuItem mnuPaste;
        private System.Windows.Forms.Label lblTime;
        private System.Windows.Forms.Button bntSave;
        private System.Windows.Forms.Label lblThuMoi;
        private System.Windows.Forms.Label lblDanhSach;
        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Timer timer1;
    }
}

