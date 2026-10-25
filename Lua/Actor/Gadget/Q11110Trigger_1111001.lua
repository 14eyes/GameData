require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11110Trigger_1111001 = class("Q11110Trigger_1111001", GadgetActorProxy)
Q11110Trigger_1111001.defaultAlias = "Q11110Trigger_1111001"
local Q11110ClientConfig = require("Quest/Client/Q11110ClientConfig")

local mainID = Q11110ClientConfig.MainID
local actorAlias = Q11110ClientConfig.ActorAlias
local subIDs = Q11110ClientConfig.SubIDs
local npcs = Q11110ClientConfig.Npcs
local datas = Q11110ClientConfig.Datas

function Q11110Trigger_1111001:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11110Trigger_1111001:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11110Trigger_1111001:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):RequestInteraction(npcs.Npc10366Data.alias)
    actorMgr:DestroyEntityActor(datas.Q11110Trigger_1111001_.alias, 3, false)
end

function Q11110Trigger_1111001:TriggerOut()
    print("TriggerOut")
end

return Q11110Trigger_1111001
