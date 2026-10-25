require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19047Trigger = class("Q19047Trigger", GadgetActorProxy)
Q19047Trigger.defaultAlias = "Q19047Trigger"
local Q19047ClientConfig = require("Quest/Client/Q19047ClientConfig")

local subIDs = Q19047ClientConfig.SubIDs
local npcs = Q19047ClientConfig.Npcs
local datas = Q19047ClientConfig.Datas

function Q19047Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19047Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19047Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19047"):FinishQuestID(false, 1904701)
    self:DestroySelf()
end

function Q19047Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19047Trigger
