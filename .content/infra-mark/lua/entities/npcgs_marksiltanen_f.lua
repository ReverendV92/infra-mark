
AddCSLuaFile( )

if not ConVarExists( "npcg_wakeradius_marksiltanen" ) then CreateConVar( "npcg_wakeradius_marksiltanen" , "128" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_squad_marksiltanen" ) then CreateConVar( "npcg_squad_marksiltanen" , "1" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end
if not ConVarExists( "npcg_accuracy_marksiltanen" ) then CreateConVar( "npcg_accuracy_marksiltanen" , "4" , { FCVAR_REPLICATED , FCVAR_ARCHIVE } ) end

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "Mark Siltanen Friendly"
ENT.Author = "V92"
ENT.Information = ""
ENT.Category = "NPCGroups"

ENT.Spawnable = false
ENT.AdminOnly = false

-- local WeaponTbl = { "weapon_annabelle" }

if SERVER then

	function ENT:Initialize( )

		if ConVarExists("npcg_weapondrop") and GetConVarNumber("npcg_weapondrop") != 0 then	self.weaponNum = 8192 else self.weaponNum = 0 end
		if ConVarExists("npcg_ignorepushing") and GetConVarNumber("npcg_ignorepushing") != 0 then self.pushNum = 16384 else self.pushNum = 0 end
		if ConVarExists("npcg_fade_corpse") and GetConVarNumber("npcg_fade_corpse") != 0 then self.fadeNum = 512 else self.fadeNum = 0 end
		if ConVarExists("npcg_longvision") and GetConVarNumber("npcg_longvision") != 0 then self.longNum = 256 else self.longNum = 0 end

		local medicDiceRoll = math.random( 1 , GetConVarNumber( "npcg_medicchance" ) )
		if medicDiceRoll == 1 then self.medicChance = 131072 else self.medicChance = 0 end

		local rebSupplyDiceRoll = math.random( 1 , GetConVarNumber( "npcg_rebelresupplychance" ) )
		if rebSupplyDiceRoll == 1 then self.resupplyChance = 524288 else self.resupplyChance = 0 end

		self.kvNum = 0

		self.ent1 = ents.Create( "npc_citizen" )
		self.ent1:SetKeyValue( "citizentype" , 4 )
		self.ent1:SetPos( self:GetPos( ) + self:GetForward( ) + self:GetRight( ) )
		self.ent1:SetModel( Model( "models/jessev92/characters/highvis/mark/npccit.mdl") )
		-- self.ent1:SetColor( Color( 200 , 225 , 130 ) )
		self.ent1:SetKeyValue( "DontPickupWeapons" , 1 )
		-- self.ent1:SetKeyValue( "additionalequipment" , table.Random( WeaponTbl ) )
		self.ent1:SetKeyValue( "Expression Type" , "Neutral" )
		self.ent1:SetKeyValue( "spawnflags" , tostring( self.kvNum + self.longNum + self.weaponNum + self.pushNum + self.fadeNum + self.resupplyChance + self.medicChance ) )
		self.ent1:SetKeyValue( "wakeradius" , GetConVarNumber( "npcg_wakeradius_marksiltanen" ) )
		self.ent1:Spawn( )
		self.ent1:Activate( )
		self.ent1:SetSchedule( SCHED_IDLE_WANDER )

		if ConVarExists( "npcg_randomyaw" ) and GetConVarNumber( "npcg_randomyaw" ) == 0 then

			self.ent1:SetAngles( Angle( 0 , 270 , 0 ) )

		else

			self.ent1:SetAngles( Angle( 0 , math.random( 0 , 360 ) , 0 ) )

		end

		if GetConVarNumber( "npcg_squad_marksiltanen" ) != 0 then
			self.ent1:SetKeyValue( "SquadName", "INFRA-Friendly" )
		end

		if GetConVarNumber( "npcg_squad_wakeupall" ) != 0 then 
			self.ent1:SetKeyValue( "wakesquad" , 1 ) 
		end

		if GetConVarNumber("npcg_accuracy_marksiltanen") >= 4 then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_PERFECT)
		elseif GetConVarNumber("npcg_accuracy_marksiltanen") == 3 then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_VERY_GOOD)
		elseif GetConVarNumber("npcg_accuracy_marksiltanen") == 2 then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_GOOD)
		elseif GetConVarNumber("npcg_accuracy_marksiltanen") == 1 then
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_AVERAGE)
		else
			self.ent1:SetCurrentWeaponProficiency(WEAPON_PROFICIENCY_POOR) 	
		end

		timer.Simple( 0 , function( )

			undo.Create( self.PrintName )
			if self.ent1:IsValid( ) then undo.AddEntity( self.ent1 ) end
			undo.SetCustomUndoText( "Undone " .. self.PrintName )
			undo.SetPlayer(self.Owner)
			undo.Finish( )
			self:Remove( )

		end )

	end

end
