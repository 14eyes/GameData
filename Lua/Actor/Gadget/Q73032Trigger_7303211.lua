require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73032Trigger_7303211 = class("Q73032Trigger_7303211", GadgetActorProxy)
Q73032Trigger_7303211.defaultAlias = "Q73032Trigger_7303211"
local Q73032ClientConfig = require("Quest/Client/Q73032ClientConfig")

local subIDs = Q73032ClientConfig.SubIDs
local npcs = Q73032ClientConfig.Npcs
local datas = Q73032ClientConfig.Datas

function Q73032Trigger_7303211:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73032Trigger_7303211:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73032Trigger_7303211:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303211)
    self:DestroySelf()
end

function Q73032Trigger_7303211:TriggerOut()
    print("TriggerOut")
end

return Q73032Trigger_7303211
