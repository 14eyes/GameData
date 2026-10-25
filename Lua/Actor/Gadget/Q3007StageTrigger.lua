require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3007StageTrigger = class("Q3007StageTrigger", GadgetActorProxy)
Q3007StageTrigger.defaultAlias = "Q3007StageTrigger"
local Q3007ClientConfig = require("Quest/Client/Q3007ClientConfig")

local subIDs = Q3007ClientConfig.SubIDs
local npcs = Q3007ClientConfig.Npcs
local datas = Q3007ClientConfig.Datas

function Q3007StageTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3007StageTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3007StageTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3007"):RequestInteraction(npcs.Npc1054Data.alias)
    self:DestroySelf()
end

function Q3007StageTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3007StageTrigger
