require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger15 = class("Q5026Trigger15", GadgetActorProxy)
Q5026Trigger15.defaultAlias = "Q5026Trigger15"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger15:OnPostDataPrepare()
    print("Q5026Trigger15 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger15:OnPostComponentPrepare()
    print("Q5026Trigger15 - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger15:TriggerIn()
    print("Q5026Trigger15 - TriggerIn")
    actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc6228.alias, "", true)
    this:DestroySelf()
end

function Q5026Trigger15:PreTriggerIn()
    print("Q5026Trigger15 - PreTriggerIn")
end

function Q5026Trigger15:LightUpTriggerIn()
    print("Q5026Trigger15 - LightUpTriggerIn")
end

function Q5026Trigger15:TriggerOut()
    print("Q5026Trigger15 - TriggerOut")
end

return Q5026Trigger15
