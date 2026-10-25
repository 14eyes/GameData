require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300011Trigger = class("Q300011Trigger", GadgetActorProxy)
Q300011Trigger.defaultAlias = "Q300011Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q300011Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300011Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300011Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300011)
    self:DestroySelf()
end

function Q300011Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300011Trigger
