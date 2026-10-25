require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619105_TalkTrigger = class("Q7619105_TalkTrigger", GadgetActorProxy)
Q7619105_TalkTrigger.defaultAlias = "Q7619105_TalkTrigger"
local Q76191ClientConfig = require("Quest/Client/Q76191ClientConfig")

local this
local subIDs = Q76191ClientConfig.SubIDs
local datas = Q76191ClientConfig.Datas
local npcs = Q76191ClientConfig.Npcs
local points = Q76191ClientConfig.Points

function Q7619105_TalkTrigger:OnPostDataPrepare()
    print("Q7619105_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7619105_TalkTrigger:OnPostComponentPrepare()
    print("Q7619105_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76191)
end

function Q7619105_TalkTrigger:TriggerIn()
    print("Q7619105_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76191"):RequestInteraction(npcs.Npc16691.alias, "", true)
    this:DestroySelf()
end

function Q7619105_TalkTrigger:PreTriggerIn()
    print("Q7619105_TalkTrigger - PreTriggerIn")
end

function Q7619105_TalkTrigger:LightUpTriggerIn()
    print("Q7619105_TalkTrigger - LightUpTriggerIn")
end

function Q7619105_TalkTrigger:TriggerOut()
    print("Q7619105_TalkTrigger - TriggerOut")
end

return Q7619105_TalkTrigger
