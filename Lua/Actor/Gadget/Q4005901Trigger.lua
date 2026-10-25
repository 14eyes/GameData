require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005901Trigger = class("Q4005901Trigger", GadgetActorProxy)
Q4005901Trigger.defaultAlias = "Q4005901Trigger"
local Q40059ClientConfig = require("Quest/Client/Q40059ClientConfig")

local subIDs = Q40059ClientConfig.SubIDs
local npcs = Q40059ClientConfig.Npcs
local gadgets = Q40059ClientConfig.Gadgets
local datas = Q40059ClientConfig.Datas

function Q4005901Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005901Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005901Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005901)
    self:DestroySelf()
end

function Q4005901Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005901Trigger
