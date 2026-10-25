require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger9 = class("Q5026Trigger9", GadgetActorProxy)
Q5026Trigger9.defaultAlias = "Q5026Trigger9"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger9:OnPostDataPrepare()
    print("Q5026Trigger9 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger9:OnPostComponentPrepare()
    print("Q5026Trigger9 - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger9:TriggerIn()
    print("Q5026Trigger9 - TriggerIn")
    actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc1091.alias, "", true)
    this:DestroySelf()
end

function Q5026Trigger9:PreTriggerIn()
    print("Q5026Trigger9 - PreTriggerIn")
end

function Q5026Trigger9:LightUpTriggerIn()
    print("Q5026Trigger9 - LightUpTriggerIn")
end

function Q5026Trigger9:TriggerOut()
    print("Q5026Trigger9 - TriggerOut")
end

return Q5026Trigger9
