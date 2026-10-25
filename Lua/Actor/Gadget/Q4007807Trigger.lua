require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007807Trigger = class("Q4007807Trigger", GadgetActorProxy)
Q4007807Trigger.defaultAlias = "Q4007807Trigger"
local Q40078ClientConfig = require("Quest/Client/Q40078ClientConfig")

local subIDs = Q40078ClientConfig.SubIDs
local npcs = Q40078ClientConfig.Npcs
local gadgets = Q40078ClientConfig.Gadgets
local datas = Q40078ClientConfig.Datas

function Q4007807Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007807Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13.30872, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007807Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007807)
    self:DestroySelf()
end

function Q4007807Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007807Trigger
