require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19084Trigger3 = class("Q19084Trigger3", GadgetActorProxy)
Q19084Trigger3.defaultAlias = "Q19084Trigger3"
local Q19084ClientConfig = require("Quest/Client/Q19084ClientConfig")

local mainID = Q19084ClientConfig.MainID
local actorAlias = Q19084ClientConfig.ActorAlias
local subIDs = Q19084ClientConfig.SubIDs
local npcs = Q19084ClientConfig.Npcs
local datas = Q19084ClientConfig.Datas

function Q19084Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19084Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19084Trigger3:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1908410)
    self:DestroySelf()
end

function Q19084Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19084Trigger3
