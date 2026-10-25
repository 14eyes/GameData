require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7621804Trigger = class("Q7621804Trigger", GadgetActorProxy)
Q7621804Trigger.defaultAlias = "Q7621804Trigger"
local Q76218ClientConfig = require("Quest/Client/Q76218ClientConfig")

local this
local subIDs = Q76218ClientConfig.SubIDs
local datas = Q76218ClientConfig.Datas
local npcs = Q76218ClientConfig.Npcs
local points = Q76218ClientConfig.Points

function Q7621804Trigger:OnPostDataPrepare()
    print("Q7621804Trigger - OnPostDataPrepare")
    this = self
end

function Q7621804Trigger:OnPostComponentPrepare()
    print("Q7621804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76218)
end

function Q7621804Trigger:TriggerIn()
    print("Q7621804Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7621804})
    this:DestroySelf()
end

function Q7621804Trigger:PreTriggerIn()
    print("Q7621804Trigger - PreTriggerIn")
end

function Q7621804Trigger:LightUpTriggerIn()
    print("Q7621804Trigger - LightUpTriggerIn")
end

function Q7621804Trigger:TriggerOut()
    print("Q7621804Trigger - TriggerOut")
end

return Q7621804Trigger
