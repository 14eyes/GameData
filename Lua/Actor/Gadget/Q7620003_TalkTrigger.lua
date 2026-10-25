require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620003_TalkTrigger = class("Q7620003_TalkTrigger", GadgetActorProxy)
Q7620003_TalkTrigger.defaultAlias = "Q7620003_TalkTrigger"
local Q76200ClientConfig = require("Quest/Client/Q76200ClientConfig")

local this
local subIDs = Q76200ClientConfig.SubIDs
local datas = Q76200ClientConfig.Datas
local npcs = Q76200ClientConfig.Npcs
local points = Q76200ClientConfig.Points

function Q7620003_TalkTrigger:OnPostDataPrepare()
    print("Q7620003_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7620003_TalkTrigger:OnPostComponentPrepare()
    print("Q7620003_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76200)
end

function Q7620003_TalkTrigger:TriggerIn()
    print("Q7620003_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76200"):RequestInteraction(npcs.Npc16579_1.alias, "", true)
    this:DestroySelf()
end

function Q7620003_TalkTrigger:PreTriggerIn()
    print("Q7620003_TalkTrigger - PreTriggerIn")
end

function Q7620003_TalkTrigger:LightUpTriggerIn()
    print("Q7620003_TalkTrigger - LightUpTriggerIn")
end

function Q7620003_TalkTrigger:TriggerOut()
    print("Q7620003_TalkTrigger - TriggerOut")
end

return Q7620003_TalkTrigger
