require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q22016Trigger = class("Q22016Trigger", GadgetActorProxy)
Q22016Trigger.defaultAlias = "Q22016Trigger"
local Q22016ClientConfig = require("Quest/Client/Q22016ClientConfig")

local subIDs = Q22016ClientConfig.SubIDs
local npcs = Q22016ClientConfig.Npcs
local datas = Q22016ClientConfig.Datas

function Q22016Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q22016Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q22016Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("22016"):FinishQuestID(false, 2201604)
    self:DestroySelf()
end

function Q22016Trigger:TriggerOut()
    print("TriggerOut")
end

return Q22016Trigger
