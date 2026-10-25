require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4010111_TriggerIn_2 = class("Q4010111_TriggerIn_2", GadgetActorProxy)
Q4010111_TriggerIn_2.defaultAlias = "Q4010111_TriggerIn_2"
local Q40101ClientConfig = require("Quest/Client/Q40101ClientConfig")

local this
local subIDs = Q40101ClientConfig.SubIDs
local npcs = Q40101ClientConfig.Npcs
local points = Q40101ClientConfig.Points
local datas = Q40101ClientConfig.Datas

function Q4010111_TriggerIn_2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4010111_TriggerIn_2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4010111_TriggerIn_2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40101"):NarratorOnlyTaskByData(datas.Q4010109_NarratorWithId)
    this:DestroySelf()
end

function Q4010111_TriggerIn_2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4010111_TriggerIn_2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4010111_TriggerIn_2:TriggerOut()
    print("TriggerOut")
end

return Q4010111_TriggerIn_2
