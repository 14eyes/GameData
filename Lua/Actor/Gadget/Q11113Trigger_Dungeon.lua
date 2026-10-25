require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11113Trigger_Dungeon = class("Q11113Trigger_Dungeon", GadgetActorProxy)
Q11113Trigger_Dungeon.defaultAlias = "Q11113Trigger_Dungeon"
local Q11113ClientConfig = require("Quest/Client/Q11113ClientConfig")

local mainID = Q11113ClientConfig.MainID
local actorAlias = Q11113ClientConfig.ActorAlias
local subIDs = Q11113ClientConfig.SubIDs
local npcs = Q11113ClientConfig.Npcs
local gadgets = Q11113ClientConfig.Gadgets
local datas = Q11113ClientConfig.Datas

function Q11113Trigger_Dungeon:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11113Trigger_Dungeon:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11113Trigger_Dungeon:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10349Data.alias)
    actorMgr:DestroyEntityActor(datas.Q11113Trigger_Dungeon_.alias, 3, false)
end

function Q11113Trigger_Dungeon:TriggerOut()
    print("TriggerOut")
end

return Q11113Trigger_Dungeon
