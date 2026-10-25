require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger3 = class("tigger3", GadgetActorProxy)
tigger3.defaultAlias = "tigger3"
local Q40148ClientConfig = require("Quest/Client/Q40148ClientConfig")

local this
local subIDs = Q40148ClientConfig.SubIDs
local npcs = Q40148ClientConfig.Npcs
local points = Q40148ClientConfig.Points

function tigger3:OnPostDataPrepare()
    print("tigger3 - OnPostDataPrepare")
    this = self
end

function tigger3:OnPostComponentPrepare()
    print("tigger3 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 15, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40148)
end

function tigger3:TriggerIn()
    print("tigger3 - TriggerIn")
    this:DestroySelf()
end

function tigger3:PreTriggerIn()
    print("tigger3 - PreTriggerIn")
end

function tigger3:LightUpTriggerIn()
    print("tigger3 - LightUpTriggerIn")
    actorMgr:GetActor("40148"):RequestInteraction(npcs.Npc1044.alias, "", true)
end

function tigger3:TriggerOut()
    print("tigger3 - TriggerOut")
end

return tigger3
