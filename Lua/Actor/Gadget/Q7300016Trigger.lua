require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300016Trigger = class("Q7300016Trigger", GadgetActorProxy)
Q7300016Trigger.defaultAlias = "Q7300016Trigger"
local Q73000ClientConfig = require("Quest/Client/Q73000ClientConfig")

local subIDs = Q73000ClientConfig.SubIDs
local npcs = Q73000ClientConfig.Npcs
local datas = Q73000ClientConfig.Datas

function Q7300016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7300016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300016Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300016)
    self:DestroySelf()
end

function Q7300016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7300016Trigger
