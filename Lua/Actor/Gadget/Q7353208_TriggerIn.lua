require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7353208_TriggerIn = class("Q7353208_TriggerIn", GadgetActorProxy)
Q7353208_TriggerIn.defaultAlias = "Q7353208_TriggerIn"
local Q73532ClientConfig = require("Quest/Client/Q73532ClientConfig")

local this
local subIDs = Q73532ClientConfig.SubIDs
local datas = Q73532ClientConfig.Datas
local npcs = Q73532ClientConfig.Npcs
local points = Q73532ClientConfig.Points

function Q7353208_TriggerIn:OnPostDataPrepare()
    print("Q7353208_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q7353208_TriggerIn:OnPostComponentPrepare()
    print("Q7353208_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 73532)
end

function Q7353208_TriggerIn:TriggerIn()
    print("Q7353208_TriggerIn - TriggerIn")
    actorMgr:GetActor("73532"):RequestInteraction(npcs.Npc1055.alias, "", true)
    this:DestroySelf()
end

function Q7353208_TriggerIn:PreTriggerIn()
    print("Q7353208_TriggerIn - PreTriggerIn")
end

function Q7353208_TriggerIn:LightUpTriggerIn()
    print("Q7353208_TriggerIn - LightUpTriggerIn")
end

function Q7353208_TriggerIn:TriggerOut()
    print("Q7353208_TriggerIn - TriggerOut")
end

return Q7353208_TriggerIn
