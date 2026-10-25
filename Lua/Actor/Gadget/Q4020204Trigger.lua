require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4020204Trigger = class("Q4020204Trigger", GadgetActorProxy)
Q4020204Trigger.defaultAlias = "Q4020204Trigger"
local Q40202ClientConfig = require("Quest/Client/Q40202ClientConfig")

local this
local subIDs = Q40202ClientConfig.SubIDs
local datas = Q40202ClientConfig.Datas
local npcs = Q40202ClientConfig.Npcs
local points = Q40202ClientConfig.Points

function Q4020204Trigger:OnPostDataPrepare()
    print("Q4020204Trigger - OnPostDataPrepare")
    this = self
end

function Q4020204Trigger:OnPostComponentPrepare()
    print("Q4020204Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40202)
end

function Q4020204Trigger:TriggerIn()
    print("Q4020204Trigger - TriggerIn")
    actorMgr:GetActor("40202"):RequestInteraction(npcs.Npc15405.alias, "", true)
    this:DestroySelf()
end

function Q4020204Trigger:PreTriggerIn()
    print("Q4020204Trigger - PreTriggerIn")
end

function Q4020204Trigger:LightUpTriggerIn()
    print("Q4020204Trigger - LightUpTriggerIn")
end

function Q4020204Trigger:TriggerOut()
    print("Q4020204Trigger - TriggerOut")
end

return Q4020204Trigger
