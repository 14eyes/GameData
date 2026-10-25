require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302509Trigger = class("Q1302509Trigger", GadgetActorProxy)
Q1302509Trigger.defaultAlias = "Q1302509Trigger"
local Q13025ClientConfig = require("Quest/Client/Q13025ClientConfig")

local this
local subIDs = Q13025ClientConfig.SubIDs
local npcs = Q13025ClientConfig.Npcs
local datas = Q13025ClientConfig.Datas

function Q1302509Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302509Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302509Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1302509)
    this:DestroySelf()
end

function Q1302509Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302509Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302509Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302509Trigger
