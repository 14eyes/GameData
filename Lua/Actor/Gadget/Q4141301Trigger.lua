require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141301Trigger = class("Q4141301Trigger", GadgetActorProxy)
Q4141301Trigger.defaultAlias = "Q4141301Trigger"
local Q41413ClientConfig = require("Quest/Client/Q41413ClientConfig")

local mainID = Q41413ClientConfig.MainID
local actorAlias = Q41413ClientConfig.ActorAlias
local subIDs = Q41413ClientConfig.SubIDs
local npcs = Q41413ClientConfig.Npcs
local datas = Q41413ClientConfig.Datas

function Q4141301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141301Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4141301)
    self:DestroySelf()
end

function Q4141301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141301Trigger
