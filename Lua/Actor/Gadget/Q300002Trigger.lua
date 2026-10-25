require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300002Trigger = class("Q300002Trigger", GadgetActorProxy)
Q300002Trigger.defaultAlias = "Q300002Trigger"
local Q3000ClientConfig = require("Quest/Client/Q3000ClientConfig")

local subIDs = Q3000ClientConfig.SubIDs
local npcs = Q3000ClientConfig.Npcs
local datas = Q3000ClientConfig.Datas

function Q300002Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300002Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300002Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300002)
    self:DestroySelf()
end

function Q300002Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300002Trigger
