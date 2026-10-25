require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007908Trigger = class("Q4007908Trigger", GadgetActorProxy)
Q4007908Trigger.defaultAlias = "Q4007908Trigger"
local Q40079ClientConfig = require("Quest/Client/Q40079ClientConfig")

local subIDs = Q40079ClientConfig.SubIDs
local npcs = Q40079ClientConfig.Npcs
local datas = Q40079ClientConfig.Datas

function Q4007908Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007908Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007908Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40079"):NotifyTo(npcs.Npc1531Data.alias, 1, true)
end

function Q4007908Trigger:TriggerOut()
    print("TriggerOut")
    local actor = actorMgr:GetActor("40079")
    actor:SafeDestroyQuestNpc(npcs.DilucData.alias, 1018)
    actor:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
    self:DestroySelf()
end

return Q4007908Trigger
