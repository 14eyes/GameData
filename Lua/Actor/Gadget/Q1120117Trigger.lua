require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120117Trigger = class("Q1120117Trigger", GadgetActorProxy)
Q1120117Trigger.defaultAlias = "Q1120117Trigger"
local Q11201ClientConfig = require("Quest/Client/Q11201ClientConfig")

local mainID = Q11201ClientConfig.MainID
local actorAlias = Q11201ClientConfig.ActorAlias
local subIDs = Q11201ClientConfig.SubIDs
local npcs = Q11201ClientConfig.Npcs
local datas = Q11201ClientConfig.Datas

function Q1120117Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120117Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(22.27675, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120117Trigger:TriggerIn()
    print("TriggerIn")
    self:NarratorOnlyTaskByData(datas.NarratorWithId7, nil, 0)
end

function Q1120117Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120117Trigger
