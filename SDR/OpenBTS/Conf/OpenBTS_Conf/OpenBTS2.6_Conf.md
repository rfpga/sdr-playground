# BTS配置

## 配置OpenBTS：

将app/下的openbts.example.config复制为openbts.config，通过修改openbts.config相关参数配置OpenBTS。

* 设置PLMN（MCC+MNC），MCC为国家号，例如中国为460，MNC为网络号，例如中国移动为01和02。最好将OpenBTS的PLMN设置为手机prefer PLMN 列表中的PLMN号，使手机能够更为顺利找到OpenBTS。此处我们设置为460-02，为中国移动在1800MHz频段备用的PLMN号，一般国内的手机都将此PLMN号列入prefer PLMN列表。（后来我们一直用001 01这个号，是一个测试用的PLMN号，保证不会与运营商的网络冲突。）

* 设置工作频段，此处我们使用900MHz频段，将频段设为900MHz。

* 设置ARFCN，需要将OpenBTS的工作频点（ARFCN）设置为当前空闲的频点，通过usrp_fft.py扫描900MHz下行频段，找到空闲的频点（f）。900MHz下行频段的ARFCN可以通过公式ARFCN=(f-935)/0.2得到。此处我们使用35号频点（即942MHz）（这里我们是通过频谱扫描确定的频点，建议你们也先观察一下，看哪个频点是可用的。）
