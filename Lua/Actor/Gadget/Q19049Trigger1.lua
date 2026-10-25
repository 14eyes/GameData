require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19049Trigger1 = class("Q19049Trigger1", GadgetActorProxy)
Q19049Trigger1.defaultAlias = "Q19049Trigger1"
local Q19049ClientConfig = require("Quest/Client/Q19049ClientConfig")

local subIDs = Q19049ClientConfig.SubIDs
local npcs = Q19049ClientConfig.Npcs

function Q19049Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19049Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19049Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1904906)
    self:DestroySelf()
end

function Q19049Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19049Trigger1
