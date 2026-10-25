require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11111Trigger = class("Q11111Trigger", GadgetActorProxy)
Q11111Trigger.defaultAlias = "Q11111Trigger"
local Q11111ClientConfig = require("Quest/Client/Q11111ClientConfig")

local mainID = Q11111ClientConfig.MainID
local actorAlias = Q11111ClientConfig.ActorAlias
local subIDs = Q11111ClientConfig.SubIDs
local npcs = Q11111ClientConfig.Npcs
local datas = Q11111ClientConfig.Datas

function Q11111Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11111Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11111Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10366Data.alias)
    actorMgr:DestroyEntityActor(datas.Q11111Trigger_.alias, 3, false)
end

function Q11111Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11111Trigger
