require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1103408_Trigger1 = class("Q1103408_Trigger1", GadgetActorProxy)
Q1103408_Trigger1.defaultAlias = "Q1103408_Trigger1"
local Q11034ClientConfig = require("Quest/Client/Q11034ClientConfig")

local this
local subIDs = Q11034ClientConfig.SubIDs
local datas = Q11034ClientConfig.Datas
local npcs = Q11034ClientConfig.Npcs
local points = Q11034ClientConfig.Points

function Q1103408_Trigger1:OnPostDataPrepare()
    print("Q1103408_Trigger1 - OnPostDataPrepare")
    this = self
end

function Q1103408_Trigger1:OnPostComponentPrepare()
    print("Q1103408_Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 11034)
end

function Q1103408_Trigger1:TriggerIn()
    print("Q1103408_Trigger1 - TriggerIn")
    actorMgr:GetActor("11034"):NarratorOnlyTaskByData(datas.Narrator1103402, nil, 11034)
    this:DestroySelf()
end

function Q1103408_Trigger1:PreTriggerIn()
    print("Q1103408_Trigger1 - PreTriggerIn")
end

function Q1103408_Trigger1:LightUpTriggerIn()
    print("Q1103408_Trigger1 - LightUpTriggerIn")
end

function Q1103408_Trigger1:TriggerOut()
    print("Q1103408_Trigger1 - TriggerOut")
end

return Q1103408_Trigger1
