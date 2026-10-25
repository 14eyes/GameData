require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q23039Trigger = class("Q23039Trigger", GadgetActorProxy)
Q23039Trigger.defaultAlias = "Q23039Trigger"
local Q23039ClientConfig = require("Quest/Client/Q23039ClientConfig")

local subIDs = Q23039ClientConfig.SubIDs
local npcs = Q23039ClientConfig.Npcs
local datas = Q23039ClientConfig.Datas

function Q23039Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q23039Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, sceneData:GetDummyPoint(3, "Q23039_RacingEnd"), self.TriggerIn, self.TriggerOut)
end

function Q23039Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(true, 2303903)
    self:DestroySelf()
end

function Q23039Trigger:TriggerOut()
    print("TriggerOut")
end

return Q23039Trigger
