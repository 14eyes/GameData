require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger2 = class("tigger2", GadgetActorProxy)
tigger2.defaultAlias = "tigger2"
local Q40147ClientConfig = require("Quest/Client/Q40147ClientConfig")

local this
local subIDs = Q40147ClientConfig.SubIDs
local npcs = Q40147ClientConfig.Npcs
local points = Q40147ClientConfig.Points

function tigger2:OnPostDataPrepare()
    print("tigger2 - OnPostDataPrepare")
    this = self
end

function tigger2:OnPostComponentPrepare()
    print("tigger2 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(60, 15, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40147)
end

function tigger2:TriggerIn()
    print("tigger2 - TriggerIn")
    this:DestroySelf()
end

function tigger2:PreTriggerIn()
    print("tigger2 - PreTriggerIn")
end

function tigger2:LightUpTriggerIn()
    print("tigger2 - LightUpTriggerIn")
    actorMgr:GetActor("40147"):RequestInteraction(npcs.Npc1067.alias, "", true)
end

function tigger2:TriggerOut()
    print("tigger2 - TriggerOut")
end

return tigger2
