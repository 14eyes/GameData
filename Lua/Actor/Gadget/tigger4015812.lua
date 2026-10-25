require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger4015812 = class("tigger4015812", GadgetActorProxy)
tigger4015812.defaultAlias = "tigger4015812"
local Q40158ClientConfig = require("Quest/Client/Q40158ClientConfig")

local this
local subIDs = Q40158ClientConfig.SubIDs
local datas = Q40158ClientConfig.Datas
local npcs = Q40158ClientConfig.Npcs
local points = Q40158ClientConfig.Points

function tigger4015812:OnPostDataPrepare()
    print("tigger4015812 - OnPostDataPrepare")
    this = self
end

function tigger4015812:OnPostComponentPrepare()
    print("tigger4015812 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40158)
end

function tigger4015812:TriggerIn()
    print("tigger4015812 - TriggerIn")
    actorMgr:GetActor("40158"):RequestInteraction(npcs.Npc30532.alias, "", true)
    this:DestroySelf()
end

function tigger4015812:PreTriggerIn()
    print("tigger4015812 - PreTriggerIn")
end

function tigger4015812:LightUpTriggerIn()
    print("tigger4015812 - LightUpTriggerIn")
end

function tigger4015812:TriggerOut()
    print("tigger4015812 - TriggerOut")
end

return tigger4015812
