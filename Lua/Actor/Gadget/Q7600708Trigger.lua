require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600708Trigger = class("Q7600708Trigger", GadgetActorProxy)
Q7600708Trigger.defaultAlias = "Q7600708Trigger"
local Q76007ClientConfig = require("Quest/Client/Q76007ClientConfig")

local this
local subIDs = Q76007ClientConfig.SubIDs
local datas = Q76007ClientConfig.Datas
local npcs = Q76007ClientConfig.Npcs
local points = Q76007ClientConfig.Points

function Q7600708Trigger:OnPostDataPrepare()
    print("Q7600708Trigger - OnPostDataPrepare")
    this = self
end

function Q7600708Trigger:OnPostComponentPrepare()
    print("Q7600708Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(1, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76007)
end

function Q7600708Trigger:TriggerIn()
    print("Q7600708Trigger - TriggerIn")
    this:DestroySelf()
end

function Q7600708Trigger:PreTriggerIn()
    print("Q7600708Trigger - PreTriggerIn")
end

function Q7600708Trigger:LightUpTriggerIn()
    print("Q7600708Trigger - LightUpTriggerIn")
end

function Q7600708Trigger:TriggerOut()
    print("Q7600708Trigger - TriggerOut")
end

return Q7600708Trigger
