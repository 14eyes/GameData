require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q10502Trigger = class("Q10502Trigger", GadgetActorProxy)
Q10502Trigger.defaultAlias = "Q10502Trigger"
local Q10502ClientConfig = require("Quest/Client/Q10502ClientConfig")

local mainID = Q10502ClientConfig.MainID
local actorAlias = Q10502ClientConfig.ActorAlias
local subIDs = Q10502ClientConfig.SubIDs
local npcs = Q10502ClientConfig.Npcs
local gadgets = Q10502ClientConfig.Gadgets
local datas = Q10502ClientConfig.Datas

function Q10502Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q10502Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q10502Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q10502ClientConfig.ActorAlias)
    actor:GetQuestNpcActor(npcs.Npc10095Data3.alias):StandFromChair()
    actor:RequestInteraction(npcs.Npc10095Data3.alias)
    self:DestroySelf()
end

function Q10502Trigger:TriggerOut()
    print("TriggerOut")
end

return Q10502Trigger
