require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620505Trigger = class("Q7620505Trigger", GadgetActorProxy)
Q7620505Trigger.defaultAlias = "Q7620505Trigger"
local Q76205ClientConfig = require("Quest/Client/Q76205ClientConfig")

local this
local subIDs = Q76205ClientConfig.SubIDs
local datas = Q76205ClientConfig.Datas
local npcs = Q76205ClientConfig.Npcs
local points = Q76205ClientConfig.Points

function Q7620505Trigger:OnPostDataPrepare()
    print("Q7620505Trigger - OnPostDataPrepare")
    this = self
end

function Q7620505Trigger:OnPostComponentPrepare()
    print("Q7620505Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(2, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76205)
end

function Q7620505Trigger:TriggerIn()
    print("Q7620505Trigger - TriggerIn")
    actorMgr:GetActor("76205"):RequestInteraction(npcs.Npc1322_2.alias, "", true)
    this:DestroySelf()
end

function Q7620505Trigger:PreTriggerIn()
    print("Q7620505Trigger - PreTriggerIn")
end

function Q7620505Trigger:LightUpTriggerIn()
    print("Q7620505Trigger - LightUpTriggerIn")
end

function Q7620505Trigger:TriggerOut()
    print("Q7620505Trigger - TriggerOut")
end

return Q7620505Trigger
