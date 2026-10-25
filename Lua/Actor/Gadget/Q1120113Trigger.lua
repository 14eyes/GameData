require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120113Trigger = class("Q1120113Trigger", GadgetActorProxy)
Q1120113Trigger.defaultAlias = "Q1120113Trigger"
local Q11201ClientConfig = require("Quest/Client/Q11201ClientConfig")

local mainID = Q11201ClientConfig.MainID
local actorAlias = Q11201ClientConfig.ActorAlias
local subIDs = Q11201ClientConfig.SubIDs
local npcs = Q11201ClientConfig.Npcs
local datas = Q11201ClientConfig.Datas

function Q1120113Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120113Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(17.13778, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120113Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):NarratorOnlyTaskByData(datas.NarratorWithId4, nil, 0)
    self:Destroy(false)
end

function Q1120113Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120113Trigger
