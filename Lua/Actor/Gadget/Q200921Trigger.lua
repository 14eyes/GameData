require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q200921Trigger = class("Q200921Trigger", GadgetActorProxy)
Q200921Trigger.defaultAlias = "Q200921Trigger"
local Q2009ClientConfig = require("Quest/Client/Q2009ClientConfig")

local mainID = Q2009ClientConfig.MainID
local actorAlias = Q2009ClientConfig.ActorAlias
local subIDs = Q2009ClientConfig.SubIDs
local npcs = Q2009ClientConfig.Npcs
local gadgets = Q2009ClientConfig.Gadgets
local datas = Q2009ClientConfig.Datas

function Q200921Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q200921Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q200921Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 200921)
    self:DestroySelf()
end

function Q200921Trigger:TriggerOut()
    print("TriggerOut")
end

return Q200921Trigger
