require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005403Trigger = class("Q4005403Trigger", GadgetActorProxy)
Q4005403Trigger.defaultAlias = "Q4005403Trigger"
local Q40054ClientConfig = require("Quest/Client/Q40054ClientConfig")

local subIDs = Q40054ClientConfig.SubIDs
local npcs = Q40054ClientConfig.Npcs
local datas = Q40054ClientConfig.Datas

function Q4005403Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005403Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005403Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005403)
    self:DestroySelf()
end

function Q4005403Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005403Trigger
