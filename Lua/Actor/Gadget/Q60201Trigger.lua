require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60201Trigger = class("Q60201Trigger", GadgetActorProxy)
Q60201Trigger.defaultAlias = "Q60201Trigger"
local Q602ClientConfig = require("Quest/Client/Q602ClientConfig")

local this
local subIDs = Q602ClientConfig.SubIDs
local datas = Q602ClientConfig.Datas
local npcs = Q602ClientConfig.Npcs
local points = Q602ClientConfig.Points

function Q60201Trigger:OnPostDataPrepare()
    print("Q60201Trigger - OnPostDataPrepare")
    this = self
end

function Q60201Trigger:OnPostComponentPrepare()
    print("Q60201Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8, 10, 3, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 602)
end

function Q60201Trigger:TriggerIn()
    print("Q60201Trigger - TriggerIn")
    actorMgr:GetActor("602"):RequestInteraction(npcs.Npc30564.alias, "", true)
    this:DestroySelf()
end

function Q60201Trigger:PreTriggerIn()
    print("Q60201Trigger - PreTriggerIn")
end

function Q60201Trigger:LightUpTriggerIn()
    print("Q60201Trigger - LightUpTriggerIn")
end

function Q60201Trigger:TriggerOut()
    print("Q60201Trigger - TriggerOut")
end

return Q60201Trigger
