require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q500613TriggerRequest = class("Q500613TriggerRequest", GadgetActorProxy)
Q500613TriggerRequest.defaultAlias = "Q500613TriggerRequest"
local Q5006ClientConfig = require("Quest/Client/Q5006ClientConfig")

local this
local subIDs = Q5006ClientConfig.SubIDs
local datas = Q5006ClientConfig.Datas
local npcs = Q5006ClientConfig.Npcs
local points = Q5006ClientConfig.Points

function Q500613TriggerRequest:OnPostDataPrepare()
    print("Q500613TriggerRequest - OnPostDataPrepare")
    this = self
end

function Q500613TriggerRequest:OnPostComponentPrepare()
    print("Q500613TriggerRequest - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5006)
end

function Q500613TriggerRequest:TriggerIn()
    print("Q500613TriggerRequest - TriggerIn")
    actorMgr:GetActor("5006"):RequestInteraction(npcs.Npc1086.alias, "", true)
    this:DestroySelf()
end

function Q500613TriggerRequest:PreTriggerIn()
    print("Q500613TriggerRequest - PreTriggerIn")
end

function Q500613TriggerRequest:LightUpTriggerIn()
    print("Q500613TriggerRequest - LightUpTriggerIn")
end

function Q500613TriggerRequest:TriggerOut()
    print("Q500613TriggerRequest - TriggerOut")
end

return Q500613TriggerRequest
