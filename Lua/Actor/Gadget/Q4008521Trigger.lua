require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008521Trigger = class("Q4008521Trigger", GadgetActorProxy)
Q4008521Trigger.defaultAlias = "Q4008521Trigger"
local Q40085ClientConfig = require("Quest/Client/Q40085ClientConfig")

local subIDs = Q40085ClientConfig.SubIDs
local npcs = Q40085ClientConfig.Npcs
local gadgets = Q40085ClientConfig.Gadgets
local datas = Q40085ClientConfig.Datas

function Q4008521Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008521Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008521Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008521)
    self:DestroySelf()
end

function Q4008521Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008521Trigger
