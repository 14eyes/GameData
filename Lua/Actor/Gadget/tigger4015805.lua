require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger4015805 = class("tigger4015805", GadgetActorProxy)
tigger4015805.defaultAlias = "tigger4015805"
local Q40158ClientConfig = require("Quest/Client/Q40158ClientConfig")

local this
local subIDs = Q40158ClientConfig.SubIDs
local datas = Q40158ClientConfig.Datas
local npcs = Q40158ClientConfig.Npcs
local points = Q40158ClientConfig.Points

function tigger4015805:OnPostDataPrepare()
    print("tigger4015805 - OnPostDataPrepare")
    this = self
end

function tigger4015805:OnPostComponentPrepare()
    print("tigger4015805 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40158)
end

function tigger4015805:TriggerIn()
    print("tigger4015805 - TriggerIn")
    actorMgr:GetActor("40158"):RequestInteraction(npcs.Npc1044.alias, "tigger4015805", true)
    this:DestroySelf()
end

function tigger4015805:PreTriggerIn()
    print("tigger4015805 - PreTriggerIn")
end

function tigger4015805:LightUpTriggerIn()
    print("tigger4015805 - LightUpTriggerIn")
end

function tigger4015805:TriggerOut()
    print("tigger4015805 - TriggerOut")
end

return tigger4015805
