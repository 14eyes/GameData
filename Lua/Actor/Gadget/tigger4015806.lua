require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger4015806 = class("tigger4015806", GadgetActorProxy)
tigger4015806.defaultAlias = "tigger4015806"
local Q40158ClientConfig = require("Quest/Client/Q40158ClientConfig")

local this
local subIDs = Q40158ClientConfig.SubIDs
local datas = Q40158ClientConfig.Datas
local npcs = Q40158ClientConfig.Npcs
local points = Q40158ClientConfig.Points

function tigger4015806:OnPostDataPrepare()
    print("tigger4015806 - OnPostDataPrepare")
    this = self
end

function tigger4015806:OnPostComponentPrepare()
    print("tigger4015806 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40158)
end

function tigger4015806:TriggerIn()
    print("tigger4015806 - TriggerIn")
    actorMgr:GetActor("40158"):RequestInteraction(npcs.Npc1037.alias, "tigger4015806", true)
    this:DestroySelf()
end

function tigger4015806:PreTriggerIn()
    print("tigger4015806 - PreTriggerIn")
end

function tigger4015806:LightUpTriggerIn()
    print("tigger4015806 - LightUpTriggerIn")
end

function tigger4015806:TriggerOut()
    print("tigger4015806 - TriggerOut")
end

return tigger4015806
