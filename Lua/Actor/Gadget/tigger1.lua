require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1 = class("tigger1", GadgetActorProxy)
tigger1.defaultAlias = "tigger1"
local Q40143ClientConfig = require("Quest/Client/Q40143ClientConfig")

local this
local subIDs = Q40143ClientConfig.SubIDs
local npcs = Q40143ClientConfig.Npcs
local points = Q40143ClientConfig.Points

function tigger1:OnPostDataPrepare()
    print("tigger1 - OnPostDataPrepare")
    this = self
end

function tigger1:OnPostComponentPrepare()
    print("tigger1 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 15, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40143)
end

function tigger1:TriggerIn()
    print("tigger1 - TriggerIn")
    this:DestroySelf()
end

function tigger1:PreTriggerIn()
    print("tigger1 - PreTriggerIn")
end

function tigger1:LightUpTriggerIn()
    print("tigger1 - LightUpTriggerIn")
    actorMgr:GetActor("40143"):RequestInteraction(npcs.Npc1071.alias, "", true)
end

function tigger1:TriggerOut()
    print("tigger1 - TriggerOut")
end

return tigger1
