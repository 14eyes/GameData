require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005804Trigger = class("Q4005804Trigger", GadgetActorProxy)
Q4005804Trigger.defaultAlias = "Q4005804Trigger"
local Q40058ClientConfig = require("Quest/Client/Q40058ClientConfig")

local subIDs = Q40058ClientConfig.SubIDs
local npcs = Q40058ClientConfig.Npcs
local datas = Q40058ClientConfig.Datas

function Q4005804Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005804Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005804Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005804)
    self:DestroySelf()
end

function Q4005804Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005804Trigger
