require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010110_TriggerIn = class("Q4010110_TriggerIn", GadgetActorProxy)
Q4010110_TriggerIn.defaultAlias = "Q4010110_TriggerIn"
local Q40101ClientConfig = require("Quest/Client/Q40101ClientConfig")

local this
local subIDs = Q40101ClientConfig.SubIDs
local npcs = Q40101ClientConfig.Npcs
local points = Q40101ClientConfig.Points
local datas = Q40101ClientConfig.Datas

function Q4010110_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010110_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010110_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40101"):NarratorOnlyTaskByData(datas.Q4010109_NarratorWithId)
    this:DestroySelf()
end

function Q4010110_TriggerIn:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010110_TriggerIn:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010110_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q4010110_TriggerIn
