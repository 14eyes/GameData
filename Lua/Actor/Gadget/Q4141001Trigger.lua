require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141001Trigger = class("Q4141001Trigger", GadgetActorProxy)
Q4141001Trigger.defaultAlias = "Q4141001Trigger"
local Q41410ClientConfig = require("Quest/Client/Q41410ClientConfig")

local mainID = Q41410ClientConfig.MainID
local actorAlias = Q41410ClientConfig.ActorAlias
local subIDs = Q41410ClientConfig.SubIDs
local npcs = Q41410ClientConfig.Npcs
local datas = Q41410ClientConfig.Datas

function Q4141001Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141001Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141001Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4141001)
    self:DestroySelf()
end

function Q4141001Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4141001Trigger
