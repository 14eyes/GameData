require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502807Trigger = class("Q502807Trigger", GadgetActorProxy)
Q502807Trigger.defaultAlias = "Q502807Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502807Trigger:OnPostDataPrepare()
    print("Q502807Trigger - OnPostDataPrepare")
    this = self
end

function Q502807Trigger:OnPostComponentPrepare()
    print("Q502807Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(60, 35, 80, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502807Trigger:TriggerIn()
    print("Q502807Trigger - TriggerIn")
    actorMgr:GetActor("5028"):RequestInteraction(npcs.Npc14762.alias, "", true)
    this:DestroySelf()
end

function Q502807Trigger:PreTriggerIn()
    print("Q502807Trigger - PreTriggerIn")
end

function Q502807Trigger:LightUpTriggerIn()
    print("Q502807Trigger - LightUpTriggerIn")
end

function Q502807Trigger:TriggerOut()
    print("Q502807Trigger - TriggerOut")
end

return Q502807Trigger
