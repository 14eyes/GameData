require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19115Trigger = class("Q19115Trigger", GadgetActorProxy)
Q19115Trigger.defaultAlias = "Q19115Trigger"
local Q19115ClientConfig = require("Quest/Client/Q19115ClientConfig")

local mainID = Q19115ClientConfig.MainID
local actorAlias = Q19115ClientConfig.ActorAlias
local subIDs = Q19115ClientConfig.SubIDs
local npcs = Q19115ClientConfig.Npcs
local datas = Q19115ClientConfig.Datas

function Q19115Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19115Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19115Trigger:TriggerIn()
    print("TriggerIn")
end

function Q19115Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1911502)
    self:DestroySelf()
end

return Q19115Trigger
