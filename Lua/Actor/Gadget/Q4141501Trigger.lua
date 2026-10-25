require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4141501Trigger = class("Q4141501Trigger", GadgetActorProxy)
Q4141501Trigger.defaultAlias = "Q4141501Trigger"
local Q41415ClientConfig = require("Quest/Client/Q41415ClientConfig")

local mainID = Q41415ClientConfig.MainID
local actorAlias = Q41415ClientConfig.ActorAlias
local subIDs = Q41415ClientConfig.SubIDs
local npcs = Q41415ClientConfig.Npcs
local datas = Q41415ClientConfig.Datas

function Q4141501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4141501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4141501Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4141501Trigger:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor(actorAlias):FinishQuestID(false, 4141501)
    self:DestroySelf()
end

return Q4141501Trigger
