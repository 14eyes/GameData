require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger4 = class("tigger4", GadgetActorProxy)
tigger4.defaultAlias = "tigger4"
local Q40149ClientConfig = require("Quest/Client/Q40149ClientConfig")

local this
local subIDs = Q40149ClientConfig.SubIDs
local npcs = Q40149ClientConfig.Npcs
local points = Q40149ClientConfig.Points

function tigger4:OnPostDataPrepare()
    print("tigger4 - OnPostDataPrepare")
    this = self
end

function tigger4:OnPostComponentPrepare()
    print("tigger4 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 15, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40149)
end

function tigger4:TriggerIn()
    print("tigger4 - TriggerIn")
    this:DestroySelf()
end

function tigger4:PreTriggerIn()
    print("tigger4 - PreTriggerIn")
end

function tigger4:LightUpTriggerIn()
    print("tigger4 - LightUpTriggerIn")
    actorMgr:GetActor("40149"):RequestInteraction(npcs.Ambor.alias, "", true)
end

function tigger4:TriggerOut()
    print("tigger4 - TriggerOut")
end

return tigger4
