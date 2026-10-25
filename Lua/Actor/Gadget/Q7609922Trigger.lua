require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609922Trigger = class("Q7609922Trigger", GadgetActorProxy)
Q7609922Trigger.defaultAlias = "Q7609922Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609922Trigger:OnPostDataPrepare()
    print("Q7609922Trigger - OnPostDataPrepare")
    this = self
end

function Q7609922Trigger:OnPostComponentPrepare()
    print("Q7609922Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609922Trigger:TriggerIn()
    print("Q7609922Trigger - TriggerIn")
    actorMgr:GetActor("76099"):RequestInteraction(npcs.Npc7181.alias, "", true)
    this:DestroySelf()
end

function Q7609922Trigger:PreTriggerIn()
    print("Q7609922Trigger - PreTriggerIn")
end

function Q7609922Trigger:LightUpTriggerIn()
    print("Q7609922Trigger - LightUpTriggerIn")
end

function Q7609922Trigger:TriggerOut()
    print("Q7609922Trigger - TriggerOut")
end

return Q7609922Trigger
