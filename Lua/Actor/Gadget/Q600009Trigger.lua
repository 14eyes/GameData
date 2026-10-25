require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600009Trigger = class("Q600009Trigger", GadgetActorProxy)
Q600009Trigger.defaultAlias = "Q600009Trigger"
local Q6000ClientConfig = require("Quest/Client/Q6000ClientConfig")

local this
local subIDs = Q6000ClientConfig.SubIDs
local datas = Q6000ClientConfig.Datas
local npcs = Q6000ClientConfig.Npcs
local points = Q6000ClientConfig.Points

function Q600009Trigger:OnPostDataPrepare()
    print("Q600009Trigger - OnPostDataPrepare")
    this = self
end

function Q600009Trigger:OnPostComponentPrepare()
    print("Q600009Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 30.366106, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6000)
end

function Q600009Trigger:TriggerIn()
    print("Q600009Trigger - TriggerIn")
    actorMgr:GetActor("6000"):RequestInteraction(npcs.Npc1315.alias, "", true)
    this:DestroySelf()
end

function Q600009Trigger:PreTriggerIn()
    print("Q600009Trigger - PreTriggerIn")
end

function Q600009Trigger:LightUpTriggerIn()
    print("Q600009Trigger - LightUpTriggerIn")
end

function Q600009Trigger:TriggerOut()
    print("Q600009Trigger - TriggerOut")
end

return Q600009Trigger
