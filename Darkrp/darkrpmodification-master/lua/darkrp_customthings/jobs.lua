--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
http://wiki.darkrp.com/index.php/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {"models/player/Group01/Female_01.mdl", "models/player/Group01/Female_02.mdl", "models/player/Group01/Female_03.mdl", "models/player/Group01/Female_04.mdl", "models/player/Group01/Female_06.mdl", "models/player/group01/male_01.mdl", "models/player/Group01/Male_02.mdl", "models/player/Group01/male_03.mdl", "models/player/Group01/Male_04.mdl", "models/player/Group01/Male_05.mdl", "models/player/Group01/Male_06.mdl", "models/player/Group01/Male_07.mdl", "models/player/Group01/Male_08.mdl", "models/player/Group01/Male_09.mdl"},
    description = [[Be a simple everyday citizen or be a criminal.]],
    weapons = {"weapon_fists", },
    command = "citizen",
    max = 0,
    salary = 30,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_GPOFFICER = DarkRP.createJob("Spetsnaz", {
    color = Color(119, 21, 21, 255),
    model = {"models/half-dead/modern spetsnaz/male_02.mdl", "models/half-dead/modern spetsnaz/male_01.mdl", "models/half-dead/modern spetsnaz/male_10.mdl"},
    description = [[Special forces of the Red Army.]],
    weapons = {"tfa_ak74", "tfa_mp9, "arrest_stick", "stunstick", "unarrest_stick", "weaponchecker"q},
    command = "spetsnaz",
    max = 6,
    salary = 130,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Soviet Army",
	PlayerSpawn = function(ply) ply:SetHealth(150) ply:SetMaxHealth(150) ply:SetArmor(50)  end,
})

--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
