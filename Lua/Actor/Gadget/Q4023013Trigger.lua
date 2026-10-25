require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023013Trigger = class("Q4023013Trigger", GadgetActorProxy)
Q4023013Trigger.defaultAlias = "Q4023013Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023013Trigger:OnPostDataPrepare()
    print("Q4023013Trigger - OnPostDataPrepare")
    this = self
end

function Q4023013Trigger:OnPostComponentPrepare()
    print("Q4023013Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023013Trigger:TriggerIn()
    print("Q4023013Trigger - TriggerIn")
    actorMgr:GetActor("40230"):RequestInteraction(npcs.Npc16338.alias, "", true)
    this:DestroySelf()
end

function Q4023013Trigger:PreTriggerIn()
    print("Q4023013Trigger - PreTriggerIn")
end

function Q4023013Trigger:LightUpTriggerIn()
    print("Q4023013Trigger - LightUpTriggerIn")
end

function Q4023013Trigger:TriggerOut()
    print("Q4023013Trigger - TriggerOut")
end

return Q4023013Trigger
