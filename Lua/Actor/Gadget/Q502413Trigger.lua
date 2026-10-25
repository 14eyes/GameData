require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502413Trigger = class("Q502413Trigger", GadgetActorProxy)
Q502413Trigger.defaultAlias = "Q502413Trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502413Trigger:OnPostDataPrepare()
    print("Q502413Trigger - OnPostDataPrepare")
    this = self
end

function Q502413Trigger:OnPostComponentPrepare()
    print("Q502413Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502413Trigger:TriggerIn()
    print("Q502413Trigger - TriggerIn")
    actorMgr:GetActor("5024"):SetQuestVarByMainId(1, 1)
    this:DestroySelf()
end

function Q502413Trigger:PreTriggerIn()
    print("Q502413Trigger - PreTriggerIn")
end

function Q502413Trigger:LightUpTriggerIn()
    print("Q502413Trigger - LightUpTriggerIn")
end

function Q502413Trigger:TriggerOut()
    print("Q502413Trigger - TriggerOut")
end

return Q502413Trigger
