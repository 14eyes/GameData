require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501008Trigger = class("Q1501008Trigger", GadgetActorProxy)
Q1501008Trigger.defaultAlias = "Q1501008Trigger"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501008Trigger:OnPostDataPrepare()
    print("Q1501008Trigger - OnPostDataPrepare")
    this = self
end

function Q1501008Trigger:OnPostComponentPrepare()
    print("Q1501008Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 80, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501008Trigger:TriggerIn()
    print("Q1501008Trigger - TriggerIn")
    actorMgr:GetActor("15010"):RequestInteraction(npcs.Npc14553.alias, "", true)
    this:DestroySelf()
end

function Q1501008Trigger:PreTriggerIn()
    print("Q1501008Trigger - PreTriggerIn")
end

function Q1501008Trigger:LightUpTriggerIn()
    print("Q1501008Trigger - LightUpTriggerIn")
end

function Q1501008Trigger:TriggerOut()
    print("Q1501008Trigger - TriggerOut")
end

return Q1501008Trigger
