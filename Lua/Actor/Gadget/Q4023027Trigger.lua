require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4023027Trigger = class("Q4023027Trigger", GadgetActorProxy)
Q4023027Trigger.defaultAlias = "Q4023027Trigger"
local Q40230ClientConfig = require("Quest/Client/Q40230ClientConfig")

local this
local subIDs = Q40230ClientConfig.SubIDs
local datas = Q40230ClientConfig.Datas
local npcs = Q40230ClientConfig.Npcs
local points = Q40230ClientConfig.Points

function Q4023027Trigger:OnPostDataPrepare()
    print("Q4023027Trigger - OnPostDataPrepare")
    this = self
end

function Q4023027Trigger:OnPostComponentPrepare()
    print("Q4023027Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40230)
end

function Q4023027Trigger:TriggerIn()
    print("Q4023027Trigger - TriggerIn")
    actorMgr:GetActor("40230"):RequestInteraction(npcs.Npc10095.alias, "", true)
    this:DestroySelf()
end

function Q4023027Trigger:PreTriggerIn()
    print("Q4023027Trigger - PreTriggerIn")
end

function Q4023027Trigger:LightUpTriggerIn()
    print("Q4023027Trigger - LightUpTriggerIn")
end

function Q4023027Trigger:TriggerOut()
    print("Q4023027Trigger - TriggerOut")
end

return Q4023027Trigger
