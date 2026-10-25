require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7353204_TriggerIn = class("Q7353204_TriggerIn", GadgetActorProxy)
Q7353204_TriggerIn.defaultAlias = "Q7353204_TriggerIn"
local Q73532ClientConfig = require("Quest/Client/Q73532ClientConfig")

local this
local subIDs = Q73532ClientConfig.SubIDs
local datas = Q73532ClientConfig.Datas
local npcs = Q73532ClientConfig.Npcs
local points = Q73532ClientConfig.Points

function Q7353204_TriggerIn:OnPostDataPrepare()
    print("Q7353204_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q7353204_TriggerIn:OnPostComponentPrepare()
    print("Q7353204_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73532)
end

function Q7353204_TriggerIn:TriggerIn()
    print("Q7353204_TriggerIn - TriggerIn")
    actorMgr:GetActor("73532"):RequestInteraction(npcs.Npc1052.alias, "", true)
    this:DestroySelf()
end

function Q7353204_TriggerIn:PreTriggerIn()
    print("Q7353204_TriggerIn - PreTriggerIn")
end

function Q7353204_TriggerIn:LightUpTriggerIn()
    print("Q7353204_TriggerIn - LightUpTriggerIn")
end

function Q7353204_TriggerIn:TriggerOut()
    print("Q7353204_TriggerIn - TriggerOut")
end

return Q7353204_TriggerIn
