require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302221Talk = class("Q1302221Talk", GadgetActorProxy)
Q1302221Talk.defaultAlias = "Q1302221Talk"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302221Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302221Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = -2.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302221Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc13003Data.alias)
    this:DestroySelf()
end

function Q1302221Talk:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302221Talk:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302221Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302221Talk
