require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3008StageTrigger = class("Q3008StageTrigger", GadgetActorProxy)
Q3008StageTrigger.defaultAlias = "Q3008StageTrigger"
local Q3008ClientConfig = require("Quest/Client/Q3008ClientConfig")

local subIDs = Q3008ClientConfig.SubIDs
local npcs = Q3008ClientConfig.Npcs
local datas = Q3008ClientConfig.Datas

function Q3008StageTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3008StageTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(19, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3008StageTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3008"):RequestInteraction("Npc1054")
    self:DestroySelf()
end

function Q3008StageTrigger:TriggerOut()
    print("TriggerOut")
end

return Q3008StageTrigger
