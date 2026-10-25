require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19049Trigger2 = class("Q19049Trigger2", GadgetActorProxy)
Q19049Trigger2.defaultAlias = "Q19049Trigger2"
local Q19049ClientConfig = require("Quest/Client/Q19049ClientConfig")

local subIDs = Q19049ClientConfig.SubIDs
local npcs = Q19049ClientConfig.Npcs

function Q19049Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19049Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19049Trigger2:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1904908)
    self:DestroySelf()
end

function Q19049Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19049Trigger2
