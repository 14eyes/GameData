require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120096Trigger = class("Q1120096Trigger", GadgetActorProxy)
Q1120096Trigger.defaultAlias = "Q1120096Trigger"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q1120096Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120096Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.539019, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120096Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId4)
    actorMgr:DestroyEntityActor(datas.Q1120096Trigger_.alias, 3, false)
end

function Q1120096Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120096Trigger
