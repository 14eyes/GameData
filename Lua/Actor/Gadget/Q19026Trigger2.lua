require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19026Trigger2 = class("Q19026Trigger2", GadgetActorProxy)
Q19026Trigger2.defaultAlias = "Q19026Trigger2"
local Q19026ClientConfig = require("Quest/Client/Q19026ClientConfig")

local subIDs = Q19026ClientConfig.SubIDs
local npcs = Q19026ClientConfig.Npcs

function Q19026Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19026Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19026Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19026"):FinishQuestID(false, 1902605)
    self:DestroySelf()
end

function Q19026Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19026Trigger2
