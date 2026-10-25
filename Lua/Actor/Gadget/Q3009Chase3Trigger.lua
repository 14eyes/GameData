require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009Chase3Trigger = class("Q3009Chase3Trigger", GadgetActorProxy)
Q3009Chase3Trigger.defaultAlias = "Q3009Chase3Trigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009Chase3Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009Chase3Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009Chase3Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300911)
    self:DestroySelf()
end

function Q3009Chase3Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3009Chase3Trigger
