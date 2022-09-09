Function Get-GW2Material {
    <#
    .SYNOPSIS
    Get the account/materials from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/materials" -GW2Profile $GW2Profile 
    }
}
    
Function Get-GW2Mini {
    <#
    .SYNOPSIS
    Get the account/minis from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/minis" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2MountSkin {
    <#
    .SYNOPSIS
    Get the account/mount/skins from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/mount/skins" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2MountType {
    <#
    .SYNOPSIS
    Get the account/mount/types from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/mount/types" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2Novelty {
    <#
    .SYNOPSIS
    Get the account/novelties from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/novelties" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2Outfit {
    <#
.SYNOPSIS
Get the account/outfits from Guild Wars 2 API
#>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/outfits" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2Skin {
    <#
.SYNOPSIS
Get the account/skins from Guild Wars 2 API
#>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "account/skins" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2Color {
    <#
    .SYNOPSIS
    Get the colors/ from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "colors" -GW2Profile $GW2Profile 
    }
}
    
Function Get-GW2Finisher {
    <#
    .SYNOPSIS
    Get the finishers from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile)
    )
    Process {
        Get-GW2APIValue -APIValue "finishers" -GW2Profile $GW2Profile 
    }
}

Function Get-GW2Item {
    <#
    .SYNOPSIS
    Get the items from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile),
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [Alias("id", "ids")]
        [string[]]$ItemID
    )
    Process {
        If ($ItemID) {
            Get-GW2APIValue -APIValue "items" -GW2Profile $GW2Profile -APIParams @{ 'ids' = ($ItemID -join ',') }
        }
        else {
            Get-GW2APIValue -APIValue "items" -GW2Profile $GW2Profile 
        }
    }
}
    
Function Get-GW2ItemStat {
    <#
    .SYNOPSIS
    Get the itemstats from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile),
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [Alias("id", "ids")]
        [string[]]$StatsID
    )
    Process {
        If ($StatsID) {
            Get-GW2APIValue -APIValue "itemstats" -GW2Profile $GW2Profile -APIParams @{ 'ids' = ($StatsID -join ',') }
        }
        else {
            Get-GW2APIValue -APIValue "itemstats" -GW2Profile $GW2Profile 
        }
    }
}
    
Function Get-GW2Material {
    <#
    .SYNOPSIS
    Get the materials/ from Guild Wars 2 API
    #>
    [cmdletbinding()]
    param(
        [string]$GW2Profile = (Get-GW2DefaultProfile),
        [parameter(ValueFromPipelineByPropertyName, ValueFromPipeline)]
        [Alias("id", "ids")]
        [string[]]$MaterialID
    )
    Process {
        If ($MaterialID) {
            Get-GW2APIValue -APIValue "materials" -GW2Profile $GW2Profile -APIParams @{ 'ids' = ($MaterialID -join ',') }
        }
        else {
            Get-GW2APIValue -APIValue "materials" -GW2Profile $GW2Profile 
        }
    }
}
    