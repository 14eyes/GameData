require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4005912Trigger = class("Q4005912Trigger", GadgetActorProxy)
Q4005912Trigger.defaultAlias = "Q4005912Trigger"
local Q40059ClientConfig = require("Quest/Client/Q40059ClientConfig")

local subIDs = Q40059ClientConfig.SubIDs
local npcs = Q40059ClientConfig.Npcs
local gadgets = Q40059ClientConfig.Gadgets
local datas = Q40059ClientConfig.Datas

function Q4005912Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4005912Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4005912Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4005912)
    self:DestroySelf()
end

function Q4005912Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4005912Trigger
