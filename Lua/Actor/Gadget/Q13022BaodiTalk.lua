require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13022BaodiTalk = class("Q13022BaodiTalk", GadgetActorProxy)
Q13022BaodiTalk.defaultAlias = "Q13022BaodiTalk"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q13022BaodiTalk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13022BaodiTalk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13022BaodiTalk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc13004Data.alias)
end

function Q13022BaodiTalk:PreTriggerIn()
    print("PreTriggerIn")
end

function Q13022BaodiTalk:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q13022BaodiTalk:TriggerOut()
    print("TriggerOut")
end

return Q13022BaodiTalk
