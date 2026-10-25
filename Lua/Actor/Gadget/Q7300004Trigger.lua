require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7300004Trigger = class("Q7300004Trigger", GadgetActorProxy)
Q7300004Trigger.defaultAlias = "Q7300004Trigger"
local Q73000ClientConfig = require("Quest/Client/Q73000ClientConfig")

local subIDs = Q73000ClientConfig.SubIDs
local npcs = Q73000ClientConfig.Npcs
local datas = Q73000ClientConfig.Datas

function Q7300004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7300004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7300004Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7300004)
    self:DestroySelf()
end

function Q7300004Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7300004Trigger
