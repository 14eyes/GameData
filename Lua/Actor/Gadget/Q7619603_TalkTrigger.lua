require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7619603_TalkTrigger = class("Q7619603_TalkTrigger", GadgetActorProxy)
Q7619603_TalkTrigger.defaultAlias = "Q7619603_TalkTrigger"
local Q76196ClientConfig = require("Quest/Client/Q76196ClientConfig")

local this
local subIDs = Q76196ClientConfig.SubIDs
local datas = Q76196ClientConfig.Datas
local npcs = Q76196ClientConfig.Npcs
local points = Q76196ClientConfig.Points

function Q7619603_TalkTrigger:OnPostDataPrepare()
    print("Q7619603_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7619603_TalkTrigger:OnPostComponentPrepare()
    print("Q7619603_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76196)
end

function Q7619603_TalkTrigger:TriggerIn()
    print("Q7619603_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76196"):RequestInteraction(npcs.Npc16574.alias, "", true)
    this:DestroySelf()
end

function Q7619603_TalkTrigger:PreTriggerIn()
    print("Q7619603_TalkTrigger - PreTriggerIn")
end

function Q7619603_TalkTrigger:LightUpTriggerIn()
    print("Q7619603_TalkTrigger - LightUpTriggerIn")
end

function Q7619603_TalkTrigger:TriggerOut()
    print("Q7619603_TalkTrigger - TriggerOut")
end

return Q7619603_TalkTrigger
