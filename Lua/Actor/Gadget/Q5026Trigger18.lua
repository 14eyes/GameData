require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger18 = class("Q5026Trigger18", GadgetActorProxy)
Q5026Trigger18.defaultAlias = "Q5026Trigger18"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger18:OnPostDataPrepare()
    print("Q5026Trigger18 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger18:OnPostComponentPrepare()
    print("Q5026Trigger18 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger18:TriggerIn()
    print("Q5026Trigger18 - TriggerIn")
    actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc14601.alias, "", true)
    this:DestroySelf()
end

function Q5026Trigger18:PreTriggerIn()
    print("Q5026Trigger18 - PreTriggerIn")
end

function Q5026Trigger18:LightUpTriggerIn()
    print("Q5026Trigger18 - LightUpTriggerIn")
end

function Q5026Trigger18:TriggerOut()
    print("Q5026Trigger18 - TriggerOut")
end

return Q5026Trigger18
