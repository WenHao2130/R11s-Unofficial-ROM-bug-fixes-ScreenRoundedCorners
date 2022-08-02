#!/system/bin/sh
# 请不要硬编码 /magisk/modname/... ; 请使用 $MODDIR/...
# 这将使你的脚本更加兼容，即使Magisk在未来改变了它的挂载点
MODDIR=${0%/*}

# 这个脚本将以 late_start service 模式执行
# 更多信息请访问 Magisk 主题

setprop persist.sys.qcom-brightness $(cat /sys/class/leds/lcd-backlight/max_brightness)
setprop persist.sys.overlay.devinputjack true
setprop persist.dbg.ims_volte_enable 1
setprop persist.dbg.volte_avail_ovr 1
setprop persist.dbg.vt_avail_ovr 1
setprop persist.dbg.wfc_avail_ovr
echo '1' > /sys/class/power_supply/usb/otg_switch
