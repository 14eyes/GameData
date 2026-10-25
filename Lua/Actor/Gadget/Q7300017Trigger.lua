require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300017Trigger = class("Q7300017Trigger", GadgetActorProxy)
Q7300017Trigger.defaultAlias = "Q7300017Trigger"
local Q73000ClientConfig = require("Quest/Client/Q73000ClientConfig")

local subIDs = Q73000ClientConfig.SubIDs
local npcs = Q73000ClientConfig.Npcs
local datas = Q73000ClientConfig.Datas

function Q7300017Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7300017Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300017Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300017)
    self:DestroySelf()
end

function Q7300017Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7300017Trigger
