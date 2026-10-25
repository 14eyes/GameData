require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19027Trigger2 = class("Q19027Trigger2", GadgetActorProxy)
Q19027Trigger2.defaultAlias = "Q19027Trigger2"
local Q19027ClientConfig = require("Quest/Client/Q19027ClientConfig")

local subIDs = Q19027ClientConfig.SubIDs
local npcs = Q19027ClientConfig.Npcs
local datas = Q19027ClientConfig.Datas

function Q19027Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19027Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19027Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19027"):FinishQuestID(false, 1902706)
    self:DestroySelf()
end

function Q19027Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19027Trigger2
