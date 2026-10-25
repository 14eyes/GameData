require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502431Trigger = class("Q502431Trigger", GadgetActorProxy)
Q502431Trigger.defaultAlias = "Q502431Trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502431Trigger:OnPostDataPrepare()
    print("Q502431Trigger - OnPostDataPrepare")
    this = self
end

function Q502431Trigger:OnPostComponentPrepare()
    print("Q502431Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502431Trigger:TriggerIn()
    print("Q502431Trigger - TriggerIn")
    actorMgr:GetActor("5024"):SetQuestVarByMainId(2, 1)
    this:DestroySelf()
end

function Q502431Trigger:PreTriggerIn()
    print("Q502431Trigger - PreTriggerIn")
end

function Q502431Trigger:LightUpTriggerIn()
    print("Q502431Trigger - LightUpTriggerIn")
end

function Q502431Trigger:TriggerOut()
    print("Q502431Trigger - TriggerOut")
end

return Q502431Trigger
