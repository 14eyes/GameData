require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019909Trigger = class("Q4019909Trigger", GadgetActorProxy)
Q4019909Trigger.defaultAlias = "Q4019909Trigger"
local Q40199ClientConfig = require("Quest/Client/Q40199ClientConfig")

local this
local subIDs = Q40199ClientConfig.SubIDs
local datas = Q40199ClientConfig.Datas
local npcs = Q40199ClientConfig.Npcs
local points = Q40199ClientConfig.Points

function Q4019909Trigger:OnPostDataPrepare()
    print("Q4019909Trigger - OnPostDataPrepare")
    this = self
end

function Q4019909Trigger:OnPostComponentPrepare()
    print("Q4019909Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40199)
end

function Q4019909Trigger:TriggerIn()
    print("Q4019909Trigger - TriggerIn")
    actorMgr:GetActor("40199"):RequestInteraction(npcs.Npc1048.alias, "", true)
    this:DestroySelf()
end

function Q4019909Trigger:PreTriggerIn()
    print("Q4019909Trigger - PreTriggerIn")
end

function Q4019909Trigger:LightUpTriggerIn()
    print("Q4019909Trigger - LightUpTriggerIn")
end

function Q4019909Trigger:TriggerOut()
    print("Q4019909Trigger - TriggerOut")
end

return Q4019909Trigger
