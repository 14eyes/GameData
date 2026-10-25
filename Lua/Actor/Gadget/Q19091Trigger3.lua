require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19091Trigger3 = class("Q19091Trigger3", GadgetActorProxy)
Q19091Trigger3.defaultAlias = "Q19091Trigger3"
local Q19091ClientConfig = require("Quest/Client/Q19091ClientConfig")

local mainID = Q19091ClientConfig.MainID
local actorAlias = Q19091ClientConfig.ActorAlias
local subIDs = Q19091ClientConfig.SubIDs
local npcs = Q19091ClientConfig.Npcs
local gadgets = Q19091ClientConfig.Gadgets
local datas = Q19091ClientConfig.Datas

function Q19091Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19091Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19091Trigger3:TriggerIn()
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 1909104)
    self:DestroySelf()
end

function Q19091Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q19091Trigger3
