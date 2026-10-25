require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19024Trigger = class("Q19024Trigger", GadgetActorProxy)
Q19024Trigger.defaultAlias = "Q19024Trigger"
local Q19024ClientConfig = require("Quest/Client/Q19024ClientConfig")

local mainID = Q19024ClientConfig.MainID
local actorAlias = Q19024ClientConfig.ActorAlias
local subIDs = Q19024ClientConfig.SubIDs
local npcs = Q19024ClientConfig.Npcs
local datas = Q19024ClientConfig.Datas

function Q19024Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19024Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19024Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1902402)
    self:DestroySelf()
end

function Q19024Trigger:TriggerOut()
    print("TriggerOut")
end

return Q19024Trigger
