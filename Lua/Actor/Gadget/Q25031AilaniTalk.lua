require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25031AilaniTalk = class("Q25031AilaniTalk", GadgetActorProxy)
Q25031AilaniTalk.defaultAlias = "Q25031AilaniTalk"
local Q25031ClientConfig = require("Quest/Client/Q25031ClientConfig")

local this
local subIDs = Q25031ClientConfig.SubIDs
local npcs = Q25031ClientConfig.Npcs
local points = Q25031ClientConfig.Points

function Q25031AilaniTalk:OnPostDataPrepare()
    print("Q25031AilaniTalk - OnPostDataPrepare")
    this = self
end

function Q25031AilaniTalk:OnPostComponentPrepare()
    print("Q25031AilaniTalk - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25031)
end

function Q25031AilaniTalk:TriggerIn()
    print("Q25031AilaniTalk - TriggerIn")
    actorMgr:GetActor("25031"):RequestInteraction(npcs.NPC20088.alias, "", true)
    this:DestroySelf()
end

function Q25031AilaniTalk:PreTriggerIn()
    print("Q25031AilaniTalk - PreTriggerIn")
end

function Q25031AilaniTalk:LightUpTriggerIn()
    print("Q25031AilaniTalk - LightUpTriggerIn")
end

function Q25031AilaniTalk:TriggerOut()
    print("Q25031AilaniTalk - TriggerOut")
end

return Q25031AilaniTalk
