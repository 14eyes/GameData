require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120208Trigger = class("Q1120208Trigger", GadgetActorProxy)
Q1120208Trigger.defaultAlias = "Q1120208Trigger"
local Q11202ClientConfig = require("Quest/Client/Q11202ClientConfig")

local mainID = Q11202ClientConfig.MainID
local actorAlias = Q11202ClientConfig.ActorAlias
local subIDs = Q11202ClientConfig.SubIDs
local npcs = Q11202ClientConfig.Npcs
local datas = Q11202ClientConfig.Datas

function Q1120208Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120208Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4.596468, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120208Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId1, nil, 0)
end

function Q1120208Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120208Trigger
