require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger7114402 = class("tigger7114402", GadgetActorProxy)
tigger7114402.defaultAlias = "tigger7114402"
local Q71144ClientConfig = require("Quest/Client/Q71144ClientConfig")

local this
local subIDs = Q71144ClientConfig.SubIDs
local datas = Q71144ClientConfig.Datas
local npcs = Q71144ClientConfig.Npcs
local points = Q71144ClientConfig.Points

function tigger7114402:OnPostDataPrepare()
    print("tigger7114402 - OnPostDataPrepare")
    this = self
end

function tigger7114402:OnPostComponentPrepare()
    print("tigger7114402 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71144)
end

function tigger7114402:TriggerIn()
    print("tigger7114402 - TriggerIn")
    actorMgr:GetActor("71144"):RequestInteraction(npcs.Npc30601.alias, "", true)
    this:DestroySelf()
end

function tigger7114402:PreTriggerIn()
    print("tigger7114402 - PreTriggerIn")
end

function tigger7114402:LightUpTriggerIn()
    print("tigger7114402 - LightUpTriggerIn")
end

function tigger7114402:TriggerOut()
    print("tigger7114402 - TriggerOut")
end

return tigger7114402
