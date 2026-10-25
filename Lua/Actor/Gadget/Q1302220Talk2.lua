require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302220Talk2 = class("Q1302220Talk2", GadgetActorProxy)
Q1302220Talk2.defaultAlias = "Q1302220Talk2"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302220Talk2:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302220Talk2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302220Talk2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc1053Data.alias)
end

function Q1302220Talk2:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302220Talk2:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302220Talk2:TriggerOut()
    print("TriggerOut")
end

return Q1302220Talk2
