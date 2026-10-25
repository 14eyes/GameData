require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60013Trigger = class("Q60013Trigger", GadgetActorProxy)
Q60013Trigger.defaultAlias = "Q60013Trigger"
local Q600ClientConfig = require("Quest/Client/Q600ClientConfig")

local this
local subIDs = Q600ClientConfig.SubIDs
local datas = Q600ClientConfig.Datas
local npcs = Q600ClientConfig.Npcs
local points = Q600ClientConfig.Points

function Q60013Trigger:OnPostDataPrepare()
    print("Q60013Trigger - OnPostDataPrepare")
    this = self
end

function Q60013Trigger:OnPostComponentPrepare()
    print("Q60013Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(11, 11, 2, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 600)
end

function Q60013Trigger:TriggerIn()
    print("Q60013Trigger - TriggerIn")
    actorMgr:GetActor("600"):RequestInteraction(npcs.Npc15332.alias, "", true)
    this:DestroySelf()
end

function Q60013Trigger:PreTriggerIn()
    print("Q60013Trigger - PreTriggerIn")
end

function Q60013Trigger:LightUpTriggerIn()
    print("Q60013Trigger - LightUpTriggerIn")
end

function Q60013Trigger:TriggerOut()
    print("Q60013Trigger - TriggerOut")
end

return Q60013Trigger
