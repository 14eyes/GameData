require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007216_Trigger = class("Q4007216_Trigger", GadgetActorProxy)
Q4007216_Trigger.defaultAlias = "Q4007216_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local gadgets = Q40072ClientConfig.Gadgets
local datas = Q40072ClientConfig.Datas

function Q4007216_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007216_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007216_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007216)
    self:DestroySelf()
end

function Q4007216_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007216_Trigger
