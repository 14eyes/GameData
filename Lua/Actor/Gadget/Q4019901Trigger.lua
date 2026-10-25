require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019901Trigger = class("Q4019901Trigger", GadgetActorProxy)
Q4019901Trigger.defaultAlias = "Q4019901Trigger"
local Q40199ClientConfig = require("Quest/Client/Q40199ClientConfig")

local this
local subIDs = Q40199ClientConfig.SubIDs
local datas = Q40199ClientConfig.Datas
local npcs = Q40199ClientConfig.Npcs
local points = Q40199ClientConfig.Points

function Q4019901Trigger:OnPostDataPrepare()
    print("Q4019901Trigger - OnPostDataPrepare")
    this = self
end

function Q4019901Trigger:OnPostComponentPrepare()
    print("Q4019901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40199)
end

function Q4019901Trigger:TriggerIn()
    print("Q4019901Trigger - TriggerIn")
    actorMgr:GetActor("40199"):RequestInteraction(npcs.Npc1048.alias, "", true)
    this:DestroySelf()
end

function Q4019901Trigger:PreTriggerIn()
    print("Q4019901Trigger - PreTriggerIn")
end

function Q4019901Trigger:LightUpTriggerIn()
    print("Q4019901Trigger - LightUpTriggerIn")
end

function Q4019901Trigger:TriggerOut()
    print("Q4019901Trigger - TriggerOut")
end

return Q4019901Trigger
