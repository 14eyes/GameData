require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302206Talk = class("Q1302206Talk", GadgetActorProxy)
Q1302206Talk.defaultAlias = "Q1302206Talk"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302206Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302206Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302206Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc1053Data.alias)
end

function Q1302206Talk:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302206Talk:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302206Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302206Talk
