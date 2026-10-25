require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714211igger = class("Q7714211igger", GadgetActorProxy)
Q7714211igger.defaultAlias = "Q7714211igger"
local Q77142ClientConfig = require("Quest/Client/Q77142ClientConfig")

local this
local subIDs = Q77142ClientConfig.SubIDs
local datas = Q77142ClientConfig.Datas
local npcs = Q77142ClientConfig.Npcs
local points = Q77142ClientConfig.Points

function Q7714211igger:OnPostDataPrepare()
    print("Q7714211igger - OnPostDataPrepare")
    this = self
end

function Q7714211igger:OnPostComponentPrepare()
    print("Q7714211igger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77142)
end

function Q7714211igger:TriggerIn()
    print("Q7714211igger - TriggerIn")
    actorMgr:GetActor("77142"):RequestInteraction(npcs.Npc22466.alias, "", true)
    this:DestroySelf()
end

function Q7714211igger:PreTriggerIn()
    print("Q7714211igger - PreTriggerIn")
end

function Q7714211igger:LightUpTriggerIn()
    print("Q7714211igger - LightUpTriggerIn")
end

function Q7714211igger:TriggerOut()
    print("Q7714211igger - TriggerOut")
end

return Q7714211igger
