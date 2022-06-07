
size = "Standard_F2"

admin_info = ({
    admin_username = "claranet"
    admin_password = "claranet2022"
})

os_disk_info = ({
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
})


source_image_reference_info =({
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
})

network_interface_ids = "192.168.10.25"
