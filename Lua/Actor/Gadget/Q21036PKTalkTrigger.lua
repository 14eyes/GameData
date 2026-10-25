require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q21036PKTalkTrigger = class("Q21036PKTalkTrigger", GadgetActorProxy)
Q21036PKTalkTrigger.defaultAlias = "Q21036PKTalkTrigger"
local Q21036ClientConfig = require("Quest/Client/Q21036ClientConfig")

local this
local subIDs = Q21036ClientConfig.SubIDs
local npcs = Q21036ClientConfig.Npcs
local datas = Q21036ClientConfig.Datas

function Q21036PKTalkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q21036PKTalkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q21036PKTalkTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("21036"):RequestInteraction(npcs.Npc2400Data.alias)
    this:DestroySelf()
end

function Q21036PKTalkTrigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q21036PKTalkTrigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q21036PKTalkTrigger:TriggerOut()
    print("TriggerOut")
end

return Q21036PKTalkTrigger
