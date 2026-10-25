require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73032Trigger_7303206 = class("Q73032Trigger_7303206", GadgetActorProxy)
Q73032Trigger_7303206.defaultAlias = "Q73032Trigger_7303206"
local Q73032ClientConfig = require("Quest/Client/Q73032ClientConfig")

local subIDs = Q73032ClientConfig.SubIDs
local npcs = Q73032ClientConfig.Npcs
local datas = Q73032ClientConfig.Datas

function Q73032Trigger_7303206:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73032Trigger_7303206:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73032Trigger_7303206:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7303206)
    self:DestroySelf()
end

function Q73032Trigger_7303206:TriggerOut()
    print("TriggerOut")
end

return Q73032Trigger_7303206
