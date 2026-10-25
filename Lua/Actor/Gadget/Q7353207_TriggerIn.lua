require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7353207_TriggerIn = class("Q7353207_TriggerIn", GadgetActorProxy)
Q7353207_TriggerIn.defaultAlias = "Q7353207_TriggerIn"
local Q73532ClientConfig = require("Quest/Client/Q73532ClientConfig")

local this
local subIDs = Q73532ClientConfig.SubIDs
local datas = Q73532ClientConfig.Datas
local npcs = Q73532ClientConfig.Npcs
local points = Q73532ClientConfig.Points

function Q7353207_TriggerIn:OnPostDataPrepare()
    print("Q7353207_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q7353207_TriggerIn:OnPostComponentPrepare()
    print("Q7353207_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73532)
end

function Q7353207_TriggerIn:TriggerIn()
    print("Q7353207_TriggerIn - TriggerIn")
    this:DestroySelf()
end

function Q7353207_TriggerIn:PreTriggerIn()
    print("Q7353207_TriggerIn - PreTriggerIn")
end

function Q7353207_TriggerIn:LightUpTriggerIn()
    print("Q7353207_TriggerIn - LightUpTriggerIn")
    actorMgr:GetActor("73532"):RequestInteraction(npcs.Npc4385.alias, "", true)
end

function Q7353207_TriggerIn:TriggerOut()
    print("Q7353207_TriggerIn - TriggerOut")
end

return Q7353207_TriggerIn
