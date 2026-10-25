require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1001105Trigger = class("Q1001105Trigger", GadgetActorProxy)
Q1001105Trigger.defaultAlias = "Q1001105Trigger"
local Q10011ClientConfig = require("Quest/Client/Q10011ClientConfig")

local this
local subIDs = Q10011ClientConfig.SubIDs
local datas = Q10011ClientConfig.Datas
local npcs = Q10011ClientConfig.Npcs
local points = Q10011ClientConfig.Points

function Q1001105Trigger:OnPostDataPrepare()
    print("Q1001105Trigger - OnPostDataPrepare")
    this = self
end

function Q1001105Trigger:OnPostComponentPrepare()
    print("Q1001105Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 10011)
end

function Q1001105Trigger:TriggerIn()
    print("Q1001105Trigger - TriggerIn")
    self:EnterCombatSneakMode(25)
end

function Q1001105Trigger:PreTriggerIn()
    print("Q1001105Trigger - PreTriggerIn")
end

function Q1001105Trigger:LightUpTriggerIn()
    print("Q1001105Trigger - LightUpTriggerIn")
end

function Q1001105Trigger:TriggerOut()
    print("Q1001105Trigger - TriggerOut")
    self:ExitCombatSneakMode()
end

return Q1001105Trigger
