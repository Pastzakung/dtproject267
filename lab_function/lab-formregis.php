<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">



<h1 class="p1">
    <i class="fa-solid fa-book"></i> หน้าจอเพื่มข้อมูลผู้ใช้</h1>
<div class="content">
    <form action="../action.php" method="post">

    <div class="mb-3">
            <label class="form-label">FIRSTNAME</label>
            <input type="text" 
            class="form-control form-control-lg" 
            name="tfirstname" 
            placeholder="ชื่อ...." required>
</div>
    <div class="mb-3">
            <label class="form-label">LASTNAME</label>
            <input type="text" 
            class="form-control form-control-lg" 
            name="tlastname" 
            placeholder="นามสกุล...." required>
</div>
    <div class="mb-3">
            <label class="form-label">USERNAME</label>
            <input type="text" 
            class="form-control form-control-lg" 
            name="tusername" 
            placeholder="ชือผู้ใช้" required>
</div>
    <div class="mb-3">
            <label class="form-label">PASSWORD</label>
            <input type="password" 
            class="form-control form-control-lg" 
            name="tpassword" 
            placeholder="รหัส" required>
            </select> 
        </div>
        <div>
        <input type="submit" name="bSubmitUser" class="btn btn-primary" value="บันทึกข้อมูล"></div>
    </form>
</div>