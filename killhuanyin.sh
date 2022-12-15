./adb shell device_config \
    set_sync_disabled_for_tests persistent || {
        die "failed to freeze config [Try executing again]"
    }
./adb \
    shell \
    device_config \
    put activity_manager \
    max_phantom_processes 214181594 || {
    die "Failed to set max_phantom_processes [Try executing again]"
}
