require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200302Trigger = class("Q200302Trigger", GadgetActorProxy)
Q200302Trigger.defaultAlias = "Q200302Trigger"
local Q2003ClientConfig = require("Quest/Client/Q2003ClientConfig")

local mainID = Q2003ClientConfig.MainID
local actorAlias = Q2003ClientConfig.ActorAlias
local subIDs = Q2003ClientConfig.SubIDs
local npcs = Q2003ClientConfig.Npcs
local datas = Q2003ClientConfig.Datas

function Q200302Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200302Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200302Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(200302, npcs.Npc1033Data.id, 0)
    actor:RequestInteraction(npcs.Npc1033Data.alias)
    self:DestroySelf()
end

function Q200302Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200302Trigger
