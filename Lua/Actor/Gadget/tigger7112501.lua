require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger7112501 = class("tigger7112501", GadgetActorProxy)
tigger7112501.defaultAlias = "tigger7112501"
local Q71125ClientConfig = require("Quest/Client/Q71125ClientConfig")

local this
local subIDs = Q71125ClientConfig.SubIDs
local npcs = Q71125ClientConfig.Npcs
local points = Q71125ClientConfig.Points

function tigger7112501:OnPostDataPrepare()
    print("tigger7112501 - OnPostDataPrepare")
    this = self
end

function tigger7112501:OnPostComponentPrepare()
    print("tigger7112501 - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71125)
end

function tigger7112501:TriggerIn()
    print("tigger7112501 - TriggerIn")
    actorMgr:GetActor("71125"):RequestInteraction(npcs.Npc30152.alias, "", true)
    this:DestroySelf()
end

function tigger7112501:PreTriggerIn()
    print("tigger7112501 - PreTriggerIn")
end

function tigger7112501:LightUpTriggerIn()
    print("tigger7112501 - LightUpTriggerIn")
end

function tigger7112501:TriggerOut()
    print("tigger7112501 - TriggerOut")
end

return tigger7112501
