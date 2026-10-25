require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19039Trigger = class("Q19039Trigger", GadgetActorProxy)
Q19039Trigger.defaultAlias = "Q19039Trigger"
local Q19039ClientConfig = require("Quest/Client/Q19039ClientConfig")

local subIDs = Q19039ClientConfig.SubIDs
local npcs = Q19039ClientConfig.Npcs
local datas = Q19039ClientConfig.Datas

function Q19039Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19039Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19039Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1903906)
    self:DestroySelf()
end

function Q19039Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19039Trigger
