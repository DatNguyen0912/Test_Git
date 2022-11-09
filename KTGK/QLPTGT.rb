class Phuongtien
    attr_accessor :id114, :hangsanxuat114, :namsanxuat114, :dongxe114, :giaban114, :bienso114, :mauxe114
    def initialize(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114)
        @id114 = id114
        @hangsanxuat114 = hangsanxuat114
        @namsanxuat114 = namsanxuat114
        @dongxe114 = dongxe114
        @giaban114 = giaban114
        @bienso114 = bienso114
        @mauxe114 = mauxe114     
    end
    def hienthi
        puts ""
    end
end
class Oto < Phuongtien
    attr_accessor :sochongoi114, :kieudongco114, :nhienlieu114 , :sotuikhi114 , :ngaydangkiem114
    def initialize(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114,sochongoi114,kieudongco114,nhienlieu114,sotuikhi114,ngaydangkiem114)
        super(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114)
        @sochongoi114 = sochongoi114
        @kieudongco114 = kieudongco114
        @nhienlieu114 = nhienlieu114
        @sotuikhi114 = sotuikhi114
        @ngaydangkiem114 = ngaydangkiem114
    end
    def hienthi
        puts "Mã Oto :#{id114} Hàng sản xuất: #{hangsanxuat114} Năm sản xuất: #{namsanxuat114} Dòng xe: #{dongxe114} Giá bán: #{giaban114} Biến số: #{bienso114} Màu xe: #{mauxe114} Số chỗ ngồi: #{sochongoi114} Kiểu động cơ: #{kieudongco1141} Nhiên liêu: #{nhienlieu114}  Số túi khí: #{sotuikhi114} Ngày đăng kiểm: #{ngaydangkiem114}"
    end
end
class Xemay < Phuongtien
    attr_accessor :congsuat114, :dungtichbs114114
    def initialize(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114,congsuat114,dungtichbs114114)
        super(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114)
        @congsuat114 = congsuat114
        @dungtichbs114114 = dungtichbs114114
    end
    def hienthi
        puts "Xe máy Mã :#{id114} Hàng sản xuất: #{hangsanxuat114} Năm sản xuất: #{namsanxuat114} Dòng xe: #{dongxe114} Giá bán: #{giaban114} Biến số: #{bienso114} Màu xe: #{mauxe114} Công suất: #{congsuat114} Dung tích bình xăng: #{dungtichbs114}"
    end
end
class Xetai < Phuongtien
    attr_accessor :trongtai114
    def initialize(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114,trongtai114)
        super(id114,hangsanxuat114,namsanxuat114,dongxe114,giaban114,bienso114,mauxe114)
        @trongtai114 = trongtai114
    end
    def hienthi
        puts "Xe tải Mã :#{id114} Hàng sản xuất: #{hangsanxuat114} Năm sản xuất: #{namsanxuat114} Dòng xe: #{dongxe114} Giá bán: #{giaban114} Biến số: #{bienso114} Màu xe: #{mauxe114} Trọng tải: #{trongtai114}"
    end
end
class QLPTGT
    def them
        puts "Nhập ID:"
        id114 = gets.chomp
        puts "Hàng sản xuất"
        hsx = gets.chomp
        puts "Năm sản xuất"
        nsm114 = gets.chomp
        puts "Dòng xe"
        gx = gets.chomp
        puts "Giá bán"
        gb114 = gets.chomp.to_f
        puts "Biển số"
        bs114 = gets.chomp
        puts "Màu xe"
        mx = gets.chomp
        puts "Chọn loại xe"
        puts "1. Oto"
        puts "2. Xe Máy"
        puts "3. Xe tải"
        chon114 = gets.chomp
            if chon114 == "1" then
                puts "Nhập số chỗ ngồi"
                scn114 = gets.chomp
                puts "Kiểu động cơ"
                kdc114 = gets.chomp
                puts "Nhiên liệu(Xăng/dầu)"
                nl114 = gets.chomp
                puts "Số túi khí"
                stk114 = gets.chomp
                puts "Ngày đăng kiểm"
                ndk114 = gets.chomp
                $a.push(Oto.new(id114,hsx,nsm114,gx,gb114,bs114,mx,scn114,kdc114,nl114,stk114,ndk114))
                elsif chon114 == "2" then
                    puts "Nhập công suất"
                    dt114 = gets.chomp
                    puts "Nhập dung tích bình xăng"
                    dtbs114 = gets.chomp
                    $a.push(Xemay.new(id,hsx,nsm114,gx,gb114,bs114,mx,dt,dtbs114))
                elsif chon114 =="3" then
                    puts "Nhập trọng tải"
                    tt114 = gets.chomp
                    $a.push(Xetai.new(id,hsx,nsm114,gx,gb114,bs114,mx,tt114))
                end                          
    end
    def xoa(id)
        $a.each_index{
            |index|
            if $a[index].id114 == id
                $a.delete_at(index)
                puts "Đã xóa #{id}"
            end
        }
    end
    def timkiemtheohang(hang)
        $a.each_index{
            |index|
            if $a[index].hangsanxuat114 == hang
                puts "#{$a[index].hienthi}"
            end
        }
    end
    def timkiemtheomau(mau)
        $a.each_index{
            |index|
            if $a[index].mauxe114 == mau
                puts "#{$a[index].hienthi}"
            end
        }
    end
    def timkiemtheobienso114(bienso114)
        $a.each_index{
            |index|
            if $a[index].bienso114 == bienso114
                puts "#{$a[index].hienthi}"
            end
        }
    end
    def hienthitt
        $a.each_index{
            |index|
            puts "#{$a[index].hienthi}"
        }
    end
end
$a = Array.new
qlpt = QLPTGT.new
loop do 
    puts "1. Thêm các phương tiện trên vào danh sách và hiển thị danh sách."
    puts "2. Xoá(theo ID) các phương tiện thuộc các loại trên."
    puts "3. Tìm phương tiện theo hãng sản xuất, màu, biển số."
    puts "4. Thoát"
    puts "Chọn"
    chon114 = gets.chomp
    case chon114
        when "1"
            qlpt.them
            qlpt.hienthitt
        when "2"
            puts "Nhập id phương tiện cần xóa"
            id114 = gets.chomp
            qlpt.xoa(id114)
        when "3"
            puts "Nhập phương tiện cần tìm theo hàng sản xuất"
            hsx = gets.chomp
            qlpt.timkiemtheohang(hsx)
            puts "Nhập phương tiện cần tìm theo màu"
            mau114 = gets.chomp
            qlpt.timkiemtheomau(mau114)
            puts "Nhập phương tiện cần tìm theo biển số"
            bienso114 = gets.chomp
            qlpt.timkiemtheobienso114(bienso114)
        when "4"
            break
    end
end